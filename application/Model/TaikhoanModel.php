<?php
 class taikhoan extends database
 {
     const TABLE_NAME = "taikhoan";
     public function get_taikhoan()
    {
        return $this->All(self::TABLE_NAME);
    }
 }