<?php 
class episode extends database
{
    const TABLE_NAME = "episode";
    const TABLE_JOIN = "film";
    public function action($limit)
    {
        $stringlimit = implode(",", $limit);
        $sql ="SELECT film.* FROM episode INNER JOIN film ON film.film_id = episode.film_id WHERE film.film_type = 1 GROUP BY episode.film_id ORDER BY episode.episode_start_day DESC LIMIT ${stringlimit} ";
        return $this->checkSql($sql);
    }
}