<?php

require('../libs/Smarty.class.php');
$tpl = new Smarty;

$tpl->setTemplateDir("design/");
$tpl->setCompileDir("../content/tpl_site_compile");
$tpl->setConfigDir("../content/tpl_site_config");
$tpl->setCacheDir("../content/tpl_site_cache/");

$tpl->compile_check = true;//TPL_COMPILE_CHECK

require('kernel/kernel.php');

$tpl->display("header.tpl");

if(!isset($_GET['request'])){$_GET['request'] = 'default';}

    switch($_GET['request']){

        case 'otobus_islemleri':

            require('pages/bus.php');
            $tpl->display("bus.tpl");
            break;
        case 'sefer_islemleri':

            require('pages/sefer.php');
            $tpl->display("sefer.tpl");
            break;
        case 'firma_islemleri':

            require('pages/firma.php');
            $tpl->display("firma.tpl");
            break;
        case 'kampanyalar':

            require('pages/kampanya.php');
            $tpl->display("kampanya.tpl");
            break;
        case 'adminler':

            require('pages/admins.php');
            $tpl->display("admins.tpl");
            break;
        case 'mesajlar':

            require('pages/messages.php');
            $tpl->display("messages.tpl");
            break;

        default:

            require('pages/index.php');

            $tpl->display("index.tpl");
            break;

    }



