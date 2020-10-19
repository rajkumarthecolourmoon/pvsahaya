<?php

class Admin_model extends CI_Model {

    public $table = 'admin';
    public $logs = 'logs';
    public $ip_check = 'ip_check';

    function __construct() {

        //load the parent constructor

        parent::__construct();
    }

    public function insert_by_table($table, $data) {

        return $this->db->insert($table, $data);
    }

    public function ip_checking($ip) {
        $this->db->where('ip', $ip);
        $ipcheck = $this->db->get('ipcheck');
        return $ipcheck->row();
    }

    public function ip_insert($ip, $date) {
        $data['date1'] = date('d-m-Y h:i:s');
        $data['ip'] = $_SERVER['REMOTE_ADDR'];
        $this->db->insert('ipcheck', $data);
        // return $query->row();
    }

    public function admin_login($username, $password) {

        $this->db->where('username', $username);
        $this->db->where('password', $password);

        $query = $this->db->get('admin');
        if ($query->num_rows() == 1) {
            $data['admin'] = 'admin';
            $data['date'] = date('d-m-Y h:i:s');
            $ip = $data['ip'] = $_SERVER['REMOTE_ADDR'];
            $ch = curl_init();
            //curl_setopt($ch, CURLOPT_URL, "http://ip-api.com/json/$ip?fields=520191");
            curl_setopt($ch, CURLOPT_URL, "http://freegeoip.net/json/$ip");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            $contents = curl_exec($ch);
            $response = json_decode($contents);
            curl_close($ch);
            if (isset($response->city) && isset($response->region_name) && isset($response->country_name)) {
                $data['location'] = "City : <b>$response->city</b> <br/>
                Region : <b>$response->region_name</b><br/>	
                Country : <b>$response->country_name</b><br/>	
                TimeZone : <b>$response->time_zone</b><br/>";
            }
            $this->db->insert('logs', $data);
            return $query->row();
        } else {
            return false;
        }
    }

    public function verify_password_by_user_id($id, $password) {

        return $this->db->get_where('admin', ['id' => $id, 'password' => $password])->num_rows();
    }

    public function set_password_by_user_id($id, $new_password) {

        $this->db->set('password', $new_password);
        $this->db->where('id', $id);
        return $this->db->update('admin');
    }

    public function get_site_settings() {
        return $this->db->get('settings')->row();
    }

    public function get_profile_by_id($id) {
        $this->db->where('id', $id);
        return $this->db->get('profile')->row();
    }

    public function update_profile($data) {

        return $this->db->update('profile', $data, "id = 1");
    }

    public function get_admin_logs() {

        $this->db->order_by("id", "desc");
        return $this->db->get('logs')->result();
    }

    public function get_social_media() {

        $this->db->where("id", 1);
        return $this->db->get('social_links')->row();
    }

    public function get_categories($limit = null) {
        if ($limit != '') {
            $this->db->limit($limit);
        }
        $this->db->order_by("id", "DESC");
        return $this->db->get('lead_types')->result();
    }

    public function get_cities($state_id = NULL) {
        if ($state_id != '') {
            $this->db->where('ci.state_id', $state_id);
        }
        $this->db->select('st.name as statename');
        $this->db->select('ci.*');
        $this->db->from('cities ci');
        $this->db->join('states st', 'ci.state_id=st.id');
        $this->db->order_by("id", "ASC");
        return $this->db->get()->result();
    }

    public function get_locations($city_id = NULL) {
        if ($city_id != NULL) {
            $this->db->where('city_id', $city_id);
        }
        $this->db->select('ci.name as cityname');
        $this->db->select('st.name as statename');
        $this->db->select('loc.*');
        $this->db->from('locations loc');
        $this->db->join('states st', 'st.id=loc.state_id');
        $this->db->join('cities ci', 'ci.id=loc.city_id');
        $this->db->order_by("id", "ASC");
        return $this->db->get()->result();
    }

    public function get_filter_groups() {

        $this->db->select('cat.name as catname');
        $this->db->select('sub_cat.name as sub_catname');
        $this->db->select('fil_gr.*');
        $this->db->from('filter_group fil_gr');
        $this->db->join('category cat', 'cat.id=fil_gr.cid', 'LEFT');
        $this->db->join('sub_category sub_cat', 'sub_cat.id=fil_gr.sid', 'LEFT');
        $this->db->order_by("priority", "ASC");
        $this->db->group_by("id");
        return $this->db->get()->result();
    }

