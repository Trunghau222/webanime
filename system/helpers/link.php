<?php
 function linkCSS($cssPath)
 {
     $url=BASEURL_CSS."/".$cssPath;
     echo "<link rel='stylesheet' href='$url'  type='text/css'>";
 }
 function linkJS($jsPath)
 {
     $url=BASEURL_CSS."/".$jsPath;
     echo   " <script src='$url'></script>";
 }
 function linkImg($ImgPath)
 {
    $url=BASEURL_CSS."/".$ImgPath;
    echo   " <script src='$url'></script>";
 }
 
?>