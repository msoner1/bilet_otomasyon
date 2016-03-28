<div class="slider">
    <img src="{$site_adress}content/images/{$sehir_k}-sehir.jpg" class="img-responsive" alt="Ankara Resmi">
    <div class="detail-title">
        <div class="container">
            <h1>{$sehir} Rehberi</h1>
        </div>
    </div>
</div>
<section>
    <div class="container">
        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">

            <div class="locations-area">
                <div class="center-block">
                    <div>
                        <p>Taşımacılığın öncü firmalarından otobus.com'un online satış sistemi ile pratik bir şekilde {$sehir} otobüs bileti satın alma işlemini gerçekleştirebilirsiniz. Online bilet satış sistemi ile istediğiniz tarih/saat aralığında ve istediğiniz koltuk seçimini yaparak kredi kartınızla online olarak  {$sehir} otobüs bileti satın alabilirsiniz. İnternete özel indirimle {$sehir} otobüs bileti satın almak bir tık kadar yakınınızda!</p>
                    </div>
                </div>
            </div>

            <div class="locations-area">
                <div class="center-block">
                    <div>
                        <a>
                            <img src="{$site_adress}content/images/{$sehir_k}-k.jpg" class="img-responsive" alt="" height="183" width="750">
                        </a>
                    </div>
                </div>
            </div>
            <br>

            <div class="city-bus-information">
                <div class="city-bus-information-area">
                    <h2 class="city-bus-information-title">{$sehir} Otobüs Bileti İçin En Popüler Rotalar</h2>
                    <div class="city-bus-link-area">
                        <ul class="list-inline">
                            {if $sehir eq 'İstanbul'}
                                <li><a href="{$site_adress}arama?nereden=ANKARA&amp;nereye=İSTANBUL"><img src="{$site_adress}content/images/map-icon.png" /> Ankara {$sehir} Otobüs Bileti</a></li>
                                <li><a href="{$site_adress}arama?nereden=BURSA&amp;nereye=İSTANBUL"><img src="{$site_adress}content/images/map-icon.png" /> Bursa {$sehir} Otobüs Bileti</a></li>
                                <li><a href="{$site_adress}arama?nereden=İZMİR&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> İzmir {$sehir} Otobüs Bileti</a></li>
                            {/if}
                            {if $sehir eq 'Ankara'}
                                <li><a href="{$site_adress}arama?nereden=İSTANBUL&amp;nereye=ANKARA"><img src="{$site_adress}content/images/map-icon.png" /> İstanbul {$sehir} Otobüs Bileti</a></li>
                                <li><a href="{$site_adress}arama?nereden=BURSA&amp;nereye=ANKARA"><img src="{$site_adress}content/images/map-icon.png" /> Bursa {$sehir} Otobüs Bileti</a></li>
                                <li><a href="{$site_adress}arama?nereden=İZMİR&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> İzmir {$sehir} Otobüs Bileti</a></li>
                            {/if}
                            {if $sehir eq 'Bursa'}
                                <li><a href="{$site_adress}arama?nereden=ANKARA&amp;nereye=BURSA"><img src="{$site_adress}content/images/map-icon.png" /> Ankara {$sehir} Otobüs Bileti</a></li>
                                <li><a href="{$site_adress}arama?nereden=İSTANBUL&amp;nereye=BURSA"><img src="{$site_adress}content/images/map-icon.png" /> İstanbul {$sehir} Otobüs Bileti</a></li>
                                <li><a href="{$site_adress}arama?nereden=İZMİR&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> İzmir {$sehir} Otobüs Bileti</a></li>
                            {/if}
                            {if $sehir eq 'İzmir'}
                                <li><a href="{$site_adress}arama?nereden=ANKARA&amp;nereye=İZMİR"><img src="{$site_adress}content/images/map-icon.png" /> Ankara {$sehir} Otobüs Bileti</a></li>
                                <li><a href="{$site_adress}arama?nereden=İSTANBUL&amp;nereye=İZMİR"><img src="{$site_adress}content/images/map-icon.png" /> İstanbul {$sehir} Otobüs Bileti</a></li>
                                <li><a href="{$site_adress}arama?nereden=BURSA&amp;nereye=İZMİR"><img src="{$site_adress}content/images/map-icon.png" /> Bursa {$sehir} Otobüs Bileti</a></li>
                            {/if}

                            <li><a href="{$site_adress}arama?nereden=ANTALYA&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Antalya {$sehir} Otobüs Bileti</a></li>
                            <li><a href="{$site_adress}arama?nereden=ADANA&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Adana {$sehir} Otobüs Bileti</a></li>
                            <li><a href="{$site_adress}arama?nereden=AFYON&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Afyon {$sehir} Otobüs Bileti</a></li>
                            <li><a href="{$site_adress}arama?nereden=MERSİN&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Mersin {$sehir} Otobüs Bileti</a></li>
                            <li><a href="{$site_adress}arama?nereden=Alanya&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Alanya {$sehir} Otobüs Bileti</a></li>
                            <li><a href="{$site_adress}arama?nereden=KONYA&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Konya {$sehir} Otobüs Bileti</a></li>
                            <li><a href="{$site_adress}arama?nereden=BOLU&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Bolu {$sehir} Otobüs Bileti</a></li>
                            <li><a href="{$site_adress}arama?nereden=SAMSUN&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Samsun {$sehir} Otobüs Bileti</a></li>
                            <li><a href="{$site_adress}arama?nereden=BALIKESİR&amp;nereye={$sehir}"><img src="{$site_adress}content/images/map-icon.png" /> Balıkesir {$sehir} Otobüs Bileti</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <br>

            <div class="city-bus-information">
                <div class="city-bus-information-area">
                    <h2 class="city-bus-information-title">{$sehir} Hakkında</h2>
                    <div class="city-bus-link-area center-block">
                        {$sehir_hakkinda}
                    </div>
                </div>
            </div>
            <br>

            <div class="city-bus-information">
                <div class="city-bus-information-area">
                    <h2 class="city-bus-information-title">{$sehir}'da Hava Durumu</h2>
                    <div class="city-bus-link-area clearfix text-center" id="weatherContainer">
                        <a href="http://www.accuweather.com/en/tr/{$sehir_k}/{$location_key}/weather-forecast/{$location_key}" class="aw-widget-legal">
                        </a><div id="awcc1457904833587" class="aw-widget-current"  data-locationkey="{$location_key}" data-unit="c" data-language="en-us" data-useip="false" data-uid="awcc1457904833587"></div><script type="text/javascript" src="http://oap.accuweather.com/launch.js"></script>
                    </div>
                </div>
            </div>
            <br>

            <div class="city-bus-information">
                <div class="city-bus-information-area">
                    <h2 class="city-bus-information-title">{$sehir} Şehir Haritası</h2>
                    <div class="city-bus-link-area center-block">
                        <iframe src="{$g_map}" style="border:0" frameborder="0" height="450" width="100%"></iframe>
                    </div>
                </div>
            </div>
            <br>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">


            <div class="city-bus-information">
                <div class="city-bus-information-area">
                    <h2 class="city-bus-information-title">{$sehir} Ulaşım</h2>
                    <div class="city-bus-link-area center-block">
                        <ul class="transportation">

                            <li>
                                <a href="{$sehir_ulasim}" target="_blank" rel="nofollow">
                                    <img alt="" src="{$site_adress}content/images/otobus.jpg">
                                    <p>ŞEHİR ULAŞIM BİLGİ SİSTEMİ</p>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <br>

            <div class="city-bus-area">
                <h2 class="city-bus-information-title">{$sehir} Gezilecek Yerler</h2>
                <ul class="places-to-go">
                    {$i = 1}
                    {foreach from=$gezilecekler key=k item=v}
                    <li>
                        <a href="{$v}" target="_blank" rel="nofollow">
                            <img src="{$site_adress}content/images/{$sehir_k}_gezi_{$i++}.jpg">
                            <p>{$k}</p>
                        </a>
                    </li>
                    {/foreach}
                    </ul>
            </div>
            <br>
        </div>
    </div>
</section>