    public function get_leads() {
        $this->db->order_by('id', 'DESC');
        return $this->db->get_where('leads')->result();
    }

    public function get_lead_type_by_id($id) {
        $this->db->where('id', $id);
        return $this->db->get('lead_types')->row();
    }

    public function insert_city($data) {
        $this->db->insert('cities', $data);
        return $this->db->insert_id();
    }

    public function insert_location($data) {
        $this->db->insert('locations', $data);
        return $this->db->insert_id();
    }

    public function get_vehicle_types() {

        $this->db->order_by("id", "ASC");
        return $this->db->get('vehicle_types')->result();
    }

    public function get_packages() {

        $this->db->order_by("id", "ASC");
        return $this->db->get('packages')->result();
    }

    public function get_vehicles() {

        $this->db->order_by("id", "ASC");
        return $this->db->get('vehicles')->result();
    }

    public function get_pricing_group_by_vehicle_link() {

        $this->db->group_by('vehicle_link');
        return $this->db->get('package_prices')->result();
    }

    public function get_pricing_by_vehicle_id($vehicle_id) {

        $this->db->where('vehicle_link', $vehicle_id);
        return $this->db->get('package_prices')->result();
    }

    public function get_package_price_by_vehicle_link($id) {

        $this->db->where('vehicle_link', $id);
        $this->db->group_by('package_link');
        return $this->db->get('package_prices')->result();
    }

    public function insert_category($data) {

        $this->db->insert('category', $data);
        return $this->db->last_query();
    }

    public function get_category_by_id($id) {

        $this->db->where("id", $id);
        return $this->db->get('lead_types')->row();
    }

    public function get_vehicle_type_by_id($id) {

        $this->db->where("id", $id);
        return $this->db->get('vehicle_types')->row();
    }

    public function get_vehicle_by_id($id) {

        $this->db->where("id", $id);
        return $this->db->get('vehicles')->row();
    }

    public function get_tag_by_id($id) {

        $this->db->where("id", $id);
        return $this->db->get('tags')->row();
    }

    public function get_city_by_id($id) {

        $this->db->where("id", $id);
        return $this->db->get('cities')->row();
    }

    public function get_package_by_id($id) {

        $this->db->where("id", $id);
        return $this->db->get('packages')->row();
    }

    public function get_location_by_id($id) {

        $this->db->where("id", $id);
        return $this->db->get('locations')->row();
    }

    public function get_pricing_by_location_id($id) {

        $this->db->where("location_id", $id);
        return $this->db->get('listing_price')->result();
    }

    public function get_pricing_by_city_id($id) {

        $this->db->where("city_id", $id);
        $this->db->where("location_id", NULL);
        return $this->db->get('listing_price')->result();
    }

    public function get_pricing_by_lead_type_city($lead_type_id, $id) {
        $this->db->order_by('lead_priority', 'ASC');
        $this->db->where('lead_type_id', $lead_type_id);
        $this->db->where("city_id", $id);
        $this->db->where("location_id", NULL);
        return $this->db->get('listing_price')->result();
    }

    public function get_pricing_by_lead_type_location($lead_type_id, $id) {
        $this->db->order_by('lead_priority', 'ASC');
        $this->db->where('lead_type_id', $lead_type_id);
        $this->db->where("location_id", $id);
        return $this->db->get('listing_price')->result();
    }

    public function get_sub_sub_category_by_subcat_id($sid, $limit = null) {
        if ($limit != '') {
            $this->db->limit($limit);
        }
        $this->db->order_by('priority', 'ASC');
        $this->db->where("sid", $sid);
        return $this->db->get('sub_sub_category')->result();
    }

    public function get_filter_group_by_id($id) {

        $this->db->where("id", $id);
        return $this->db->get('filter_group')->row();
    }

    public function get_meta_tags_from_listing_price_by_lead_type_id($lead_type_id, $location_id) {

        $this->db->where("lead_type_id", $lead_type_id);
        $this->db->where("location_id", $location_id);
        $this->db->group_by("lead_type_id", $lead_type_id);
        return $this->db->get('listing_price')->row();
    }

    public function get_meta_tags_from_listing_price_by_lead_type_id_city($lead_type_id, $city_id) {

        $this->db->where("lead_type_id", $lead_type_id);
        $this->db->where("city_id", $city_id);
        $this->db->where("location_id", NULL);
        $this->db->group_by("lead_type_id", $lead_type_id);
        return $this->db->get('listing_price')->row();
    }

