<section>
    {if isset($kampanyalar)}
        {foreach from=$kampanyalar item=i}
            <div class="container uyelik-alani">

                <div class="campaigns">
                    <h2 class="burger-king">Otobus.com - {$i.kampanya_ad}</h2>
                    <div class="row row-oto text-center">
                        <img src="{$site_adress}content/images/kampanya_{$i.id}_banner.jpg" style="max-width: 100%" alt="{$i.kampanya_ad}">
                    </div>
                    {$i.kampanya_aciklama}
                </div>
            </div>
        {/foreach}
    {else}
    <div class="container uyelik-alani">

        <div class="campaigns">
            <h2 class="burger-king">Otobus.com - {$kampanya_adi}</h2>
            <div class="row row-oto text-center">
                <img src="{$site_adress}content/images/kampanya_{$kampanya_id}_banner.jpg" style="max-width: 100%" alt="{$kampanya_adi}">
            </div>
            {$kampanya_aciklama}
        </div>
    </div>
    {/if}

</section>