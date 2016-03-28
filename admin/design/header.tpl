<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yönetim Paneli</title>

    <link rel="stylesheet" type="text/css" href="{$site_adress}content/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="{$site_adress}content/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="{$site_adress}content/css/local.css" />

    <script type="text/javascript" src="{$site_adress}content/js/jquery.min.js"></script>
    <script type="text/javascript" src="{$site_adress}content/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/dark-bootstrap/all.min.css" />

    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Yönetim Paneli</a>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul id="active" class="nav navbar-nav side-nav">
                <li class="selected"><a href="{$site_adress}admin/"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                <li class="selected"><a href="{$site_adress}admin/otobus_islemleri"><i class="fa fa-bus"></i> Otobus İşlemleri</a></li>
                <li class="selected"><a href="{$site_adress}admin/sefer_islemleri"><i class="fa fa-road"></i> Sefer İşlemler</a></li>
                <li class="selected"><a href="{$site_adress}admin/firma_islemleri"><i class="fa fa-list-ol"></i> Firma İşlemleri</a></li>
                <li class="selected"><a href="{$site_adress}admin/kampanyalar"><i class="fa fa-gift"></i> Kampanyalar</a></li>
                {if $statu eq 1}
                <li class="selected"><a href="{$site_adress}admin/adminler"><i class="fa fa-users"></i> Adminler</a></li>
                {/if}
            </ul>
            <ul class="nav navbar-nav navbar-right navbar-user">
                {if $statu eq 1}
                <li class="dropdown messages-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Mesajlar <span class="badge">{$okunmamis_mesaj_sayisi}</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">{$okunmamis_mesaj_sayisi} Yeni Mesaj</li>
                        <li class="divider"></li>
                        <li><a href="{$site_adress}admin/mesajlar">Mesajlara Git <span class="badge">{$okunmamis_mesaj_sayisi}</span></a></li>
                    </ul>
                </li>
                {/if}
                <li class="dropdown user-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> {$uye_ad}<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="?cikis"><i class="fa fa-power-off"></i> Çıkış</a></li>

                    </ul>
                </li>
                <li class="divider-vertical"></li>
            </ul>
        </div>
    </nav>