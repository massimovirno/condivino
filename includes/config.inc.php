<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

global $config;

$config['smarty']['template_dir'] =
//'/home/cicerone/public_html/webprog/comi/templates/main/template/';
'/templates/main/template/';
$config['smarty']['compile_dir'] =
'C:/xampp/htdocs/comi/templates/main/templates_c/';
$config['smarty']['config_dir'] =
'/templates/main/configs/';
$config['smarty']['cache_dir'] =
'/templates/main/cache/';

$config['debug']=false;
//$config['debug']=true;

$config['mysql']['user'] = 'root';
$config['mysql']['password'] = '';
$config['mysql']['host'] = 'localhost';
$config['mysql']['database'] = 'comi';

//configurazione server smtp per invio email
$config['smtp']['host'] = 'smtp.cheapnet.it';
$config['smtp']['port'] = '25';
$config['smtp']['smtpauth'] = false;
$config['smtp']['username'] = '';
$config['smtp']['password'] = '';

$config['email_webmaster']='webmaster@comi.it';
//$config['url_bookstore']='http://localhost/bookstore2/';
$config['url_comi']='http://localhost/comi';


function debug($var){
    global $config;
    if ($config['debug']){
        echo '<pre>';
        print_r($var);
        echo '</pre>';
    }
}

?>
