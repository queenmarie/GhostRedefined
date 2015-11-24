<?php 



/*



Joomla & Wordpress Hunter

(C)oded By Gh0st_3xp10!t



*/



set_time_limit(0);



if (!function_exists ("curl_exec"))

die ("Fatal Error : cURL Extension n'est pas installé...\n");



$options = getopt ("w:j:");



if (isset ($options['w'])){



echo"\n\t\tobtention site Wordpress ...\n\n";



foreach(Bing ("ip:".$options['w']."") as $url){

$header = @get_headers($url."/wp-login.php");

if (preg_match("/200 OK/i", $header[0])){

echo $url."\n";

$save = fopen('wordpress.txt','a+');

fwrite($save,$url."/\r\n");

fclose($save);

}

}

}elseif (isset ($options['j'])){

echo"\n\t\tobtention site Joomla ...\n\n";

foreach(Bing ("ip:".$options['j']."") as $url){

$gt = curlreq($url."/administrator/","Mozilla/5.0 (Windows NT 5.1; rv:18.0) Gecko/20100101 Firefox/18.0");

if(preg_match('/Joomla!/i', $gt)){

echo $url."\n";

$save = fopen('joomla.txt','a+');

fwrite($save,$url."/\r\n");

fclose($save);

}

}

}else{

echo"\n	Utilisation: php ".$_SERVER["PHP_SELF"]." [Option]\n\n"; 

echo"\t[Options]:\n";

echo"\t\t-j Obtenir des sites web Joomla à partir du serveur iP\n",

"\t\t-w Obtenir des sites web Wordpress à partir du serveur iP\n";

}

function Bing ($dork)

{



for($i = 1; $i <= 1000; $i += 10){

$gt = curlreq("http://www.bing.com/search?q=".urlencode($dork)."&first=$i","msnbot/1.0 (+http://search.msn.com/msnbot.htm)");

$searchme = '#<h2><a href="(.*?)"#i';

if (preg_match_all ($searchme, $gt, $matches)){

foreach ($matches[1] as $matches){

$parse = parse_url ($matches);

$urls[] = $parse['scheme']."://".$parse['host'];

}

}

if(!preg_match('#class="sb_pagN"#',$gt)) break;

}

$urls = array_unique ($urls);

sort ($urls);

return $urls;



}



function curlreq($url, $user_agent, $proxy = FALSE, $post = FALSE)

{

$ch = @curl_init($url);

@curl_setopt($ch, CURLOPT_USERAGENT, $user_agent);

@curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, FALSE);

@curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

if ($proxy)

{

@curl_setopt ($ch, CURLOPT_PROXY, $proxy);

}

if ($post)

{

@curl_setopt ($ch, CURLOPT_POST, TRUE);

@curl_setopt ($ch, CURLOPT_POSTFIELDS, $post);

}

@curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);

@curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

$source = @curl_exec($ch);

    @curl_close($ch);

    return $source;

}