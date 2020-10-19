<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Pricing extends CI_Controller {

    private $data;

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
        $this->load->model("pricing_model");
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

    private function upload_file($file_name, $upload_path = NULL) {
        if ($upload_path == '') {
            $upload_path = "assets/images/";
        }

        $config1['upload_path'] = $upload_path;
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

    public function insert_data($table, $data) {

        $post_data = $this->input->post(NULL, TRUE);
        $data = array_merge($post_data, $data);
        return $this->admin_model->insert_by_table($table, $data);
    }

    public function index() {
        $this->data['prices'] = $this->pricing_model->get_pricing();
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->data['locations'] = $this->admin_model->get_locations();
        $this->data['lead_types'] = $this->user_model->get_lead_types();
        $i = 0;
        foreach ($this->data['prices'] as $price) {
            $this->data['prices'][$i]->lead_type = $this->admin_model->get_lead_type_by_id($price->lead_type_id)->type;
            $i++;
        }
        $this->load->view('admin/includes/header');
        $this->load->view('admin/pricing', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function locations() {
        $this->data['locations'] = $this->admin_model->get_locations();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/locations', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_slot_price() {
        $this->data['states'] = $this->admin_model->get_states();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_slot_price', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function insert_category() {


        $data['created_at'] = time();
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'uploads/category_images');
        } else {
            $data['image'] = '';
        }
        $this->insert_data('shipping_categories', $data);
        $this->session->set_flashdata('msg', 'Category Added Successfully');
        redirect('admin/categories');
    }

    public function insert_slot_price() {


        $data['created_at'] = time();
        if ($this->pricing_model->check_listing_exists() == FALSE) {
            $this->session->set_flashdata('err', 'Slot for this Lead Location Has Already been Added!');
            redirect('admin/pricing');
        }
        $data['state_name'] = $this->admin_model->get_state_by_id($this->input->post('state_id'))->name;
        $data['city_name'] = $this->admin_model->get_city_by_id($this->input->post('city_id'))->name;
        if ($this->input->post('location_id') != '') {
            $data['location_name'] = $this->admin_model->get_location_by_id($this->input->post('location_id'))->name;
        }
        $this->insert_data('listing_price', $data);
        $this->session->set_flashdata('msg', 'State Added Successfully');
        redirect('admin/pricing');
    }

    public function insert_city() {
        $data['created_at'] = time();
        $this->insert_data('cities', $data);
        $this->session->set_flashdata('msg', 'Cities Added Successfully');
        redirect('admin/categories/cities');
    }

    public function update_slot_price($id) {

        $data = $this->input->post(NULL, TRUE);
        $data['updated_at'] = time();
        $this->pricing_model->update_slot_price($data, $id);
        $this->session->set_flashdata('msg', 'Listing Price Updated Successfully');
        redirect('admin/pricing');
    }

    public function edit_category($id) {
        $this->data['category'] = $this->admin_model->get_category_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_category', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_slot_price($id) {
        $this->data['slot_price'] = $this->pricing_model->get_slot_price_by_id($id);
        $this->data['states'] = $this->admin_model->get_states();
        $this->data['cities'] = $this->admin_model->get_cities($this->data['slot_price']->state_id);
        $this->data['locations'] = $this->admin_model->get_locations($this->data['slot_price']->city_id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_slot_price', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function delete_slot_price($id) {

        $this->pricing_model->delete_slot_price($id);
        $this->session->set_flashdata('msg', 'Listing Price Deleted Succesfully!');
        redirect('admin/pricing');
    }

}
