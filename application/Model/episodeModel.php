<?php 
class episode extends database
{
    const TABLE_NAME = "episode";
    const TABLE_JOIN = "film";
    public function action($limit)
    {
        $stringlimit = implode(",", $limit);
        $sql ="SELECT film.* FROM episode INNER JOIN film ON film.film_id = episode.film_id WHERE film.film_type = 1 GROUP BY episode.film_id ORDER BY episode.film_id DESC LIMIT ${stringlimit}";
        return $this->checkSql($sql);       
    }
    
    public function getEpisode_by_film_id($film_id, $episode_name)
    {
        $sql = "SELECT * FROM episode WHERE episode.film_id = $film_id AND episode.episode_name = $episode_name ORDER BY episode.episode_name ASC";
        $Episode_by_film_id = $this->checkSql($sql);
        return $Episode_by_film_id;
    }
    public function getEpisode_by_film_id_all($film_id)
    {
        $sql = "SELECT * FROM episode WHERE episode.film_id = $film_id  ORDER BY episode.episode_name ASC";
        $Episode_by_film_id = $this->checkSql($sql);
        return $Episode_by_film_id;
    }
}