<?php 
    class user extends database
    {
        const TABLE_NAME = 'users';

        public function checklogin($data_user)
        {
            // ma hoa makhau = md5
            $mk_md5 = md5($data_user['matkhau']);
            $data_user['matkhau'] = $mk_md5;
            $data_user = $this->check(self::TABLE_NAME, $data_user);
            return $data_user;
        }
    }