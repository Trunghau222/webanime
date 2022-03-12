<?php 
 class filmController extends framework
 {
    private $type;
    private $film;
    private $episode;
     public function __construct()
     {
        $this->helpers("link");
        $this->loadmodel("typeModel");
        $this->type = new type();
        $this->loadmodel("filmModel");
        $this->film = new film();
        $this->loadmodel("episodeModel");
        $this->episode = new episode();
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
 }