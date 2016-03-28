<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1>Gelen Mesajlar</h1>

        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-envelope"></i> İletişim Mesajları</h3>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>Ad Soyad</th>
                            <th>Email</th>
                            <th>Telefon</th>
                            <th>Mesaj</th>
                        </tr>
                        </thead>
                        <tbody>
                        {foreach from=$mesajlar item=i}

                            <tr>
                                <td>{$i.ad_soyad}</td>
                                <td>{$i.email}</td>
                                <td>{$i.phone}</td>
                                <td>{$i.mesaj}</td>
                            </tr>

                        {/foreach}

                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
</div>