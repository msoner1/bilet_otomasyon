{if isset($email)}
    {if $email eq 'ok'}
        <div class="alert alert-success fade in" style="margin-top: 20px">
            <strong>Başarılı!</strong> Email Adresiniz Başarıyla Onaylandı.
        </div>
    {else}
        <div class="alert alert-danger fade in" style="margin-top: 20px">
            <strong>Başarısız!</strong> Email Adresiniz Onaylanamadı.
        </div>
    {/if}
{/if}
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="{$site_adress}content/images/slider1.jpg" class="slider" alt="First slide">
            <div class="slide_text">
                <h1>Eşsiz Noktalara Seyahat Edin.</h1>
            </div>
        </div>
        <div class="item">
            <img src="{$site_adress}content/images/slider2.jpg" class="slider" alt="Second slide">
            <div class="slide_text">
                <h1>Bu Yıl Keşfetmediğiniz Hiçbir Yer Kalmasın</h1>
            </div>
        </div>
        <div class="item">
            <img src="{$site_adress}content/images/slider3.jpg" class="slider" alt="Third slide">
            <div class="slide_text">
                <h1>Muhteşem Bir Tatil Yapmayalı Ne Kadar Oldu?</h1>
            </div>
        </div>
    </div>
</div>
<div class="ticket-search">
    <h3>Bilet Ara</h3>
    <form class="form-horizontal" action="" method="post">
        <div class="row">
            <div class="col-lg-5">
                <input type="text" class="form-control autocomplete" spellcheck="false" onchange="text_changed(1)" autocomplete="off" id="nereden" placeholder="Nereden">
            </div>
            <div class="col-lg-2 text-center">
                <span class="glyphicon glyphicon-sort icon-change" onclick="degistir()"></span>
            </div>
            <div class="col-lg-5">
                <input type="text" class="form-control autocomplete" spellcheck="false" onchange="text_changed(0)" autocomplete="off" id="nereye" placeholder="Nereye">
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5">
                <div class="input-group date" data-provide="datepicker" id="datepicke" >
                    <input type="text" class="form-control" placeholder="Tarih" id="tarih">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-offset-2 col-lg-5">
                <button id="ara" class="btn btn-block btn-info" ><span class="glyphicon glyphicon-search"></span> Otobüs Bileti Ara</button>
            </div>
        </div>
        <div class="row center-block">
            <div class="bottom-bar">

                <ul class="bottom-bar-list">
                    <li><i class="glyphicon glyphicon-comment"></i> SATIŞ SONRASI<br> 7/24 DESTEK</li>
                    <li><i class="glyphicon glyphicon-save"></i> 100% GÜVENLİ<br> ALIŞVERİŞ</li>
                    <li><i class="glyphicon glyphicon-share"></i> ÜCRETSİZ ONLİNE<br> İADE</li>
                    <li><i class="glyphicon glyphicon-thumbs-up"></i> EN UYGUN FİYAT<br> GARANTİSİ</li>
                </ul>

            </div>
        </div>
    </form>
</div>

<div class="logos">
    <div class="text-center">
        <a class="href1" >Metro Turizm</a>
        <a class="href2" >Nilüfer Turizm</a>
        <a class="href3" >Varan</a>
        <a class="href4" >Ulusoy</a>
        <a class="href5" >Seç Turizm</a>
        <a class="href6" >Uludağ</a>
        <a class="href7" >Tüm Firmalar</a>
    </div>
