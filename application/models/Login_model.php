<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Login_model extends CI_Model {

    function create_login_session($data) {
        $this->session->set_userdata("user_id", $data->id);
        $this->session->set_userdata("role_id", $data->role_id);
        $role_name = $this->roles_model->get_role_name_by_id($data->role_id);
        $this->session->set_userdata("role_name", $role_name);

        try {
            $ip = $_SERVER["REMOTE_ADDR"];
            $ch = curl_init();
            //curl_setopt($ch, CURLOPT_URL, "http://ip-api.com/json/$ip?fields=520191");
            curl_setopt($ch, CURLOPT_URL, "http://freegeoip.net/json/$ip");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            $contents = curl_exec($ch);
            $response = json_decode($contents);
            curl_close($ch);
            if (isset($response->city) && isset($response->region_name) && isset($response->country_name)) {
                $address = "City : <b>$response->city</b> <br/>
                            Region : <b>$response->region_name</b><br/>	
                            Country : <b>$response->country_name</b><br/>	
                                TimeZone : <b>$response->time_zone</b><br/>	
                            ";

                $insert_data = array("address" => $address,
                    "user_id" => $data->id, "created_at" => time());
                $this->db->insert("login_logs", $insert_data);
            }
        } catch (Exception $ex) {
            
        }
        $user_details = $this->user_model->get_user_details($data->id);
        unset($user_details->id);
        return $user_details;
    }

}
