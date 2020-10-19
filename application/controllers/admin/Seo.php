<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Seo extends CI_Controller {

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
        
    }

    public function locations_seo() {
        $this->data['locations'] = $this->admin_model->get_locations();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/locations_seo', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function cities_seo() {
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/cities_seo', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function listing_page_tabs_locations($location_id) {
        $this->data['listing_page_tabs'] = $this->admin_model->get_listing_tabs_by_location_id($location_id);
        $this->data['location'] = $this->admin_model->get_location_by_id($location_id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/listing_page_tabs_locations', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function listing_page_tabs_cities($city_id) {
        $this->data['listing_page_tabs'] = $this->admin_model->get_listing_tabs_by_city_id($city_id);
        $this->data['city'] = $this->admin_model->get_city_by_id($city_id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/listing_page_tabs_cities', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_state() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_state', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_city() {
        $this->data['states'] = $this->admin_model->get_states();
        $this->data['lead_types'] = $this->admin_model->get_categories();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_city', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_listing_page_tabs_location($location_id) {
        $this->data['lead_types'] = $this->user_model->get_lead_types();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_listing_page_tabs_location', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_listing_page_tabs_city($city_id) {
        $this->data['lead_types'] = $this->user_model->get_lead_types();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_listing_page_tabs_city', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_meta_tags($location_id) {
        $this->data['lead_types'] = $this->admin_model->get_categories();
        $i = 0;
        foreach ($this->data['lead_types'] as $lead_type) {
            $this->data['lead_types'][$i]->meta_tags = $this->admin_model->get_meta_tags_from_listing_price_by_lead_type_id($lead_type->id, $location_id);
            $i++;
        }
        $this->data['location'] = $this->admin_model->get_location_by_id($location_id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/update_meta_tags', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_meta_tags_cities($city_id) {
        $this->data['lead_types'] = $this->admin_model->get_categories();
        $i = 0;
        foreach ($this->data['lead_types'] as $lead_type) {
            $this->data['lead_types'][$i]->meta_tags = $this->admin_model->get_meta_tags_from_listing_price_by_lead_type_id_city($lead_type->id, $city_id);
            $i++;
        }
        $this->data['city'] = $this->admin_model->get_city_by_id($city_id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/update_meta_tags_city', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function update_meta_tags_location($location_id) {
        $lead_type_ids = $this->input->post('lead_type_id', TRUE);
        $mtitle = $this->input->post('mtitle', TRUE);
        $mkeywords = $this->input->post('mkeywords', TRUE);
        $mdescription = $this->input->post('mdescription', TRUE);
        $mtags = $this->input->post('mtags', TRUE);
        foreach ($lead_type_ids as $id) {
            $data['mtitle'] = $mtitle[$id];
            $data['mkeywords'] = $mkeywords[$id];
            $data['mdescription'] = $mdescription[$id];
            $data['mtags'] = $mtags[$id];
            $this->admin_model->update_meta_tags($data, $location_id, $id);
        }
        $this->session->set_flashdata('msg', 'Meta Tags Updated Successfully');
        redirect('admin/seo/locations_seo');
    }

    public function update_meta_tags_city($city_id) {
        $lead_type_ids = $this->input->post('lead_type_id', TRUE);
        $mtitle = $this->input->post('mtitle', TRUE);
        $mkeywords = $this->input->post('mkeywords', TRUE);
        $mdescription = $this->input->post('mdescription', TRUE);
        $mtags = $this->input->post('mtags', TRUE);
        foreach ($lead_type_ids as $id) {
            $data['mtitle'] = $mtitle[$id];
            $data['mkeywords'] = $mkeywords[$id];
            $data['mdescription'] = $mdescription[$id];
            $data['mtags'] = $mtags[$id];
            $this->admin_model->update_meta_tags_city($data, $city_id, $id);
        }
        $this->session->set_flashdata('msg', 'Meta Tags Updated Successfully');
        redirect('admin/seo/cities_seo');
    }

    public function add_package() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_packages', $this->data);
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

    public function insert_state() {


        $data['created_at'] = time();
        $this->insert_data('states', $data);
        $this->session->set_flashdata('msg', 'State Added Successfully');
        redirect('admin/categories/states');
    }

    public function insert_listing_page_tab_location($location_id) {
        $data = $this->input->post(NULL);
        $data['location_id'] = $location_id;
        $data['lead_type'] = $this->user_model->get_lead_type_by_lead_type_id($data['lead_type_id']);
        $data['city_id'] = $this->admin_model->get_location_by_id($location_id)->city_id;
        $this->insert_data('tabs', $data);
        $this->session->set_flashdata('msg', 'Tab Added Added Successfully');
        redirect('admin/seo/listing_page_tabs_locations/' . $location_id);
    }

    public function insert_listing_page_tab_city($city_id) {
        $data = $this->input->post(NULL);
        $data['lead_type'] = $this->user_model->get_lead_type_by_lead_type_id($data['lead_type_id']);
        $data['city_id'] = $city_id;
        $this->insert_data('tabs', $data);
        $this->session->set_flashdata('msg', 'Tab Added Successfully');
        redirect('admin/seo/listing_page_tabs_cities/' . $city_id);
    }

    public function update_listing_page_tab_location($location_id, $id) {

        $data = $this->input->post(NULL);
        $this->admin_model->update_listing_page_tab_location($data, $id);
        $this->session->set_flashdata('msg', 'Tab Updated Successfully');
        redirect('admin/seo/listing_page_tabs_locations/' . $location_id);
    }

    public function update_listing_page_tab_city($city_id, $id) {

        $data = $this->input->post(NULL);
        $this->admin_model->update_listing_page_tab_city($data, $id);
        $this->session->set_flashdata('msg', 'Tab Updated Successfully');
        redirect('admin/seo/listing_page_tabs_cities/' . $city_id);
    }

    public function update_state() {

        $data = $this->input->post(NULL, TRUE);
        $id = $data['id'];
        unset($data['id']);
        $data['updated_at'] = time();
        $this->admin_model->update_state($data, $id);
        $this->session->set_flashdata('msg', 'State Updated Successfully');
        redirect('admin/categories/states');
    }

    public function edit_category($id) {
        $this->data['category'] = $this->admin_model->get_category_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_category', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_state($id) {
        $this->data['state'] = $this->admin_model->get_state_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_state', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_listing_page_tabs_location($location_id, $id) {
        $this->data['lead_types'] = $this->user_model->get_lead_types();
        $this->data['tab'] = $this->admin_model->get_listing_tabs_by_tab_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_listing_page_tabs_location', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_listing_page_tabs_city($city_id, $id) {
        $this->data['lead_types'] = $this->user_model->get_lead_types();
        $this->data['tab'] = $this->admin_model->get_listing_tabs_by_tab_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_listing_page_tabs_city', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function delete_listing_page_tabs_location($id, $location_id) {

        $this->admin_model->delete_listing_page_tabs_location($id, $location_id);
        $this->session->set_flashdata('msg', 'Tab Deleted Succesfully!');
        redirect('admin/seo/listing_page_tabs_locations/' . $location_id);
    }

    public function delete_listing_page_tabs_city($id, $city_id) {

        $this->admin_model->delete_listing_page_tabs_location($id, $city_id);
        $this->session->set_flashdata('msg', 'Tab Deleted Succesfully!');
        redirect('admin/seo/listing_page_tabs_cities/' . $city_id);
    }

    public function delete_location($id) {

        $this->admin_model->delete_location($id);
        $this->session->set_flashdata('msg', 'Location Deleted Succesfully!');
        redirect('admin/categories/locations');
    }

    public function delete_filter_value($id) {

        $this->admin_model->delete_filter_value($id);
        $this->session->set_flashdata('msg', 'Filter Deleted Succesfully!');
        redirect('admin/categories/filter_values');
    }

    public function delete_filter_value_sub_sub_category($id) {

        $this->admin_model->delete_filter_value_sub_sub_category($id);
        $this->session->set_flashdata('msg', 'Filter Deleted Succesfully!');
        redirect('admin/categories/filter_values_sub_sub_category');
    }

    public function delete_coupon($id) {

        $this->admin_model->delete_coupon($id);
        $this->session->set_flashdata('msg', 'Filter Deleted Succesfully!');
        redirect('admin/categories/coupons');
    }

    public function site_settings() {
        $this->data['settings'] = $this->admin_model->get_site_settings();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/profile', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function logs() {
        $this->data['log'] = $this->admin_model->get_admin_logs();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/logs', $this->data);
        $this->load->view('admin/includes/footer');
    }

}
