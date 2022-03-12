<?php

use function PHPSTORM_META\type;

    class film extends database
    {
        const TABLE_NAME = "film";
        const TABLE_JON = "type";
        const TOP = 3;
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
    }