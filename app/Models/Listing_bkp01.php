<?php

namespace App\Models;

class Listing_bkp01 {
    public static function all() {
        return  [
            [
                'id' => 1,
                'title' => 'Listing One',
                'description' => 'Cillum ex nostrud cupidatat id. Aute occaecat voluptate dolor Lorem dolor duis ullamco excepteur ex excepteur dolore sit sint. Ea dolore aliquip elit anim Lorem et reprehenderit veniam excepteur et laborum voluptate tempor consequat. Sint exercitation magna nulla cupidatat. Qui voluptate tempor id pariatur reprehenderit.'
            ],
            [
                'id' => 2,
                'title' => 'Listing Two',
                'description' => 'Cillum ex nostrud cupidatat id. Aute occaecat voluptate dolor Lorem dolor duis ullamco excepteur ex excepteur dolore sit sint. Ea dolore aliquip elit anim Lorem et reprehenderit veniam excepteur et laborum voluptate tempor consequat. Sint exercitation magna nulla cupidatat. Qui voluptate tempor id pariatur reprehenderit.'
            ]
        ];
    }

    public static function find($id) {
        $listings = self::all();
        foreach($listings as $listing) {
            if($listing['id'] == $id) {
                return $listing;
            }
        }
    }
}