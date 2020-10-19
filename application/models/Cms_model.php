<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Cms_model extends CI_Model {

   public function get_slider() {
        $this->db->order_by("id", "DESC");
        return $this->db->get("home_sliders")->result();
    }
   public function get_our_news_events($id ='',$plink='') {

        if($plink !=''){
            $this->db->where('p_link',$plink);
            return $this->db->get("our_news_events")->row();
        }
        if($id !=''){
            $this->db->where('id',$id);
            return $this->db->get("our_news_events")->row();
        }else{
        $this->db->order_by("id", "DESC");
        return $this->db->get("our_news_events")->result();
    }
    }

    public function get_membership_title() {        
            $this->db->where('id',1);
            return $this->db->get("membership_title")->row();           
    }

    public function get_committee($id ='') { 
           if($id !=''){
            $this->db->where('id',$id);
            return $this->db->get("committee")->row(); 
            }else{
            $this->db->order_by("id", "DESC");
            return $this->db->get("committee")->result(); 
            }          
    }

    public function get_address($id ='') {
        if($id !=''){
            $this->db->where('id',$id);
            return $this->db->get("addresses")->row(); 
            }else{
            $this->db->order_by("id", "DESC");
            return $this->db->get("addresses")->result();
    }
    }

    public function get_vedios($limit='',$start='') { 

        if($limit!=''){   
            
           $this->db->limit($limit, $start);
           }       
        $this->db->order_by("id", "DESC");
    return $this->db->get("videos")->result();
     
         
        
    }

    public function count_video_gallery() {        
        $data = $this->db->get("videos");
        $count = $data->num_rows();
       //echo $this->db->last_query();
        if($count >0){
            return $count;
        }else{
            return 0;
        }
    }

    public function count_media_gallery() {        
        $data = $this->db->get("media");
        $count = $data->num_rows();
        if($count >0){
            return $count;
        }else{
            return 0;
        }
    }

    function get_benefits() {
        $this->db->order_by("id", "DESC");
        return $this->db->get("benefits")->result();
    }

    function get_services() {
        $this->db->order_by("id", "ASC");
        return $this->db->get("services")->result();
    }

    public function get_achievements($id='') {
        if($id !=''){
            $this->db->where('id',$id);
            return $this->db->get("achievements")->row(); 
            }else{
        $this->db->order_by("id", "DESC");
        return $this->db->get("achievements")->result();
    }
    }

    function get_gallery_front($perpage = NULL) {
        if (isset($_GET['page'])) {
            if ($_GET['page'] != '' || $_GET['page'] > 0) {
                $page = $_GET['page'];
            } else {
                $page = 1;
            }
            $this->db->limit($perpage, (($page - 1) * $perpage));
        } else {
            $page = 1;
            $this->db->limit($perpage, (($page - 1) * $perpage));
        }
        $this->db->order_by("id", "ASC");
        return $this->db->get("gallery")->result();
    }

    function get_photos_front($gallery_id, $perpage = NULL) {
        $this->db->order_by("id", "ASC");
        $this->db->where('gallery_id', $gallery_id);
        return $this->db->get("photos")->result();
    }

    function get_videos_front($perpage = NULL) {
        $this->db->order_by("id", "ASC");
        return $this->db->get("videos")->result();
    }

    function get_overview() {
        $this->db->where('id', 1);
        return $this->db->get("overview")->row();
    }

    function get_why_steam_wash() {
        $this->db->where('id', 1);
        return $this->db->get("why_steam_wash")->row();
    }

    public function get_aboutswwecha() {
        $this->db->where('id', 1);
        return $this->db->get("about_us")->row();
    }

    public function get_vision() {
        $this->db->where('id', 2);
        return $this->db->get("about_us")->row();
    }

   public function welcome() {
        $this->db->where('id', 1);
        return $this->db->get("welcome")->row();
    }

    function get_all($table,$id='') {
        if($id !=''){
            $this->db->where('id',$id);
            return $this->db->get($table)->row();
        }else{
        $this->db->order_by('id', 'DESC');
        return $this->db->get($table)->result();
    }
    }
   public function get_media_gallery($limit='',$start=''){
    if($limit !=''){
        $this->db->limit($limit,$start);
    }
    $this->db->order_by('id', 'DESC');
        return $this->db->get('media')->result();    
    }
   public function get_why_we_are() {
        $this->db->order_by('id', 'DESC');
        return $this->db->get('why_we_are')->result();
    }

    public function get_row_by_id($table, $id) {
        $this->db->where('id', $id);
        return $this->db->get($table)->row();
    }

    function get_advertise() {
        return $this->db->get("advertise_cms")->result();
    }   

    function get_our_team() {
        return $this->db->get("our_team")->result();
    }

    function get_photo_albums($id ='',$limit='',$start='') {
        if($id !=''){
            $this->db->where('id',$id);
          return $this->db->get("photo_albums")->row();
        }else{
            if($limit !=''){
            $this->db->limit($limit, $start);
           }
           $this->db->order_by("id", "DESC");
        return $this->db->get("photo_albums")->result();
        }
    }

    public function count_photo_albums(){
        $data = $this->db->get("photo_albums");
        $count =$data->num_rows();
        if($count >0){
            return $count;
        }else{
            return 0;
        }
    }

    public function count_activities(){
        $data = $this->db->get("activities");
        $count =$data->num_rows();
        if($count >0){
            return $count;
        }else{
            return 0;
        }
    }

    public function count_testimonials(){
        $data = $this->db->get("testimonials");
        $count =$data->num_rows();
        if($count >0){
            return $count;
        }else{
            return 0;
        }
    }
    public function get_activities($limit='',$start='',$plink=''){
        if($plink !=''){
            $this->db->where('plink',$plink);
            return $this->db->get("activities")->row();
        }
        if($limit!=''){   
            
           $this->db->limit($limit, $start);
           }
           $this->db->order_by("id", "DESC");
           return $this->db->get("activities")->result();

    }

    public function get_plink_activities($plink=''){
        if($plink !=''){
            $this->db->where('plink',$plink);
            return $this->db->get("activities")->row();
        }
    }

   public function get_photos_album_id($palbum_id) {

        $this->db->where('pf_id', $palbum_id);
        return $this->db->get("photo_gallery")->result();
    }

    public function get_photos_gallery($plink='',$limit='',$start='') {
        if($plink !=''){
        $this->db->where('pf_plink', $plink);
         if($limit !=''){
             $this->db->limit($limit,$start);
         }
    }  
        $this->db->order_by('id','DESC');
        return $this->db->get("photo_gallery")->result();
    }


    public function count_photos_gallery($plink=''){
        $this->db->where('pf_plink', $plink);
        $data = $this->db->get("photo_gallery");
        $count =$data->num_rows();
        if($count >0){
            return $count;
        }else{
            return 0;
        }
    }

    function get_sub_varieties_by_plink($plink) {

        $this->db->where('variety_plink', $plink);
        return $this->db->get("sub_varieties")->result();
    }

    function get_testimonials($limit='',$start='') {

        if($limit !=''){
            $this->db->limit($limit,$start);
        }
        $this->db->order_by('id','DESC');    
        return $this->db->get("testimonials")->result();
    }

    function get_cms_pages() {
        return $this->db->get("cms")->result();
    }

    function get_cms($page) {
        $this->db->where('page', $page);
        return $this->db->get("cms")->row();
    }

    function get_faqs() {
        return $this->db->get("faqs")->result();
    }

    function get_blog_posts($limit = NULL) {
        if ($limit != '') {
            $this->db->limit(10);
        }
        $this->db->order_by("id", "DESC");
        return $this->db->get("blog")->result();
    }

    function get_main_banners() {
        $this->db->order_by("id", "DESC");
        return $this->db->get("main_banners")->result();
    }

    function get_banner_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("home_sliders")->row();
    }

    public function get_vedio_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("videos")->row();
    }

    function get_service_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("services")->row();
    }

    function get_benefit_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("benefits")->row();
    }

    function get_advertise_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("advertise_cms")->row();
    }

    function get_testimonial_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("testimonials")->row();
    }

    function get_cms_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("cms")->row();
    }

    function insert_data($table, $data) {
        return $this->db->insert($table, $data);
    }

    function insert_slider($data) {
        return $this->db->insert('home_sliders', $data);
    }
    public function insert_news_events($data,$id ='') {
        if($id !=''){
         $this->db->where('id',$id);   
        return $this->db->update('our_news_events', $data);
        }else{
        return $this->db->insert('our_news_events', $data);
        }
    }

    public function insert_vedio($data) {
        return $this->db->insert('videos', $data);
    }

    public function insert_committee($data,$id ='') {
        if($id !=''){
         $this->db->where('id',$id);   
        return $this->db->update('committee', $data);
        }else{
        return $this->db->insert('committee', $data);
        }
    }

    public function insert_achievements($data,$id ='') {
        if($id !=''){
         $this->db->where('id',$id);   
        return $this->db->update('achievements', $data);
        }else{
        return $this->db->insert('achievements', $data);
        }
    }

    public function insert_address($data,$id ='') {
        if($id !=''){
         $this->db->where('id',$id);   
        return $this->db->update('addresses', $data);
        }else{
        return $this->db->insert('addresses', $data);
        }
    }

    function insert_benefit($data) {
        return $this->db->insert('benefits', $data);
    }    

    function insert_advertise($data) {
        return $this->db->insert('advertise_cms', $data);
    }

    function insert_testimonial($data) {
        return $this->db->insert('testimonials', $data);
    }

    function insert_our_team($data) {
        return $this->db->insert('our_team', $data);
    }

    function insert_photo_album($data) {
        return $this->db->insert('photo_albums', $data);
    }

    function insert_faq($data) {
        return $this->db->insert('faqs', $data);
    }

    function get_our_team_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("our_team")->row();
    }

    function get_gallery_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("photo_folder")->row();
    }

    function get_faq_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("faqs")->row();
    }

    function get_post_by_plink($plink) {
        $this->db->where("plink", $plink);
        return $this->db->get("blog")->row();
    }

    public function update_data($table, $data, $id) {

        $this->db->where("id", $id);
        return $this->db->update($table, $data);
    }

    public function update_slider($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('home_sliders', $data);
    }

    public function update_vedio($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('videos', $data);
    }

    public function update_our_team($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('our_team', $data);
    }

    public function update_photo_album($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('photo_albums', $data);
    }

    public function update_benefit($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('benefits', $data);
    }

    public function update_service($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('services', $data);
    }

    public function update_overview($data) {
        $this->db->where("id", 1);
        return $this->db->update('overview', $data);
    }

    public function update_steam_wash($data) {
        $this->db->where("id", 1);
        return $this->db->update('why_steam_wash', $data);
    }

    public function update_aboutswwecha($data) {
        $this->db->where("id", 1);
        return $this->db->update('about_us', $data);
    }
    public function update_vision($data) {
        $this->db->where("id", 2);
        return $this->db->update('about_us', $data);
    }
    public function update_welcome($data) {
        $this->db->where("id", 1);
        return $this->db->update('welcome', $data);
    }

    public function update_membership_title($data) {
        $this->db->where("id", 1);
        return $this->db->update('membership_title', $data);
    }

    public function update_advertise($data, $id) {
        $this->db->where("id", $id);
        return $this->db->update('advertise_cms', $data, ['id' => $id]);
    }

    public function update_testimonial($data, $id) {
        $this->db->where("id", $id);
        return $this->db->update('testimonials', $data, ['id' => $id]);
    }

    public function update_status_testimonial($id) {
        $this->db->set('status', "IF(`status`='0','1','0')", FALSE);
        $this->db->where("id", $id);
        return $this->db->update('testimonials_cms');
    }

    public function update_cms_page($data, $id) {
        $this->db->where("id", $id);
        return $this->db->update('cms', $data, ['id' => $id]);
    }

    public function update_main_banners($data, $id) {

        $this->db->where("id", $id);
        return $this->db->update('main_banners', $data);
    }

    public function delete_slider($id) {

        $this->db->where("id", $id);
        return $this->db->delete('home_sliders');
    }    

    public function delete_administrative($id) {

        $this->db->where("id", $id);
        return $this->db->delete('administrative_bodies');
    }

    public function delete_advisory($id) {

        $this->db->where("id", $id);
        return $this->db->delete('advisory_council');
    }

    public function delete_honorable_council($id) {

        $this->db->where("id", $id);
        return $this->db->delete('honorable_council');
    }

    public function delete_news_events($id) {

        $this->db->where("id", $id);
        return $this->db->delete('our_news_events');
    }

    public function delete_vedio($id) {

        $this->db->where("id", $id);
        return $this->db->delete('videos');
    }

    public function delete_committee($id) {

        $this->db->where("id", $id);
        return $this->db->delete('committee');
    }
    
    public function delete_achievement($id) {

        $this->db->where("id", $id);
        return $this->db->delete('achievements');
    }

    public function delete_address($id) {

        $this->db->where("id", $id);
        return $this->db->delete('addresses');
    }

    public function delete_row($table, $id) {

        $this->db->where("id", $id);
        return $this->db->delete($table);
    }

    public function delete_album($id) {

        $this->db->where("id", $id);
        return $this->db->delete('photo_albums');
    }

    public function delete_our_team($id) {

        $this->db->where("id", $id);
        return $this->db->delete('our_team');
    }

    public function delete_advertise($id) {

        $this->db->where("id", $id);
        return $this->db->delete('advertise_cms');
    }

    public function delete_testimonial($id) {

        $this->db->where("id", $id);
        return $this->db->delete('testimonials');
    }

    public function delete_main_banners($id) {

        $this->db->where("id", $id);
        return $this->db->delete('main_banners');
    }

    function get_customer_faqs() {
        $this->db->order_by("display_order", "asc");
        return $this->db->get_where("customer_faqs", ["status" => 1])->result();
    }

    function get_professioanl_faqs() {
        $this->db->order_by("display_order", "asc");
        return $this->db->get_where("faqs", ["status" => 1])->result();
    }

    public function get_countries($id=''){
        if($id != ''){
            $this->db->where('id',$id);
            return $this->db->get('countries')->row();
        }else{
        $this->db->where('status',1);
        $this->db->order_by("name","asc");
       return $this->db->get('countries')->result();
       }
    }

    public function get_state_id($id =''){
        //echo $id;exit;
        $where = array('status' => 1,
                       'id' =>$id
                       );
        $this->db->where($where);
        return $this->db->get('states')->row();
    }

    public function get_states($id =''){
        //echo $id;exit;
        $where = array('status' => 1,
                       'country_id' =>$id
                       );
        $this->db->where($where);
        $this->db->order_by("name","asc");
       return $this->db->get('states')->result();
    }

    public function insert_administrative($data){
       return $this->db->insert('administrative_bodies',$data);
    }

    public function get_administrative_bodies($id=0,$limit=8, $start=''){
        if($id != 0){
            $this->db->where('id',$id);
            return $this->db->get("administrative_bodies")->row();
        }else{
            $this->db->order_by("id", "DESC");
            if($start!=''){
            $this->db->limit($limit, $start);
        }
        $country = ($this->input->post('country')) ? $this->input->post('country') :'' ;       
        $state  = ($this->input->post('state')) ? $this->input->post('state') :'' ;         
        if($country !='' && $state !=''){
        $data_keys = array(
                           'country_id' =>$country,
                           'state_id' =>$state
                           );
            $this->db->where($data_keys);
        }
        
            return $this->db->get("administrative_bodies")->result();
        }              
        
    }

    public function count_administrative_bodies(){ 
            
      $record = $this->db->get("administrative_bodies");
      $count = $record->num_rows();      
      if($count >0){
        return $count;
      }else{
        return 0;
      }
                
        
    }

    public function get_advisory_council($id=0,$limit=8, $start=''){          
        if($id != 0){
            $this->db->where('id',$id);
            return $this->db->get("advisory_council")->row();
        }else{
            $this->db->order_by("id", "DESC");
            if( $start !=''){
            $this->db->limit($limit, $start);
        }
        $country = ($this->input->post('country')) ? $this->input->post('country') :'' ;
        $state  = ($this->input->post('state')) ? $this->input->post('state') :'' ; 
        if($country !='' && $state !=''){
        $data_keys = array(
                           'country_id' =>$country,
                           'state_id' =>$state
                           );
            $this->db->where($data_keys);
        }
        
            return $this->db->get("advisory_council")->result();
        }      
        
    }

    public function count_advisory_council(){         
      $record = $this->db->get("advisory_council");
      $count = $record->num_rows();      
      if($count >0){
        return $count;
      }else{
        return 0;
      }       
        
    }
    

    public function get_honorable_council($id=0,$limit=8, $start=''){          
        if($id != 0){
            $this->db->where('id',$id);
            return $this->db->get("honorable_council")->row();
        }else{
            $this->db->order_by("id", "DESC");
            if( $start !=''){
            $this->db->limit($limit, $start);
        }
        $country = ($this->input->post('country')) ? $this->input->post('country') :'' ;
        $state  = ($this->input->post('state')) ? $this->input->post('state') :'' ; 
        if($country !='' && $state !=''){
        $data_keys = array(
                           'country_id' =>$country,
                           'state_id' =>$state
                           );
            $this->db->where($data_keys);
        }
        
            return $this->db->get("honorable_council")->result();
        }      
        
    }

    public function count_honorable_council(){         
      $record = $this->db->get("honorable_council");
      $count = $record->num_rows();      
      if($count >0){
        return $count;
      }else{
        return 0;
      }       
        
    }
 public function inserts_category($data){
       return $this->db->insert('services_categories',$data);
    }
     public function inserts_services($data){
        // echo  $this->db->last_query();die;
       return $this->db->insert('services',$data);
    }
     public function inserts_servicess($data){
        // echo  $this->db->last_query();die;
       return $this->db->insert('services',$data);
    }
    public function insert_advisory_council($data){
       return $this->db->insert('advisory_council',$data);
    }

    public function insert_honorable_council($data){
       return $this->db->insert('honorable_council',$data);
    }

    public function get_administrative_by_id($id) {
        $this->db->where("id", $id);
        return $this->db->get("administrative_bodies")->row();
    }

    public function update_administrative($data,$id){
        $this->db->where("id", $id);
        $this->db->update('administrative_bodies',$data);
    }

    public function update_advisory_council($data,$id){
        $this->db->where("id", $id);
        $this->db->update('advisory_council',$data);
    }

    public function update_honorable_council($data,$id){
        $this->db->where("id", $id);
        $this->db->update('honorable_council',$data);
    }






    public function  get_category(){
        $this->db->select('*');
        $query = $this->db->get(' services_categories');
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }
    public function get_id_by_p_link($p_link){
        $this->db->where('p_link', $p_link);
        $data = $this->db->get("services_categories");
        $count =$data->row();
        if($count >0){
            return $count;
        }else{
            return 0;
        }
    }
    public function get_services_by_id($id){
        $this->db->select('*');
        $this->db->where('services_categories_id',$id);
        $query = $this->db->get('services');
        if ($query->num_rows()>0) {
            return $query->result();
        } else {
            return false;
        }
    }
    public function  get_categories(){
        $this->db->select('*');
        $query = $this->db->get('services_categories');
        if ($query->num_rows() > 0) {
            return $query->result();
        } else {
            return false;
        }
    }
}
