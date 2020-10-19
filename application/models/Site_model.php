<?php

class Site_model extends CI_Model {

    function is_username_exists($username) {
        $data = $this->db->get_where("users", ['username' => $username]);
        if ($data->num_rows() == 0) {
            return false;
        }
        $data = $data->row();
        return $data->id;
    }

    function get_site_properties() {
        return $this->db->get_where("profile", ["id" => 1])->row();
    }

    function get_social_media_links() {
        return $this->db->get_where("social_links")->row();
    }

    function check_user_status($user_id) {
        $data = $this->db->get_where("users", ['id' => $user_id])->row();
        if ($data) {
            if ($data->status == 0) {
                return false;
            } else {
                return true;
            }
        }
        return true;
    }

    function user_profile_update() {
        extract($_POST);
        $user_id = $this->get_logged_user_id();
        $data = array(
            "firstname" => $firstname,
            "lastname" => $lastname,
            "mobile" => $mobile,
            "email" => $email,
            "address" => addslashes($address),
            "updated_at" => time()
        );
        $this->db->set($data);
        $this->db->where("id", $user_id);
        return $this->db->update("users");
    }

    function get_user_role($user_id) {
        return $this->db->get_where("users", ['id' => $user_id])->row()->role_id;
    }

    function get_logged_user_id() {
        return $this->session->userdata("user_id");
    }

    function reset_password($user_id) {
        $password = rand(1, 9) * 11;
        $password .= rand(1, 9) * 11;
        $password .= rand(1, 9) * 11;
        $salt = rand(552555, 258242152);
        $smsPwd = $password;
        $password = md5($password . $salt);
        $this->db->set("password", $password);
        $this->db->set("salt", $salt);
        $this->db->where("id", $user_id);
        if ($this->db->update("users")) {

            $ud = $this->get_user_details($user_id);

            $mobile_number = $ud->mobile;
            $message = "Dear " . $ud->firstname . " " . $ud->lastname . ", Your New Password is - " . $smsPwd . ", Please Don\'t share with anyone";
            send_message($message, $mobile_number);
            return true;
        } else {
            return false;
        }
    }

    function user_profile_password_update($user_id) {
        extract($_POST);
        $salt = rand(552555, 258242152);
        $smsPwd = $password;
        $password = md5($password . $salt);
        $this->db->set("password", $password);
        $this->db->set("salt", $salt);
        $this->db->where("id", $user_id);
        if ($this->db->update("users")) {
            $this->user_model->send_reset_password_sucess_email($user_id);
            return true;
        } else {
            return false;
        }
    }

    function check_for_current_password_ok($user_id) {
        extract($_POST);
        $ud = $this->get_user_details($user_id);
        if ($ud->password == md5($current_password . $ud->salt)) {
            return true;
        } else {
            return false;
        }
    }

    function get_countries() {
        $this->db->select("id, name, phonecode, marked_as_top");
        $this->db->order_by("name", "asc");
        return $this->db->get_where("countries", ["status" => 1])->result();
    }

    function get_states($country_id) {
        $this->db->select("id, name");
        $this->db->order_by("id", "asc");
        $this->db->where("country_id", $country_id);
        return $this->db->get_where("states", ["status" => 1])->result();
    }

    function get_home_category_banners_ads() {
        $this->db->order_by('priority', 'ASC');
        return $this->db->get('home_sliders_ads')->result();
    }

    function get_subcategories_by_cat_id($cid) {
        $this->db->where('cid', $cid);
        $this->db->order_by('priority', 'ASC');
        return $this->db->get('sub_category')->result();
    }

    function get_products_by_cat_id($cid) {
        $this->db->select('pro.*,image.*');
        $this->db->from('products pro');
        $this->db->join('product_images image', 'pro.id = image.productid');
        $this->db->where('pro.cid', $cid);
        $this->db->group_by('pro.id');
        return $this->db->get('products')->result();
    }

    function get_product_rating($productid, $rating = NULL) {
        if ($rating != '') {
            $this->db->where('rating', $rating);
        }
        $this->db->group_by('userid');
        return $this->db->get_where('ratings', ['productid' => $productid])->result();
    }

    function get_cat_plink_by_cat_id($id) {
        return $this->db->get_where('category', ['id' => $id])->row()->plink;
    }

    function check_if_subscriber_exists($email) {
        return $this->db->get_where('subscriptions', ['email' => $email])->num_rows();
    }

    function insert_subscription($data) {
        return $this->db->insert('subscriptions', $data);
    }

}