    public function get_listing_tabs_by_location_id($location_id) {
        $this->db->where('location_id', $location_id);
        return $this->db->get('tabs')->result();
    }

    public function get_listing_tabs_by_city_id($city_id) {
        $this->db->where('city_id', $city_id);
        $this->db->where('location_id', NULL);
        return $this->db->get('tabs')->result();
    }

    public function get_listing_tabs_by_tab_id($id) {
        $this->db->where('id', $id);
        return $this->db->get('tabs')->row();
    }

    public function check_if_tab_location_lead_type_combination_exits($location_id, $lead_type_id) {
        $this->db->where('location_id', $location_id);
        $this->db->where('lead_type_id', $lead_type_id);
        return $this->db->get('tabs')->num_rows();
    }

    public function check_if_tab_city_lead_type_combination_exits($city_id, $lead_type_id) {
        $this->db->where('city_id', $city_id);
        $this->db->where('location_id', NULL);
        $this->db->where('lead_type_id', $lead_type_id);
        return $this->db->get('tabs')->num_rows();
    }

    public function update_category($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('lead_types', $data);
    }

    public function update_vehicle_type($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('vehicle_types', $data);
    }

    public function update_package($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('packages', $data);
    }

    public function update_vehicle($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('vehicles', $data);
    }

    public function update_city($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('cities', $data);
    }

    public function update_location($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('locations', $data);
    }

    public function update_filter_group($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('filter_group', $data);
    }

    public function update_listing_page_tab_location($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('tabs', $data);
    }

    public function update_listing_page_tab_city($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('tabs', $data);
    }

    public function update_meta_tags($data, $location_id, $lead_type_id) {

        $this->db->where("lead_type_id", $lead_type_id);
        $this->db->where("location_id", $location_id);
        return $this->db->update('listing_price', $data);
    }

    public function update_meta_tags_city($data, $city_id, $lead_type_id) {

        $this->db->where("lead_type_id", $lead_type_id);
        $this->db->where("city_id", $city_id);
        $this->db->where("location_id", NULL);
        return $this->db->update('listing_price', $data);
    }

    public function delete_vehicle($id) {

        $this->db->where("id", $id);
        return $this->db->delete('vehicles');
    }

    public function delete_vehicle_type($id) {

        $this->db->where("id", $id);
        return $this->db->delete('vehicle_types');
    }

    public function delete_brand($id) {

        $this->db->where("id", $id);
        return $this->db->delete('brands');
    }

    public function delete_tag($id) {

        $this->db->where("id", $id);
        return $this->db->delete('tags');
    }

    public function delete_listing_page_tabs_location($id, $location_id) {

        $this->db->where("id", $id);
        return $this->db->delete('tabs');
    }

    public function delete_pricing_by_vehicle_link($vehicle_link) {

        $this->db->where("vehicle_link", $vehicle_link);
        return $this->db->delete('package_prices');
    }

    public function delete_city($id) {

        $this->db->where("id", $id);
        return $this->db->delete('cities');
    }

    public function delete_location($id) {

        $this->db->where("id", $id);
        return $this->db->delete('locations');
    }

    public function delete_package($id) {

        $this->db->where("id", $id);
        return $this->db->delete('packages');
    }

    public function delete_pricing_by_city_id($id) {

        $this->db->where("city_id", $id);
        $this->db->where("location_id", NULL);
        return $this->db->delete('listing_price');
    }

    public function delete_pricing_by_location_id($id) {

        $this->db->where("location_id", $id);
        return $this->db->delete('listing_price');
    }

    public function delete_filters_group($id) {

        $this->db->where("id", $id);
        return $this->db->delete('filter_group');
    }

    public function delete_filters_group_sub_sub_category($id) {

        $this->db->where("id", $id);
        return $this->db->delete('filter_group_sub_sub_category');
    }

    public function delete_filter_value($id) {

        $this->db->where("id", $id);
        return $this->db->delete('filter_values');
    }

    public function delete_filter_value_sub_sub_category($id) {

        $this->db->where("id", $id);
        return $this->db->delete('filter_values_sub_sub_category');
    }

    public function delete_coupon($id) {

        $this->db->where("id", $id);
        return $this->db->delete('coupons');
    }

    public function insert_pricing($data) {
        return $this->db->insert('package_prices', $data);
    }

    public function toggle_city_display($id) {
        $this->db->set('footer_display', "IF(`footer_display`='yes','no','yes')", FALSE);
        $this->db->where('id', $id);
        $this->db->update('cities');
    }

}
