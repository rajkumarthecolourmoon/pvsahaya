<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Categories extends CI_Controller {

    private $data;

    function __construct() {

        parent::__construct();
        $this->load->model("admin_model");
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

    public function vehicle_types() {
        $this->data['types'] = $this->admin_model->get_vehicle_types();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/vehicle_types', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function packages() {
        $this->data['packages'] = $this->admin_model->get_packages();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/packages', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function vehicles() {
        $this->data['vehicles'] = $this->admin_model->get_vehicles();
        $i = 0;
        foreach ($this->data['vehicles'] as $vehicle) {
            $this->data['vehicles'][$i]->vehicle_type = $this->admin_model->get_vehicle_type_by_id($vehicle->vehicle_type_link)->type;
            $i++;
        }
        $this->load->view('admin/includes/header');
        $this->load->view('admin/vehicles', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function pricing() {
        $this->data['vehicles'] = $this->admin_model->get_pricing_group_by_vehicle_link();
        $i = 0;
        foreach ($this->data['vehicles'] as $vehicle) {
            $this->data['vehicles'][$i]->vehicle_name = $this->admin_model->get_vehicle_by_id($vehicle->vehicle_link)->vehicle_name;
            $i++;
        }
        $this->load->view('admin/includes/header');
        $this->load->view('admin/pricing', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_category() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_category', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_vehicle_type() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_vehicle_type', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_vehicle() {
        $this->data['vehicle_types'] = $this->admin_model->get_vehicle_types();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_vehicle', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_package() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_package', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_tag() {
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_tag', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_pricing() {
        $this->data['vehicle_types'] = $this->admin_model->get_vehicle_types();
        $this->data['packages'] = $this->admin_model->get_packages();
        $this->data['vehicles'] = $this->admin_model->get_vehicles();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_pricing', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_pricing($id) {
        $this->data['pricing'] = $this->admin_model->get_package_price_by_vehicle_link($id);
        $this->data['vehicle_types'] = $this->admin_model->get_vehicle_types();
        $this->data['packages'] = $this->admin_model->get_packages();
        $this->data['vehicles'] = $this->admin_model->get_vehicles();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_pricing', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function add_location() {
        $this->data['states'] = $this->admin_model->get_states();
        $this->data['cities'] = $this->admin_model->get_cities();
        $this->data['lead_types'] = $this->admin_model->get_categories();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/add_locations', $this->data);
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

    public function insert_vehicle_type() {


        $data['created_at'] = time();
        $this->insert_data('vehicle_types', $data);
        $this->session->set_flashdata('msg', 'vehicle Type Added Successfully');
        redirect('admin/categories/vehicle_types');
    }

    public function insert_vehicle() {


        $data['created_at'] = time();
        $this->insert_data('vehicles', $data);
        $this->session->set_flashdata('msg', 'vehicle Added Successfully');
        redirect('admin/categories/vehicles');
    }

    public function insert_city_old() {
        $data['created_at'] = time();
        $this->insert_data('cities', $data);
        $this->session->set_flashdata('msg', 'Cities Added Successfully');
        redirect('admin/categories/cities');
    }

    public function insert_package_price() {
        $data['vehicle_link'] = $this->input->post('vehicle_link');
        $package_link = $this->input->post('package_link');
        $price = $this->input->post('price');
        foreach ($package_link as $pa_link) {
            $data['package_link'] = $pa_link;
            $data['price'] = $price[$pa_link];
            $this->admin_model->insert_pricing($data);
            echo $this->db->last_query();
        }
        $this->session->set_flashdata('msg', 'Price Added Successfully');
        redirect('admin/categories/pricing');
    }

    public function insert_location() {
        $data['state_id'] = $this->input->post('state_id', TRUE);
        $data['city_id'] = $this->input->post('city_id', TRUE);
        $data['name'] = $this->input->post('name', TRUE);
        $city_name = $this->admin_model->get_city_by_id($this->input->post('city_id'))->city_state;
        $data['city_location'] = $data['name'] . ', ' . $city_name;
        $data['created_at'] = time();
        $location_id = $this->admin_model->insert_location($data);
        $data = '';
        $lead_type_id = $this->input->post('lead_type_id', TRUE);
        $prices = $this->input->post('price', TRUE);
        foreach ($lead_type_id as $id) {

            $i = 1;
            foreach ($prices[$id] as $price) {

                $data['lead_type_id'] = $id;
                $data['lead_priority'] = $i;
                $data['state_id'] = $this->input->post('state_id', TRUE);
                $data['city_id'] = $this->input->post('city_id', TRUE);
                $data['location_id'] = $location_id;
                $data['state_name'] = $this->admin_model->get_state_by_id($this->input->post('state_id'))->name;
                $data['city_name'] = $this->admin_model->get_city_by_id($this->input->post('city_id'))->name;
                $city_state = $this->admin_model->get_city_by_id($this->input->post('city_id'))->city_state;
                $data['location_name'] = $this->admin_model->get_location_by_id($location_id)->name;
                $data['city_location'] = $data['location_name'] . ', ' . $city_state;
                $data['price'] = $price;
                if ($data['lead_priority'] == '4') {
                    $data['available_position_count'] = 9;
                } else {
                    $data['available_position_count'] = 1;
                }
                $data['created_at'] = time();
                $this->admin_model->insert_pricing($data);
                $i++;
            }
        }
        $this->session->set_flashdata('msg', 'Location Added Successfully');
        redirect('admin/categories/locations');
    }

    public function insert_package() {
        $data['created_at'] = time();
        $this->insert_data('packages', $data);
        $this->session->set_flashdata('msg', 'Package Added Successfully');
        redirect('admin/categories/packages');
    }

    public function update_category() {

        $data = $this->input->post(NULL, TRUE);
        $id = $data['id'];
        unset($data['id']);
        $data['updated_at'] = time();
        if ($_FILES['image']['name'] != '') {
            $data['image'] = $this->upload_file('image', 'uploads/category_images');
        }
        $this->admin_model->update_category($data, $id);
        $this->session->set_flashdata('msg', 'Category Updated Successfully');
        redirect('admin/categories');
    }

    public function update_vehicle_type($id) {

        $data = $this->input->post(NULL, TRUE);
        $this->admin_model->update_vehicle_type($data, $id);
        $this->session->set_flashdata('msg', 'Vehicle Type Updated Successfully');
        redirect('admin/categories/vehicle_types');
    }

    public function update_vehicle($id) {

        $data = $this->input->post(NULL, TRUE);
        $this->admin_model->update_vehicle($data, $id);
        $this->session->set_flashdata('msg', 'Vehicle Updated Successfully');
        redirect('admin/categories/vehicles');
    }

    public function update_package($id) {
        $data = $this->input->post(NULL, TRUE);
        $this->admin_model->update_package($data, $id);
        $this->session->set_flashdata('msg', 'Package Updated Successfully');
        redirect('admin/categories/packages');
    }

    public function update_package_price() {
        $this->admin_model->delete_pricing_by_vehicle_link($this->input->post('vehicle_link'));
        $data['vehicle_link'] = $this->input->post('vehicle_link');
        $package_link = $this->input->post('package_link');
        $price = $this->input->post('price');
        foreach ($package_link as $pa_link) {
            $data['package_link'] = $pa_link;
            $data['price'] = $price[$pa_link];
            $this->admin_model->insert_pricing($data);
            echo $this->db->last_query();
        }
        $this->session->set_flashdata('msg', 'Price Added Successfully');
        redirect('admin/categories/pricing');
    }

    public function update_city($id) {
        $state_code = $this->admin_model->get_state_by_id($this->input->post('state_id', TRUE))->code;
        $data['state_id'] = $this->input->post('state_id', TRUE);
        $data['name'] = $this->input->post('name', TRUE);
        $data['major_city'] = $this->input->post('major_city', TRUE);
        $data['city_state'] = $data['name'] . ' (' . $state_code . ')';
        $data['updated_at'] = time();
        $this->admin_model->update_city($data, $id);
        $city_id = $id;
        $data = '';
        $get_city_pricing = $this->admin_model->get_pricing_by_city_id($id);
        $this->admin_model->delete_pricing_by_city_id($city_id);
        $lead_type_id = $this->input->post('lead_type_id', TRUE);
        $prices = $this->input->post('price', TRUE);
        $j = 0;
        foreach ($lead_type_id as $id) {

            $i = 1;
            foreach ($prices[$id] as $price) {

                $data['lead_type_id'] = $id;
                $data['lead_priority'] = $i;
                $data['state_id'] = $this->input->post('state_id', TRUE);
                $data['city_id'] = $city_id;
                $data['state_name'] = $this->admin_model->get_state_by_id($this->input->post('state_id'))->name;
                $data['city_name'] = $this->admin_model->get_city_by_id($city_id)->name;
                $data['city_state'] = $this->admin_model->get_city_by_id($city_id)->city_state;
                $data['price'] = $price;
                $data['updated_at'] = time();
                $data['available_position_count'] = $get_city_pricing[$j]->available_position_count;
                $this->admin_model->insert_pricing($data);
                $i++;
                $j++;
            }
        }

        $this->session->set_flashdata('msg', 'City Updated Successfully');
        redirect('admin/categories/cities');
    }

    public function toggle_city_display($id) {
        $this->admin_model->toggle_city_display($id);
        $this->session->set_flashdata('msg', 'Status Update Success!');
        redirect('admin/categories/cities');
    }

    public function update_location($id) {
        $data['state_id'] = $this->input->post('state_id', TRUE);
        $data['city_id'] = $this->input->post('city_id', TRUE);
        $data['name'] = $this->input->post('name', TRUE);
        $city_name = $this->admin_model->get_city_by_id($this->input->post('city_id'))->city_state;
        $data['city_location'] = $data['name'] . ', ' . $city_name;
        $data['updated_at'] = time();
        $get_location_pricing = $this->admin_model->get_pricing_by_location_id($id);
        $this->admin_model->update_location($data, $id);
        $location_id = $id;
        $data = '';
        $this->admin_model->delete_pricing_by_location_id($location_id);
        $lead_type_id = $this->input->post('lead_type_id', TRUE);
        $prices = $this->input->post('price', TRUE);
        $j = 0;
        foreach ($lead_type_id as $id) {
            $i = 1;
            foreach ($prices[$id] as $price) {

                $data['lead_type_id'] = $id;
                $data['lead_priority'] = $i;
                $data['state_id'] = $this->input->post('state_id', TRUE);
                $data['city_id'] = $this->input->post('city_id', TRUE);
                $data['location_id'] = $location_id;
                $data['state_name'] = $this->admin_model->get_state_by_id($this->input->post('state_id'))->name;
                $data['city_name'] = $this->admin_model->get_city_by_id($this->input->post('city_id'))->name;
                $city_state = $this->admin_model->get_city_by_id($this->input->post('city_id'))->city_state;
                $data['location_name'] = $this->admin_model->get_location_by_id($location_id)->name;
                $data['city_location'] = $data['location_name'] . ', ' . $city_state;
                $data['price'] = $price;
                $data['updated_at'] = time();
                $data['available_position_count'] = $get_location_pricing[$j]->available_position_count;
                $this->admin_model->insert_pricing($data);
                $i++;
                $j++;
            }
        }
        $this->session->set_flashdata('msg', 'Location Updated Successfully');
        redirect('admin/categories/locations');
    }

    public function edit_category($id) {
        $this->data['category'] = $this->admin_model->get_category_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_category', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_vehicle_type($id) {
        $this->data['type'] = $this->admin_model->get_vehicle_type_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_vehicle_type', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_vehicle($id) {
        $this->data['vehicle'] = $this->admin_model->get_vehicle_by_id($id);
        $this->data['vehicle_types'] = $this->admin_model->get_vehicle_types();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_vehicle', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_city_old($id) {
        $this->data['states'] = $this->admin_model->get_states();
        $this->data['city'] = $this->admin_model->get_city_by_id($id);
        $this->data['lead_types'] = $this->admin_model->get_categories();
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_city', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_city($id) {
        $this->data['states'] = $this->admin_model->get_states();
        $this->data['city'] = $this->admin_model->get_city_by_id($id);
        $this->data['lead_types'] = $this->admin_model->get_categories();
        $i = 0;
        foreach ($this->data['lead_types'] as $lead_type) {
            $this->data['lead_types'][$i]->prices = $this->admin_model->get_pricing_by_lead_type_city($lead_type->id, $id);
            $i++;
        }
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_city', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_location($id) {
        $this->data['location'] = $this->admin_model->get_location_by_id($id);
        $this->data['states'] = $this->admin_model->get_states();
        $this->data['cities'] = $this->admin_model->get_cities($this->data['location']->state_id);
        $this->data['lead_types'] = $this->admin_model->get_categories();
        $i = 0;
        foreach ($this->data['lead_types'] as $lead_type) {
            $this->data['lead_types'][$i]->prices = $this->admin_model->get_pricing_by_lead_type_location($lead_type->id, $id);
            $i++;
        }
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_locations', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function edit_package($id) {
        $this->data['package'] = $this->admin_model->get_package_by_id($id);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/edit_package', $this->data);
        $this->load->view('admin/includes/footer');
    }

    public function delete_package($id) {

        $this->admin_model->delete_package($id);
        $this->session->set_flashdata('msg', 'Package Deleted Succesfully!');
        redirect('admin/categories/packages');
    }

    public function delete_vehicle($id) {

        $this->admin_model->delete_vehicle($id);
        $this->session->set_flashdata('msg', 'Vehicle Deleted Succesfully!');
        redirect('admin/categories/vehicles');
    }

    public function delete_vehicle_type($id) {

        $this->admin_model->delete_vehicle_type($id);
        $this->session->set_flashdata('msg', 'Vehicle-Type Deleted Succesfully!');
        redirect('admin/categories/vehicle_types');
    }

    public function delete_brand($id) {

        $this->admin_model->delete_brand($id);
        $this->session->set_flashdata('msg', 'Brand Deleted Succesfully!');
        redirect('admin/categories/brands');
    }

    public function delete_state($id) {

        $this->admin_model->delete_state($id);
        $this->session->set_flashdata('msg', 'State Deleted Succesfully!');
        redirect('admin/categories/states');
    }

    public function delete_city($id) {

        $this->admin_model->delete_city($id);
        $this->session->set_flashdata('msg', 'State Deleted Succesfully!');
        redirect('admin/categories/cities');
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

    public function profile() {
        $this->data['profile'] = $this->admin_model->get_profile_by_id(1);
        $this->load->view('admin/includes/header');
        $this->load->view('admin/profile', $this->data);
        $this->load->view('admin/includes/footer');
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