</div>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="boxes">
                    <div class="boxes-header">
                        <h4><span class="glyphicon glyphicon-road"></span>Yaklaşan Seferler</h4>
                    </div>

                    <div class="row seferler">

                        {foreach from=$yaklasan_seferler item=i}
                            <div class="col-md-12 sefer">
                                <a class="list-links" href="{$site_adress}arama?nereden={$i.nereden}&nereye={$i.nereye}&tarih={$i.tarih}">
                                <div class="col-md-9">
                                    <div class="row destinasyon">{ucwords(mb_strtolower($i.nereden))} - {ucwords(mb_strtolower($i.nereye))}</div>
                                    <div class="row date">{$i.tarih} - {$i.saati}</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="fiyat">{$i.fiyat}<span class="tl">TL</span></div>
                                </div>
                                </a>
                            </div>
                        {/foreach}

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="boxes">
                    <div class="boxes-header">
                        <h4><span class="glyphicon glyphicon-gift"></span>Kampanyalar</h4>
                    </div>
                    <div class="row seferler">
                        {foreach from=$kampanyalar item=i}
                            <div class="col-lg-12 ">
                                <a class="list-links" href="{$site_adress}kampanyalar?k={$i.id}">
                                <div class="destinasyon">{$i.kampanya_ad}</div>
                                <div class="date">{$i.kampanya_kisa_aciklama}...</div>
                                </a>
                            </div>
                        {/foreach}

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="boxes">
                    <div class="boxes-header">
                        <h4><span class="glyphicon glyphicon-map-marker"></span>Çok Arananlar</h4>
                    </div>
                    <div class="row seferler">

                        <div class="col-md-12">
                            <a class="list-links" href="{$site_adress}sehir_rehberi?sehir=istanbul">
                            <div class="col-md-3" style="padding: 0">
                                <img class="img-circle" src="content/images/istanbul.jpg" width="55"/>
                            </div>
                            <div class="col-md-9">
                                <div class="row destinasyon">İstanbul</div>
                                <div class="row date">Selamlar lorem ipsu dolar sit amet lorem dolor lokuol aıjı...</div>
                            </div>
                            </a>
                        </div>

                        <div class="col-md-12">
                            <a class="list-links" href="{$site_adress}sehir_rehberi?sehir=ankara">
                            <div class="col-md-3" style="padding: 0">
                                <img class="img-circle" src="{$site_adress}content/images/ankara.jpg" width="55"/>
                            </div>
                            <div class="col-md-9">
                                <div class="row destinasyon">Ankara</div>
                                <div class="row date">Selamlar lorem ipsu dolar sit amet lorem dolor lokuol aıjı...</div>
                            </div>
                            </a>
                        </div>
                        <div class="col-md-12">
                            <a class="list-links" href="{$site_adress}sehir_rehberi?sehir=izmir">
                            <div class="col-md-3" style="padding: 0">
                                <img class="img-circle" src="{$site_adress}content/images/izmir.jpg" width="55"/>
                            </div>
                            <div class="col-md-9">
                                <div class="row destinasyon">İzmir</div>
                                <div class="row date">Selamlar lorem ipsu dolar sit amet lorem dolor lokuol aıjı...</div>
                            </div>
                            </a>
                        </div>
                        <div class="col-md-12">
                            <a class="list-links" href="{$site_adress}sehir_rehberi?sehir=bursa">
                            <div class="col-md-3" style="padding: 0">
                                <img class="img-circle" src="{$site_adress}content/images/bursa.jpg" width="55"/>
                            </div>
                            <div class="col-md-9">
                                <div class="row destinasyon">Bursa</div>
                                <div class="row date">Selamlar lorem ipsu dolar sit amet lorem dolor lokuol aıjı...</div>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="boxes">
                <div class="boxes-header">
                    <h4><span class="glyphicon glyphicon-thumbs-up"></span> Avantajlarımız</h4>
                </div>
                <div class="row text-center" style="padding: 20px">
                    <div class="col-md-2">
                        <span class="glyphicon glyphicon-piggy-bank" style="font-size: 110px"></span><h3>Uygun Fiyatlar</h3>
                        <p>En uygun fiyatlı biletleri sitemizde bulabilirsiniz.</p>
                    </div>
                    <div class="col-md-2">
                        <span class="glyphicon glyphicon-shopping-cart" style="font-size: 110px"></span><h3>Parapuan</h3>
                        <p>Her Alışverişten 20% parapuan kazanın. Puanlarınızı bilet alırken kullanın.</p>
                    </div>
                    <div class="col-md-2">
                        <span class="glyphicon glyphicon-search" style="font-size: 110px"></span><h3>Detaylı Arama</h3>
                        <p>Birden çok arama seçeneği ile daha hızlı karar verebileceksiniz.</p>
                    </div>
                    <div class="col-md-2">
                        <span class="glyphicon glyphicon-lock" style="font-size: 110px"></span><h3>Güvenlik</h3>
                        <p>3D şifreleme ile güvenle alış-veriş yapabilirsiniz.</p>
                    </div>
                    <div class="col-md-2">
                        <span class="glyphicon glyphicon-minus-sign" style="font-size: 110px"></span><h3>Kolay İade</h3>
                        <p>Aldığınız biletleri hiçbir sorun yaşamadan sitemiz üzerinden iptal edebilirsiniz.</p>
                    </div>
                    <div class="col-md-2">
                        <span class="glyphicon glyphicon-earphone" style="font-size: 110px"></span><h3>7/24 Destek</h3>
                        <p>7/24 dilediğiniz yerden bize ulaşabilirsiniz.</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
