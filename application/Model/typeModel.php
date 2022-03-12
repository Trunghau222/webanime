<?php
    class type extends database
    {
        const TABLE_NAME = "type";
        public function getALL_type()
        {
            return $this->All(self::TABLE_NAME);
        }
    }