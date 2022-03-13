<?php 
 class filmController extends framework
 {
    private $type;
    private $film;
    private $commnet;

      public function __construct()
     {
        $this->helpers("link");
        $this->loadmodel("typeModel");
        $this->type = new type();
        $this->loadmodel("filmModel");
        $this->film = new film();
        $this->loadmodel("commentModel");
        $this->commnet = new comment();
     }
     
     public function categories($type_id,$page = 1)
     {
        if(isset($_GET['page'])) $page = $_GET['page'];
        $type_all = $this->type->getALL_type();
        $type_by_id = $this->type->getTypeById($type_id);            
        $day_view = $this->film->Day_view();
        $week_view = $this->film->Week_view();
        $month_view = $this->film->Month_view();
        $newcomment = $this->film->Newcomment();
        $film_types = $this->film->films_type($type_id, $page);
        $sumTrang_film_type = $this->film->films_type_sumTrang($type_id);
        echo $sumTrang_film_type;
        return $this->loadview("categories", ["type_all" => $type_all, 'film_types' =>$film_types,
                                         "day_view" => $day_view, "week_view" => $week_view,
                                         "month_view" => $month_view, "newcomment" => $newcomment,
                                         "type_by_id" => $type_by_id, "sumTrang_film_type" => $sumTrang_film_type,
                                        "page" => $page
                                         ]);
     }

     public function anime_details($id_film = 1)
     {
        $type_all = $this->type->getALL_type();
        $film_by_id = $this->film->get_film_by_id($id_film);
        $type_by_id = $this->type->getTypeById($film_by_id['film_type']);
        $comment_film = $this->commnet->comment_by_film_id($id_film);
        $film_same_kind = $this->film->same_kind($id_film);
        return $this->loadview("anime_details",  ["type_all" => $type_all, "type_by_id" => $type_by_id,
                                                "film_by_id" => $film_by_id, "comment_film" => $comment_film,
                                                "film_same_kind" => $film_same_kind
                                                ]);
     }
 }