<?php

require('libs/Smarty.class.php');
$tpl = new Smarty;

$tpl->setTemplateDir("design/");
$tpl->setCompileDir("content/tpl_site_compile");
$tpl->setConfigDir("content/tpl_site_config");
$tpl->setCacheDir("content/tpl_site_cache/");

$tpl->compile_check = true;//TPL_COMPILE_CHECK

require('kernel/kernel.php');

$tpl->display("header.tpl");

if(!isset($_GET['request'])){

    require('pages/index.php');

    $tpl->display("index.tpl");
}

else{

    switch($_GET['request']){

        case 'mail_onay':
            require('pages/mail_auth.php');
            break;
        case 'yeni-uye':

            $tpl->display("new_member.tpl");
            break;
        case 'arama':

            require('pages/search.php');

            $tpl->display("search.tpl");
            break;
        case 'sehir_rehberi':

            require('pages/locations.php');

            $tpl->display("locations.tpl");
            break;
        case 'kampanyalar':

            require('pages/campaigns.php');

            $tpl->display("campaigns.tpl");
            break;
        case 'odeme':

            require('pages/paying.php');

            $tpl->display("paying.tpl");
            break;
        case 'biletlerim':

            require('pages/my_tickets.php');

            $tpl->display("my_tickets.tpl");
            break;
        case 'iletisim':


            $tpl->display("contact.tpl");
            break;
        case 'yardim':

            require('pages/help.php');
            $tpl->display("help.tpl");
            break;
        default:

            $tpl->display("404.tpl");
            break;
    }


}
$tpl->display("footer.tpl");


