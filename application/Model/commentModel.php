<?php 
class comment extends database
{
    const TABLE_NAME = "comment";

    public function comment_by_film_id($id_film)
    {
        $sql = "SELECT *  
            FROM comment INNER JOIN users ON users.id= comment.commet_userId 
            WHERE comment.commet_film = $id_film ORDER BY comment.comment_time DESC";
        $comment_film = $this->checkSql($sql);
        return $comment_film;
    }
}