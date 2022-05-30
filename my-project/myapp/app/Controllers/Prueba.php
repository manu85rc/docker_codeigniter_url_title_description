<?php

namespace App\Controllers;

use App\Models\PruebaM;

class Prueba extends BaseController
{
    public function index()
    {
        $pruebadb = new PruebaM();
        $data['lista'] = $pruebadb->orderBy('id','ASC')->findAll();
        return view('prueba_v',$data);
    }
    public function guardar()
    {
        //titulo
        function getTitle($url)
        {
        if (!function_exists('curl_init'))
            {
            die('CURL is not installed!');
            }
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $output = curl_exec($ch);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        
        // FAIL
        if ($httpCode == 400) return "NULL";
        
        // SUCCEED!
        if ($httpCode == 200)
            {
            $str = file_get_contents($url);
            if (strlen($str) > 0)
                {
                $str = trim(preg_replace('/\s+/', ' ', $str)); // supports line breaks inside <title>
                preg_match("/\<title\>(.*)\<\/title\>/i", $str, $title); // ignore case
                return $title[1];
                }
            }
        }

        //descripcion
        function getDescription($url) {
            $tags = get_meta_tags($url);
            return @($tags['description'] ? $tags['description'] : "NULL");
        }      

        //POST
        if($this->request->getVar('web')){
          $web = $this->request->getVar('web');
          $web = trim($web); //quito espacios en blancos

          //chequeo si existe web
          function verificar_url($url)
          {
             $id = @fopen($url,"r");
             if ($id) $abierto = true;
             else $abierto = false;
             return $abierto;
             fclose($id);
          }
          $url = $web;
          $abierto = verificar_url($url);
          if (!$abierto) {
              echo "<h1>La URL '".$web."' No existe!</h1>";
              echo '<script>setTimeout(function(){ window.location=""; },5000);</script>';
              die;
          }
          $data['titulo']=getTitle($web);
          if(empty($data['titulo'])){$data['titulo']="NULL";}
          $data['descripcion']=getDescription($web);
          $save = [
            'url'=>$web,
            'titul'=>$data['titulo'],
            'desc'=>$data['descripcion']
          ];
          $pruebadb = new PruebaM();
          $pruebadb->insert($save);

        }
       return redirect()->to('prueba'); 
    }
    public function borrar()
    {
      if($this->request->getVar('borrar')){
        $id = $this->request->getVar('borrar');
        $borrar = new PruebaM();
      //  $delet = $borrar->where('id',$id)->first();
        $borrar->where('id',$id)->delete($id);
      }
      return redirect()->to('prueba'); 
    }

}
