<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cities extends CI_Controller {

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
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/cities', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_city() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_city', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function insert_city() {


        $data['created_at'] = time();
        $data['plink'] = $this->clean($this->input->post('name', NULL));
        $this->insert_data('cities', $data);
        $this->session->set_flashdata('msg', 'city Added Successfully');
        redirect('admin/cities');
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

    public function edit_city($id) {
        $this->data['city'] = $this->admin_model->get_city_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_city', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function update_city() {

        $data = $this->input->post(NULL, TRUE);
        $id = $data['id'];
        unset($data['id']);
        $data['updated_at'] = time();
        $data['plink'] = $this->clean($this->input->post('name', NULL));
        $this->admin_model->update_city($data, $id);
        $this->session->set_flashdata('msg', 'City Updated Successfully');
        redirect('admin/cities');
    }

    public function delete_city($id) {

        $this->admin_model->delete_city($id);
        $this->session->set_flashdata('msg', 'City Deleted Succesfully!');
        redirect('admin/cities');
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

}
