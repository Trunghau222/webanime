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
    }