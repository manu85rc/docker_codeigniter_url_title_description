<?php
namespace App\Models;

use CodeIgniter\Model;

class PruebaM extends Model{
    protected $table = 'webs';
    protected $primariKey = 'id';
    protected $allowedFields = ['url','titul','desc'];
}