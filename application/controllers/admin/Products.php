<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends CI_Controller {

    private $data;

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
        $this->load->model("vendor_model");
        $this->load->model("product_model");
        if ($this->session->userdata('logged_in') != true) {
            $this->session->set_flashdata('msg', 'Session Timed Out');
            redirect('admin/login');
        } else {
            $this->data['site_details'] = $this->get_site_details();
        }
    }

    private function get_site_details() {

        return $this->admin_model->get_profile_by_id(1);
    }

    private function clean($string) {
        $string = str_replace(" ", "-", $string); // Replaces all spaces with hyphens.
        $string = preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.

        return preg_replace('/-+/', '-', $string); // Replaces multiple hyphens with single one.
    }

    private function upload_file($file_name) {

        $upload_path1 = "assets/images/";
        $config1['upload_path'] = $upload_path1;
        $config1['allowed_types'] = "gif|jpg|png|jpeg";
        $config1['max_size'] = "20480000";
        $img_name1 = strtolower($_FILES[$file_name]['name']);
        $img_name1 = preg_replace('/[^a-zA-Z0-9\.]/', "_", $img_name1);
        $config1['file_name'] = date("YmdHis") . rand(0, 9999999) . "_" . $img_name1;
        $this->load->library('upload', $config1);
        $this->upload->initialize($config1);
        $this->upload->do_upload($file_name);
        $fileDetailArray1 = $this->upload->data();
        return $fileDetailArray1['file_name'];
    }

    private function insert_data($table, $data) {

        $post_data = $this->input->post(NULL, TRUE);
        $data = array_merge($post_data, $data);
        return $this->admin_model->insert_by_table($table, $data);
    }

    public function index() {
        $this->data['products'] = $this->product_model->get_products();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/products', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_product() {
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->data['categories'] = $this->admin_model->get_categories();
        $this->data['vendors'] = $this->vendor_model->get_vendors();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_product', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_image($productid) {
        $this->data['results'] = $this->product_model->get_images_by_product_id($productid);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_image', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function insert_image() {
        $data['productid'] = $this->input->post('productid', TRUE);
        $data['created_at'] = time();
        $array = $_FILES['documents']['name'];
        $count_doc = count($_FILES['documents']['name']);
        for ($i = 0; $i < $count_doc; $i++) {
            if ($_FILES['documents']['name'][$i] != "") {
                $data['image_name'] = $_FILES['document']['name'] = $_FILES['documents']['name'][$i];
                $_FILES['document']['type'] = $_FILES['documents']['type'][$i];
                $_FILES['document']['tmp_name'] = $_FILES['documents']['tmp_name'][$i];
                $_FILES['document']['error'] = $_FILES['documents']['error'][$i];
                $_FILES['document']['size'] = $_FILES['documents']['size'][$i];

                $upload_path = "uploads/product_images/";
                $config['upload_path'] = $upload_path;
                $config['allowed_types'] = "gif|jpg|png|jpeg";
                $config['max_size'] = "20480000";
                $file_name = strtolower($_FILES['document']['name']);
                $file_name = preg_replace('/[^a-zA-Z0-9\.]/', "_", $file_name);
                $config['file_name'] = date("YmdHis") . rand(0, 9999999) . "_" . $file_name;
                $this->load->library('upload', $config);
                $this->upload->initialize($config);
                $this->upload->do_upload('document');
                $fileDetailArray = $this->upload->data();
                $data['image'] = $fileDetailArray['file_name'];
                $this->product_model->insert_by_table('product_images', $data);
            }
        }
        $url = base_url();
        $results = $this->product_model->get_images_by_product_id($data['productid']);
        foreach ($results as $result) {
            echo "<div class='col-md-3'><div class='pic' style='background:url($url/uploads/product_images/$result->image)'><a data-id='$result->id' href='javascript:void(0);' class='delete_icon'>x</a></div></div>";
        }
    }

    public function delete_image() {
        $id = $this->input->get_post('id', TRUE);
        $pid = $this->input->get_post('pid', TRUE);
        $this->product_model->delete_image_by_id($id);
        $url = base_url();
        $results = $this->product_model->get_images_by_product_id($pid);
        foreach ($results as $result) {
            echo "<div class='col-md-3'><div class='pic' style='background:url($url/uploads/product_images/$result->image)'><a data-id='$result->id' href='javascript:void(0);' class='delete_icon'>x</a></div></div>";
        }
    }

    public function add_product_new() {
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->data['categories'] = $this->admin_model->get_categories();
        $this->data['vendors'] = $this->vendor_model->get_vendors();
        $this->data['brands'] = $this->admin_model->get_brands();
        $this->data['tags'] = $this->admin_model->get_tags();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_product_new', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function insert_category_old() {

        $data['name'] = $this->input->post('name', TRUE);
        $data['icon'] = $this->input->post('icon', TRUE);
        $data['priority'] = $this->input->post('priority', TRUE);
        $data['ad_image_link'] = $this->input->post('ad_image_link', TRUE);
        $data['created_at'] = time();
        $data['plink'] = $this->clean($data['name']);
        if ($_FILES['ad_image']['name'] != '') {
            $data['ad_image'] = $this->upload_file('ad_image');
        } else {
            $data['ad_image'] = '';
        }
        $this->admin_model->insert_category($data);
        $this->session->set_flashdata('msg', 'Category Added Successfully');
        redirect('admin/categories');
    }

    public function insert_product() {

        $data = $this->input->post(NULL, TRUE);
        $data['category'] = $this->product_model->get_category_by_id($this->input->post('cid', TRUE))->name;
        $data['sub_category'] = $this->product_model->get_sub_category_by_id($this->input->post('sid', TRUE))->name;
        $data['sub_sub_category'] = $this->product_model->get_sub_sub_category_by_id($this->input->post('ssid', TRUE))->name;
        $data['created_at'] = time();
        $data['plink'] = $this->clean($this->input->post('name', NULL));
        $filter_group_id = $data['filter_group_id'];
        $filter_value_id = $data['filter_value_id'];
        $data['tag_id'] = $this->input->post('tag_id', TRUE);
        if ($data['tag_id'] != '') {
            $data['tag_name'] = $this->db->get_where('tags', ['id' => $data['tag_id']])->row()->name;
        }
        unset($data['filter_group_id']);
        unset($data['filter_value_id']);
        $productid = $this->product_model->insert_by_table('products', $data);
        if ($productid != '') {
            for ($i = 0; $i < count($filter_group_id); $i++) {
                $data_fil['productid'] = $productid;
                $data_fil['filter_group_id'] = $filter_group_id[$i];
                $data_fil['filter_group_name'] = $this->product_model->get_filter_group_name_by_filter_id($filter_group_id[$i])->name;
                $data_fil['filter_value_id'] = $filter_value_id[$i];
                $data_fil['filter_value_name'] = $this->product_model->get_filter_value_name_by_filter_id($filter_value_id[$i])->name;
                $data_fil['created_at'] = time();
                $this->product_model->insert_by_table('product_filter', $data_fil);
            }
        }
        $this->session->set_flashdata('msg', 'Product Added Successfully');
        redirect('admin/products');
    }

    public function edit_product($id) {
        $this->data['products'] = $this->product_model->get_product_by_id($id);
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->data['categories'] = $this->admin_model->get_categories();
        $this->data['sub_category'] = $this->admin_model->get_sub_categories();
        $this->data['sub_sub_categories'] = $this->admin_model->get_sub_sub_categories();
        $this->data['vendors'] = $this->vendor_model->get_vendors();
        $this->data['brands'] = $this->admin_model->get_brands();
        $this->data['tags'] = $this->admin_model->get_tags();
        $productid = $this->data['products']->id;
        $this->data['product_filters'] = $this->product_model->get_product_filters_by_product_id($productid);
        $i = 0;
        foreach ($this->data['product_filters'] as $product_filter) {
            $this->data['product_filters'][$i]->filter_values = $this->product_model->get_filter_values_by_filter_group($product_filter->filter_group_id);
            $i++;
        }
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_product', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function update_product($productid) {
        $data = $this->input->post(NULL, TRUE);
        $data['category'] = $this->product_model->get_category_by_id($this->input->post('cid', TRUE))->name;
        $data['sub_category'] = $this->product_model->get_sub_category_by_id($this->input->post('sid', TRUE))->name;
        $data['sub_sub_category'] = $this->product_model->get_sub_sub_category_by_id($this->input->post('ssid', TRUE))->name;
        $data['created_at'] = time();
        $data['plink'] = $this->clean($this->input->post('name', NULL));
        $filter_group_id = $data['filter_group_id'];
        $filter_value_id = $data['filter_value_id'];
        $data['tag_id'] = $this->input->post('tag_id', TRUE);
        if ($data['tag_id'] != '') {
            $data['tag_name'] = $this->db->get_where('tags', ['id' => $data['tag_id']])->row()->name;
        }
        if (!isset($_POST['tags'])) {
            $data['tags'] = NULL;
        }
        unset($data['filter_group_id']);
        unset($data['filter_value_id']);
        $product_id = $this->product_model->update_product_by_product_id($data, $productid);
        if ($productid != '') {
            $this->db->delete('product_filter', ['productid' => $productid]);
            for ($i = 0; $i < count($filter_group_id); $i++) {
                $data_fil['productid'] = $productid;
                $data_fil['filter_group_id'] = $filter_group_id[$i];
                $data_fil['filter_group_name'] = $this->product_model->get_filter_group_name_by_filter_id($filter_group_id[$i])->name;
                $data_fil['filter_value_id'] = $filter_value_id[$i];
                $data_fil['filter_value_name'] = $this->product_model->get_filter_value_name_by_filter_id($filter_value_id[$i])->name;
                $data_fil['updated_at'] = time();
                $this->product_model->insert_by_table('product_filter', $data_fil);
            }
        }
        $this->session->set_flashdata('msg', 'Product Updated Successfully');
        redirect('admin/products');
    }

    public function insert_brand() {


        $data['created_at'] = time();
        $data['plink'] = $this->clean($this->input->post('name', NULL));
        $this->insert_data('brands', $data);
        $this->session->set_flashdata('msg', 'Brand Added Successfully');
        redirect('admin/categories/brands');
    }

    public function update_category() {

        $data = $this->input->post(NULL, TRUE);
        $id = $data['id'];
        unset($data['id']);
        $data['updated_at'] = time();
        $data['plink'] = $this->clean($this->input->post('name', NULL));
        if ($_FILES['ad_image']['name'] != '') {
            $data['ad_image'] = $this->upload_file('ad_image');
        }
        $this->admin_model->update_category($data, $id);
        $this->session->set_flashdata('msg', 'Category Updated Successfully');
        redirect('admin/categories');
    }

    public function edit_filter_value_sub_sub_category($id) {
        $this->data['categories'] = $this->admin_model->get_categories();
        $this->data['sub_sub_categories'] = $this->admin_model->get_sub_sub_categories();
        $this->data['filter_groups'] = $this->admin_model->get_filter_groups_sub_sub_category();
        $this->data['filter_value'] = $this->admin_model->get_filter_value_sub_sub_category_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_filter_value_sub_sub_category', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function delete_product($id) {

        $this->product_model->delete_product_by_id($id);
        $this->session->set_flashdata('msg', 'Product Deleted Succesfully!');
        redirect('admin/products');
    }

}
