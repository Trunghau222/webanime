<?php 
    class userController extends framework
    {
        private $user;
        private $type;
        public function __construct()
        {
            session_start();
            // middlware user || admin
            if(isset($_SESSION['data_user']))
            {
                $user = $_SESSION['data_user'];
                if($user['quyen'] == Q_USER) return  header('Location: ' . BASEURL . 'index');
                else return  header('Location: ' . BASEURL . 'admin');
            }
            $this->helpers("link");
            $this->loadmodel("userModel");
            $this->user = new user();
            $this->loadmodel("typeModel");
            $this->type = new type();
        }
        public function index()
        {
            $type_all = $this->type->getALL_type();
            return $this->loadview('login');
        }

        public function login()
        {
            $type_all = $this->type->getALL_type();
            return $this->loadview('login', ["type_all" => $type_all]);
        }

        public function xulylogin()
        {
            if(isset($_POST['btn_login']))
            {
                $data_user = [
                                'tentk' => $_POST['tentk'],
                                'matkhau' => $_POST['matkhau'],
                ];
                $data_user = $this->user->checklogin($data_user);
                if(is_array($data_user))
                {
                    
                }   
                else
                {
                    header('Location: ' . BASEURL . 'user');
                }
            }
            else
            {
                header('Location: ' . BASEURL . 'user');
            }

            
        } 

    }