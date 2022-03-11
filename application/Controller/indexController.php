<?php
 class indexController extends framework
 {
     private $taikhoan;
     private $sanphamModel;

    public function __construct()
    {
       $this->helpers("link");
      
    }
     public function index()
     {
        return $this->loadview("index");
     }
    
 }
?>