<?php
 class indexController extends framework
 {
     private $taikhoan;
     private $sanphamModel;

    public function __construct()
    {
      $this->loadmodel("TaikhoanModel");
      $this->taikhoan = new taikhoan();
    }
     public function index()
     {
        $data= $this->taikhoan->get_taikhoan();
        foreach ($data as $key => $value) {
           echo $data[$key]['id'];
        }
        print_r($data);
     }
    
 }
?>