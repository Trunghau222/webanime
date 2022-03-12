<?php
 class indexController extends framework
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
   public function index()
   {
      $type_all = $this->type->getALL_type();
      $film_top = $this->film->getTopflim();
      $trending_now= $this->film->trending_now([0,15]);
      $action = $this->episode->action([0,15]);
      return $this->loadview("index", ["type_all" => $type_all, "film_top" => $film_top, 
                                       "trending_now" => $trending_now, "action" => $action
                                       ]);
   }
    
 }
?>