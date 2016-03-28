<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="{$site_adress}content/images/favicon.ico">

    <title>Otobus.com</title>

    <link rel="stylesheet" href="{$site_adress}content/css/bootstrap.min.css">
    <link rel="stylesheet" href="{$site_adress}content/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="{$site_adress}content/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="{$site_adress}content/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="{$site_adress}content/css/main.css">

    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
<div id="loading">
    <img id="loading-image" src="{$site_adress}content/images/loading.gif" alt="Loading..." />
</div>
<header>

    <nav class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand logo" href="{$site_adress}"><img src="content/images/logo.png" width="200" alt="logo"></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse menu">

                    <div class="btn-toolbar nav navbar-right">
                        <div class="btn-group">
                            <a href="{$site_adress}yardim"><button type="button" style="border-top-right-radius: 0px;border-bottom-right-radius: 0px" class="btn btn-info" ><span class="icon glyphicon glyphicon-info-sign"></span> Yardım</button></a>
                            <a href="{$site_adress}kampanyalar?k=k"><button type="button" style="border-radius: 0px" class="btn btn-info" ><span class="icon glyphicon glyphicon-gift"></span> Kampanyalar</button></a>
                            <a href="{$site_adress}iletisim"><button type="button" style="border-radius: 0px" class="btn btn-info" ><span class="icon glyphicon glyphicon-comment"></span> İletişim</button></a>
                            {if !isset($uye_ad)}
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#login"><span class="icon glyphicon glyphicon-user"></span> Üyelik İşlemleri</button>
                            {/if}
                        </div>
                    </div>


            </div>
        </div>
    </nav>
    {if isset($uye_ad)}

        <div class="Cas">
            <a href="?cikis"><span class="glyphicon glyphicon-log-out"></span></a>
            <div class="Cas-rgt">
                <img class="img-circle" src="{$site_adress}content/images/{$cins_en}.jpg" alt="">
            </div>
            <div class="Cas-lef">
                <h5>{$uye_ad}</h5>
                <p>Parapuan : {$uye_parapuan}TL</p>
                <a href="{$site_adress}biletlerim" >Biletlerim</a>
            </div>

        </div>


    {/if}
</header>