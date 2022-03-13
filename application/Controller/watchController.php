<?php 
    class watchController extends framework
    {
        private $type;
        private $film;
        private $episode;
        private $commnet;
        public function __construct()
        {
            $this->helpers("link");
            $this->loadmodel("typeModel");
            $this->type = new type();
            $this->loadmodel("filmModel");
            $this->film = new film();
            $this->loadmodel("episodeModel");
            $this->episode = new episode();
            $this->loadmodel("commentModel");
            $this->commnet = new comment();
        }
        public function index(){}
        public function film($film_id, $episode_name = 1)
        {
            $type_all = $this->type->getALL_type();
            $film_by_id = $this->film->get_film_by_id($film_id);
            $type_by_id = $this->type->getTypeById($film_by_id['film_type']);
            $comment_film = $this->commnet->comment_by_film_id($film_id);
            $episode_film = $this->episode->getEpisode_by_film_id($film_id,  $episode_name);
            $episode_film_all = $this->episode->getEpisode_by_film_id_all($film_id);
            return $this->loadview("anime_watching", ["type_all" => $type_all, "type_by_id" => $type_by_id,
                                                    "film_by_id" => $film_by_id, "comment_film" => $comment_film,              
                                                    'episode_film' => $episode_film, "episode_film_all" => $episode_film_all
                                                     ]);
        }

    }