<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    private $data;

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
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

    public function index() {
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/home', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function tables() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/tables');
    }

    /*public function add() {
        $this->load->view('admin/includes/header', $this->data);
        $this->load->view('admin/add');
    }*/

    public function profile() {
        $this->data['profile'] = $this->admin_model->get_profile_by_id(1);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/profile', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function update_profile() {
        $profile = $this->admin_model->get_profile_by_id(1);
        $data = $this->input->post(NULL, TRUE);
        if ($_FILES['file']['name'] != '') {
            $upload_path1 = "assets/images/";
            $config1['upload_path'] = $upload_path1;
            $config1['allowed_types'] = "gif|jpg|png|jpeg";
            $config1['max_size'] = "20480000";
            $img_name1 = strtolower($_FILES['file']['name']);
            $img_name1 = preg_replace('/[^a-zA-Z0-9\.]/', "_", $img_name1);
            $config1['file_name'] = date("YmdHis") . rand(0, 9999999) . "_" . $img_name1;
            $this->load->library('upload', $config1);
            $this->upload->initialize($config1);
            $this->upload->do_upload('file');
            $fileDetailArray1 = $this->upload->data();
            $data['logo'] = $fileDetailArray1['file_name'];
        } else {
            $data['logo'] = $profile->logo;
        }
        if ($_FILES['file2']['name'] != '') {
            $upload_path1 = "assets/images/";
            $config2['upload_path'] = $upload_path1;
            $config2['allowed_types'] = "gif|jpg|png|jpeg";
            $config2['max_size'] = "20480000";
            $file2 = strtolower($_FILES['file2']['name']);
            $file2 = preg_replace('/[^a-zA-Z0-9\.]/', "_", $file2);
            $config2['file_name'] = date("YmdHis") . rand(0, 9999999) . "_" . $file2;
            $test = $this->load->library('upload', $config2);
            $this->upload->initialize($config2);
            $this->upload->do_upload('file2');
            $fileDetailArray2 = $this->upload->data();
            $data['fav'] = $fileDetailArray2['file_name'];
        } else {
            $data['fav'] = $profile->fav;
        }

        $this->admin_model->update_profile($data);
        $this->session->set_flashdata('msg', 'Updated site details');
        redirect('admin/dashboard/profile');
    }

    public function social_media() {
        $this->data['link'] = $this->admin_model->get_social_media();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/social_media', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function site_settings() {
        $this->data['settings'] = $this->admin_model->get_site_settings();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/profile', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function change_password() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/change_password', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function update_social_media() {
        $data = $this->input->post(null, true);
        $this->db->update('social_links', $data, ['id' => 1]);
        $this->session->set_flashdata('msg', 'Updated Successfully');
        redirect('admin/dashboard/social_media');
    }

    public function update_password() {

        if ($this->input->post('password') == '') {
            echo "Password Is empty,Error!";
            die;
        }
        if ($this->input->post('new_password') == '') {
            echo "new_password Is empty,Error!";
            die;
        }
        $id = $this->session->userdata('id');
        $password = md5($this->input->post('password'));
        $new_password = md5($this->input->post('new_password'));
        $num_rows = $this->admin_model->verify_password_by_user_id($id, $password);
        if ($num_rows > 0) {

            $this->admin_model->set_password_by_user_id($id, $new_password);
            $this->session->set_flashdata('msg', 'Password Changed Successfully!');
            redirect('admin/dashboard/change_password');
        } else {
            $this->session->set_flashdata('msg', 'Old Password Entered Is Wrong');
            redirect('admin/dashboard/change_password');
        }
    }

    public function test_tables() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/tables');
        $this->load->view('admin/includes/footer');
    }

    public function data_table() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/data-table');
        $this->load->view('admin/includes/footer');
    }

    public function logs() {
        $this->data['log'] = $this->admin_model->get_admin_logs();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/logs', $this->data);
        $this->load->view('admin/includes/footer');
    }

}
