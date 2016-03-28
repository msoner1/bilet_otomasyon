

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1>Dashboard <small>İstatistikler</small></h1>
            <div class="alert alert-dismissable alert-warning">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Yönetici Paneline Hoşgeldiniz!
                <br />
                Tüm yönetimsel araçlara bu panel üzerinden ulaşabilirsiniz.
            </div>
        </div>
    </div>
    <div class="row">
        {if $statu eq 1}
        <div class="col-md-8">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Haftalık Satış Raporları</h3>
                </div>
                <div class="panel-body">
                    <div id="shieldui-chart1"></div>
                </div>
            </div>
        </div>
        {/if}
        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Firma Satışları</h3>
                </div>
                <div class="panel-body">
                    <div id="shieldui-chart2"></div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
<!-- /#wrapper -->

<script type="text/javascript">
    jQuery(function ($) {

        {if $statu eq 1}

        var gunluk_satislar =
            [
                {foreach from=$haftalik_satis item=i name="foo"}
                {$i.sayi}{if not $smarty.foreach.foo.last} , {/if}
                {/foreach}
            ];


        $("#shieldui-chart1").shieldChart({
            theme: "dark",

            primaryHeader: {
                text: "Günlük Satışlar"
            },
            axisX: {
                categoricalValues: [
                    {foreach from=$haftalik_satis item=i name="foo"}
                    "{$i.gun}"{if not $smarty.foreach.foo.last} , {/if}
                    {/foreach}
                ]
            },
            exportOptions: {
                image: false,
                print: false
            },
            tooltipSettings: {
                chartBound: true,
                axisMarkers: {
                    enabled: true,
                    mode: 'xy'
                }
            },
            dataSeries: [{
                seriesType: "line",
                collectionAlias: "Satış",
                data: gunluk_satislar
            }]
        });

        {/if}


        var firma_satislari = [
            {foreach from=$firma_satislari item=i name="foo"}
            ["{$i.firma_ad}" , {$i.sayi}]{if not $smarty.foreach.foo.last} , {/if}
        {/foreach}];

        $("#shieldui-chart2").shieldChart({
            theme: "dark",
            primaryHeader: {
                text: "Firma Satış Oranı"
            },
            exportOptions: {
                image: false,
                print: false
            },
            dataSeries: [{
                seriesType: "pie",
                collectionAlias: "Satış Oranı",
                data: firma_satislari
            }]
        });

    });
</script>
</body>
</html>
