<?php

use function PHPSTORM_META\type;

    class film extends database
    {
        const TABLE_NAME = "film";
        const TABLE_JON = "type";
        const TOP = 3;
        const DAY = 5;
        const WEEK = 5;
        const MONTH = 5;
        const PHANTRANG = 15;
        public function getTopflim()
        {
            $toptrend = $this->All(self::TABLE_NAME, ['*'], ['film_views','DESC'], [0,self::TOP]);
            foreach ($toptrend as $key => $value) {
                $tpye = $this->check(self::TABLE_JON,['type_id' => $value['film_type']]);
                $toptrend[$key]['type_name'] = $tpye['type_name'];
            }
            return $toptrend;

        }
        public function trending_now($limit)
        {
            return $this->All(self::TABLE_NAME, ['*'], ['film_views','DESC'],$limit);
        }
        public function Day_view()
        {
            $day_view = $this->All(self::TABLE_NAME, ['*'], ['day_view','DESC'], [0,self::DAY]);
            return $day_view;
        }
        public function Week_view()
        {
            $week_view = $this->All(self::TABLE_NAME, ['*'], ['day_view','DESC'], [0,self::WEEK]);
            return $week_view;
        }public function Month_view()
        {
            $month_view = $this->All(self::TABLE_NAME, ['*'], ['day_view','DESC'], [0,self::MONTH]);
            return $month_view;
        }
        public function Newcomment()
        {
            $sql = "SELECT film.* FROM comment INNER JOIN film ON film.film_id = comment.commet_film  GROUP BY comment.commet_film  ORDER BY comment.comment_id DESC LIMIT 0,5";
            $newComment = $this->checkSql($sql);
            return $newComment;
        }
        public function films_type($type_id, $page = 1)
        {
            $start = ($page - 1) * self::PHANTRANG;
            $end =$start + self::PHANTRANG;
            // $sql = "SELECT film.* FROM episode INNER JOIN film ON film.film_id = episode.film_id   WHERE film.film_type = $type_id GROUP BY episode.film_id  ORDER BY episode.episode_id DESC LIMIT $start,$end";
            // $film_type = $this->checkSql($sql);
            // die($sql);
            $film_type = $this->check_ALl(self::TABLE_NAME, ['film_type' => $type_id], [$start,$end]);  
            return $film_type;
        }
        public function films_type_sumTrang($type_id)
        {
            $film_type = $this->check_ALl(self::TABLE_NAME, ['film_type' => $type_id]);
            $sum = count($film_type) % self::PHANTRANG;
            if($sum == 0) $sum = count($film_type) % self::PHANTRANG;
            else $sum =  floor(count($film_type) % self::PHANTRANG)+1;
            return $sum;
        }
        public function get_film_by_id($id_film)
        {          
            $film_by_id = $this->check(self::TABLE_NAME, ['film_id' => $id_film]);
            return $film_by_id;
        }
        public function same_kind($id_film)
        {
            $film = $this->check(self::TABLE_NAME, ['film_id']);
            $film_type = $film['film_type'];
            $sql  = "SELECT * FROM `film` WHERE film_type = $film_type AND  NOT film_id = $id_film LIMIT 0,3";
            $film_same_kind = $this->checkSql($sql);
            return $film_same_kind;
        }
    }