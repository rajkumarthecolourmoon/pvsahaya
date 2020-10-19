<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

    private $data;

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
        $this->load->model("vendor_model");
        $this->load->model("user_model");
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
        $this->data['users'] = $this->user_model->get_users();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/users', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_vendor() {
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_vendor', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_vendor($id) {
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->data['vendor'] = $this->vendor_model->get_vendor_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_vendor', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function delete_vendor($id) {

        $this->vendor_model->delete_vendor($id);
        $this->session->set_flashdata('msg', 'Vendor Deleted Succesfully!');
        redirect('admin/vendors');
    }

    public function subscribers() {
        $this->data['subscribers'] = $this->admin_model->get_subscribers();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/subscribers', $this->data);
        $this->load->view('admin/includes/footer');
    }

}
