<section class="container">

    <div class="row" style="margin-top:100px;margin-bottom: 20px">
        <form id="live-search" action="">
            <h4 style="text-align:center">Hangi konuda yardıma ihtiyacınız var?</h4>

            <input class="form-control col-lg-9 col-md-9 col-sm-9 col-xs-9" id="filter" placeholder="Arama yapmak için bir kelime yazın (bilet, rezervasyon, otobüs vb.)" value="" style="width: 75%;" type="text">
            <button id="search-button-faq" class="btn btn-danger col-lg-3 col-md-3 col-sm-3 col-xs-3" style="width:22%; float:right;"><i class="fa fa-check"></i><span class="button-icon">Ara</span></button>

            <div class="clear"></div>
            <div class="row">
                <span id="filter-count" class="col-lg-12"></span>
            </div>
        </form>
    </div>

    <div class="row">
        <div class="col-md-12 otobus-box col-no-left-padding col-no-right-padding">

            <div class="panel" id="faq-question-type">

                <ul>
                    <li><a><span class="glyphicon glyphicon-question-sign" style="margin: 2px"></span>Genel</a></li>
                    <li><a><span class="glyphicon glyphicon-road" style="margin: 2px"></span>Firmalar ve Seferler</a></li>
                    <li><a><span class="glyphicon glyphicon-credit-card" style="margin: 2px"></span>Ödeme İşlemleri</a></li>
                    <li><a><span class="glyphicon glyphicon-globe" style="margin: 2px"></span>Biletiniz Hakkında</a></li>
                    <li><a><span class="glyphicon glyphicon-arrow-up" style="margin: 2px"></span>İptal ve İade</a></li>

                </ul>
                <div class="clearfix"></div>
            </div>

            <div class="otobus-box-content" id="question-box">

                <div class="panel-group" id="faq-content">
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c1">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>otobus.com ücretli midir, herhangi bir komisyon ücreti var mıdır?
                                </h4>
                            </div>
                        </a>
                        <div id="c1" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com ücretsizdir! Herhangi bir komisyon ücreti yoktur.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c2">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>otobus.com ne kadar güvenli?
                                </h4>
                            </div>
                        </a>
                        <div id="c2" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com sitesi ve uygulaması hazırlanırken son teknoloji yazılımlar kullanılmıştır. Ziyaretçilerin alışverişlerini %100 güvenle gerçekleştirmesi için gereken SSL ve her türlü güvenlik sistemi otobus.com’te kuruludur. Kredi kartı bilgileriniz hiçbir şekilde tutulmamaktadır. Satın alma işleminizi gerçekleştirirken şifreleme teknolojileri kullanılarak yalnızca otobüs firması ve banka ile iletişim kurularak işlemler gerçekleştirilmektedir.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c3">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Bilet fiyatlarını siz mi belirliyorsunuz ?

                                </h4>
                            </div>
                        </a>
                        <div id="c3" class="panel-collapse collapse">
                            <div class="panel-body">
                                Hayır. Bilet fiyatları, tamamen otobüs firmaları tarafından belirlenmektedir.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c4">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Rezervasyon yapabilir miyim?

                                </h4>
                            </div>
                        </a>
                        <div id="c4" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com üzerinden alınan biletlerde, seferin gerçekleşmesine 24 saat kalana kadar biletinizi anında iptal edebilir, bilet ücretinizi hiçbir kesinti olmadan kartınıza iade alabilirsiniz. Bu sebep ile rezervasyon yapmak yerine, sistemimiz üzerinden banka kartı veya kredi kartı ile biletinizi en uygun fiyata satın almanızı tavsiye ederiz.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c5">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Dolu seferler neden gözüküyor?

                                </h4>
                            </div>
                        </a>
                        <div id="c5" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com'te, dolu seferler için "Boş Koltuk Alarmı" kurma imkanı bulunmaktadır, bu sebeple dolu seferler de gözükmektedir. Dolu bir sefer seçtiğinizde, "Boş Koltuk Alarmı" kurarak, bir rezervasyon iptali veya koltuk iptali olduğu durumda, size girmiş olduğunuz iletişim bilgisi kullanılarak bilgi verilmektedir.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c6">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>En fazla kaç bilet alabilirim?

                                </h4>
                            </div>
                        </a>
                        <div id="c6" class="panel-collapse collapse">
                            <div class="panel-body">
                                Tek bir işlemde en fazla 4 adet bilet alabilirsiniz. Dilerseniz, ayrı işlemler ile istediğiniz kadar bilet satın alabilirsiniz.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c7">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Seyahat etmek istediğim güzergahtaki seferleri nasıl öğrenebilirim?

                                </h4>
                            </div>
                        </a>
                        <div id="c7" class="panel-collapse collapse">
                            <div class="panel-body">
                                Anasayfa'dan; nereden, nereye ve hangi tarihte seyahat etmek istediğinizi girip butona bastığınızda, bu güzergahtaki tüm otobüs seferleri listelenmektedir.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c8">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Seyahat etmek istediğim seferi nasıl seçebilirim?

                                </h4>
                            </div>
                        </a>
                        <div id="c8" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seyahat etmek istediğiniz güzergahta, listelenen seferlerden istediğiniz seferin üzerine basarak otobüsünüzün koltuk şeklini görüntüleyebilirsiniz.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c9">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Nasıl koltuk seçerim?

                                </h4>
                            </div>
                        </a>
                        <div id="c9" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seferinizi seçtiğinizde açılan otobüs şeklinde, seçebileceğiniz boş koltukların üzerinde koltuk numaraları yazmaktadır. Bay/bayan figürü bulunan koltuklar ise doludur. Dilerseniz, konuyla ilgili websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümünden de yardım alabilirsiniz.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c10">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Nasıl ödeme yapabilirim, hangi kartlar geçerli?

                                </h4>
                            </div>
                        </a>
                        <div id="c10" class="panel-collapse collapse">
                            <div class="panel-body">
                                Ödeme sayfasında, yolcu bilgilerinizi ve kartı bilgilerinizi girdikten sonra 'güvenli ödeme yap' butonuna basarak biletinizi güvenli bir şekilde alabilirsiniz. Visa, MasterCard ve American Express logolu kredi kartları ya da bankamatik kartları (maaş-debit kart) ile işlem yapabilirsiniz.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c11">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Bankamatik kartı(maaş kartı-debit kart) veya Sanal kart kullanabilir miyim?

                                </h4>
                            </div>
                        </a>
                        <div id="c11" class="panel-collapse collapse">
                            <div class="panel-body">
                                Evet, kullanabilirsiniz. Birçok otobüs firması, bu kartları da kabul etmektedir.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c12">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Seyahat etmek istediğim noktayı bulamıyorum, ne yapabilirim?

                                </h4>
                            </div>
                        </a>
                        <div id="c12" class="panel-collapse collapse">
                            <div class="panel-body">
                                Konuyla ilgili, websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümüne yazabilirsiniz. Müşteri temsilcisi arkadaşlarımız, size hemen yardımcı olacaktır.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c13">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Aldığım koltuk değişmiş, nasıl mümkün olabilir?

                                </h4>
                            </div>
                        </a>
                        <div id="c13" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com olarak bizim, satın alınmış biletler üzerinde değişiklik yapma yetkimiz bulunmamaktadır. Dolayısı ile satın almış olduğunuz koltuk yalnızca taşıyıcı otobüs firması tarafından, nadir olarak operasyonel sebepler ile değiştirilebilmektedir.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c14">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Yan yana bir bay, bir bayan yolcu seçemiyorum. Ne yapmalıyım ?

                                </h4>
                            </div>
                        </a>
                        <div id="c14" class="panel-collapse collapse">
                            <div class="panel-body">
                                Otobüs firmalarının kuralları gereği yan yana oturacak yolcular için aynı cinsiyet seçimi yapılmalıdır. Bu sebeple yan yana oturacak yolcular için aynı cinsiyeti seçebilirsiniz.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c15">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>E-mail adresim olmadan bilet alabilir miyim?

                                </h4>
                            </div>
                        </a>
                        <div id="c15" class="panel-collapse collapse">
                            <div class="panel-body">
                                Alabilirsiniz. Eğer e-mail adresiniz yok ise, ödeme sayfasındaki e-mail bölümüne destek@otobus.com.com yazarak biletinizi alabilirsiniz.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c16">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Çocuklara bilet almamız gerekiyor mu?

                                </h4>
                            </div>
                        </a>
                        <div id="c16" class="panel-collapse collapse">
                            <div class="panel-body">
                                Başka bir koltukta oturacak herkesin biletli yolcu olması zorunludur.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c17">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Kalkış yeri, sefer süresi gibi detayları nereden öğrenebilirim?

                                </h4>
                            </div>
                        </a>
                        <div id="c17" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seferlerin listelendiği sayfada, seyahat etmek istediğiniz seferin üzerine bastığınızda, ekranda "Detaylı Bilgi" butonu çıkmaktadır. Bu butona basarak, sefere dair tüm detayları öğrenebilirsiniz.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-general active">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c18">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Öğrenci veya Engelli indirimi var mı?

                                </h4>
                            </div>
                        </a>
                        <div id="c18" class="panel-collapse collapse">
                            <div class="panel-body">
                                Kara ulaştırma yönetmeliğine göre kara ulaşım firmalarının çocuk ve engelli indirimi yapmaları gerekmektedir. Ancak bu indirimlerin yapılması sırasında yolcunun bir takım belgeleri ibraz etmesi gerekmektedir. İnternet üzerinden yapılan bilet alımlarında bu mümkün olmamaktadır.
                                <br>

                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c45">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>otobus.com'te hangi otobüs firmaları var?</h4>
                            </div>
                        </a>
                        <div id="c45" class="panel-collapse collapse">
                            <div class="panel-body">
                                Pamukkale, Metro, İstanbul Seyahat, Efe Tur, Anadolu, Özkaymak, Nilüfer, Balıkesir Uludağ, Ali Osman Ulusoy gibi firmalar başta olmak üzere, 130'dan fazla otobüs firmasının yetkili satış acentesiyiz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c46">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Biletini almak istediğim otobüs firması eksik, neden yok?</h4>
                            </div>
                        </a>
                        <div id="c46" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com'te yer alacak otobüs firmalarını, kullanıcılarımızdan gelen talebe göre belirliyoruz. Mevcut durumda, 130'dan fazla otobüs firmasının yetkili satış acentesiyiz. Eğer tercih ettiğiniz otobüs firması, otobus.com'te yoksa bize iletin, en kısa zamanda sistemimize eklemek için çalışmaya başlayalım.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c47">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Hangi otobüs firması daha iyidir?</h4>
                            </div>
                        </a>
                        <div id="c47" class="panel-collapse collapse">
                            <div class="panel-body">
                                Otobüs firmalarını otobus.com'e eklerken birtakım hizmet kalitesi kriterlerimiz bulunuyor, bu kriterlere uygun otobüs firmalarını otobus.com'e ekliyoruz. Seyahatinizin ardından size bir değerlendirme anketi gönderiyor, bu değerlendirmeler sonucunda firmaları sistemimizde bulundurmayı değerlendiriyoruz. Dolayısıyla hangi firmanın daha iyi olduğuna ve otobus.com'te bulunup bulunmamasına kullanıcılarımız karar veriyor.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c48">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Seferden dolayı memnuniyetsizliğimi kime iletebilirim?</h4>
                            </div>
                        </a>
                        <div id="c48" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seyahatinizin ardından size bir değerlendirme anketi gönderiyoruz, bu değerlendirmede memnuniyetsizliğinizi belirterek, firma ve sefer hakkında görüşlerinizi iletebilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c49">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Seferin kalkış yerini nereden öğrenebilirim?</h4>
                            </div>
                        </a>
                        <div id="c49" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seferin otogar dışında ve birden fazla kalkış yeri olması durumunda bu bilgi, size gönderilen bilet bilgilerinizi içeren e-mail'de yer almaktadır. Ayrıca, dilerseniz seferiniz ile ilgili websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümünden de yardım alabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c50">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Seferin süresini nereden öğrenebilirim?</h4>
                            </div>
                        </a>
                        <div id="c50" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seferlerin listelendiği sayfada, kalkış saati bilgisinin hemen altında, otobüs firmalarının bizzat kendilerinin tanımlamış olduğu sefer süreleri yazmaktadır. Bu süreler, doğrudan otobüs firmaları tarafından belirlenmekte olup, otobus.com'in herhangi bir sorumluluğu bulunmamaktadır.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c51">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Seferimi seçtim ama koltuk seçemiyorum, nasıl yapabilirim?</h4>
                            </div>
                        </a>
                        <div id="c51" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seferinizi seçtiğinizde açılan otobüs şeklinde, seçebileceğiniz boş koltukların üzerinde koltuk numaraları yazmaktadır. Bay/bayan figürü bulunan koltuklar ise doludur. Dilerseniz, konuyla ilgili websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümünden de yardım alabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c52">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Bilet aldığım sefer iptal olursa ne olacak?</h4>
                            </div>
                        </a>
                        <div id="c52" class="panel-collapse collapse">
                            <div class="panel-body">
                                Otobüs firmaları, seferlerini gerçekleştirebilmek için azami gayret göstermektedir. Sefer iptali, hava koşullarına ve firmaların operasyonel sebeplerine bağlı olarak çok nadir olabilmektedir. Seferinizin iptali durumunda, tarafınıza firmadan önceden bilgilendirme yapılacak ve bilet ücretiniz hiçbir kesinti olmadan kartınıza iade edilecektir.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c53">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Dolu seferler neden gözüküyor?</h4>
                            </div>
                        </a>
                        <div id="c53" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com'te, dolu seferler için "Boş Koltuk Alarmı" kurma imkanı bulunmaktadır, bu sebeple dolu seferler de gözükmektedir. Dolu bir sefer seçtiğinizde, "Boş Koltuk Alarmı" kurarak, bir rezervasyon iptali veya koltuk iptali olduğu durumda, size girmiş olduğunuz iletişim bilgisi kullanılarak bilgi verilmektedir.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c54">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Seyahat etmek istediğim güzergahtaki seferleri nasıl öğrenebilirim?</h4>
                            </div>
                        </a>
                        <div id="c54" class="panel-collapse collapse">
                            <div class="panel-body">
                                Anasayfa'dan; nereden, nereye ve hangi tarihte seyahat etmek istediğinizi girip butona bastığınızda, bu güzergahtaki tüm otobüs seferleri listelenmektedir.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c55">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Seyahat etmek istediğim seferi nasıl seçebilirim?</h4>
                            </div>
                        </a>
                        <div id="c55" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seyahat etmek istediğiniz güzergahta, listelenen seferlerden istediğinizin üzerine basarak otobüsünüzün koltuk şeklini görüntüleyebilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c56">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Yan yana bir bay, bir bayan yolcu seçemiyorum. Ne yapmalıyım ?</h4>
                            </div>
                        </a>
                        <div id="c56" class="panel-collapse collapse">
                            <div class="panel-body">
                                Otobüs firmalarının kuralları gereği yan yana oturacak yolcular için aynı cinsiyet seçimi yapılmalıdır. Bu sebeple yan yana oturacak yolcular için aynı cinsiyeti seçebilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c19">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Evcil hayvan taşıyabilir miyim?</h4>
                            </div>
                        </a>
                        <div id="c19" class="panel-collapse collapse">
                            <div class="panel-body">
                                Evcil hayvan taşınımı, firmadan firmaya değişkenlik göstermektedir. Dilerseniz, konuyla ilgili websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümünden yardım alabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c20">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-caret-right"></i>Şehiriçi servis var mı?</h4>
                            </div>
                        </a>
                        <div id="c20" class="panel-collapse collapse">
                            <div class="panel-body">
                                Şehiriçi servisleri, firmadan firmaya ve ilden ile değişkenlik göstermektedir. Dilerseniz, konuyla ilgili websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümünden yardım alabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c21">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Ara duraktan otobüse binebilir miyim, araç benim olduğum yerden geçiyor mu?
                                </h4>
                            </div>
                        </a>
                        <div id="c21" class="panel-collapse collapse">
                            <div class="panel-body">
                                Konuyla ilgili, websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümüne yazabilirsiniz. Müşteri temsilcisi arkadaşlarımız, size hemen yardımcı olacaktır.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c22">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Kalkış yeri, sefer süresi gibi detayları nereden öğrenebilirim?
                                </h4>
                            </div>
                        </a>
                        <div id="c22" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seferlerin listelendiği sayfada, seyahat etmek istediğiniz seferin üzerine bastığınızda, ekranda "Detaylı Bilgi" butonu çıkmaktadır. Bu butona basarak, sefere dair tüm detayları öğrenebilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-firms">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c23">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Kaç kg bagaj hakkım var?
                                </h4>
                            </div>
                        </a>
                        <div id="c23" class="panel-collapse collapse">
                            <div class="panel-body">
                                Yasa gereği, her yolcunun 30 kg bagaj hakkı bulunmaktadır; fakat otobüs firmaları bu konuda yolculara yardımcı olmakta çoğunlukla ekstra bagaj için ek bir ücret talep etmemektedir.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c25">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>otobus.com ne kadar güvenli?
                                </h4>
                            </div>
                        </a>
                        <div id="c25" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com sitesi ve uygulaması hazırlanırken son teknoloji yazılımlar kullanılmıştır. Ziyaretçilerin alışverişlerini %100 güvenle gerçekleştirmesi için gereken SSL ve her türlü güvenlik sistemi otobus.com’te kuruludur. Kart bilgileriniz hiçbir şekilde tutulmamaktadır. Satın alma işleminizi gerçekleştirirken şifreleme teknolojileri kullanılarak yalnızca otobüs firması ve banka ile iletişim kurularak işlemler gerçekleştirilmektedir.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c26">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Nasıl ödeme yapabilirim, hangi kartlar geçerli?
                                </h4>
                            </div>
                        </a>
                        <div id="c26" class="panel-collapse collapse">
                            <div class="panel-body">
                                Ödeme sayfasında, yolcu bilgilerinizi ve kartı bilgilerinizi girdikten sonra 'güvenli ödeme yap' butonuna basarak biletinizi güvenli bir şekilde alabilirsiniz. Visa, MasterCard ve American Express logolu kredi kartları veya bankamatik kartları (maaş kartları, debit kart) ile işlem yapabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c27">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Bankamatik kartı(maaş kartı-debit kart) veya Sanal kart kullanabilir miyim?
                                </h4>
                            </div>
                        </a>
                        <div id="c27" class="panel-collapse collapse">
                            <div class="panel-body">
                                Evet, kullanabilirsiniz. Birçok otobüs firması, bu kartları da kabul etmektedir.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c28">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi satın almak için ödeme yaparken sorun yaşıyorum, ne yapabilirim?
                                </h4>
                            </div>
                        </a>
                        <div id="c28" class="panel-collapse collapse">
                            <div class="panel-body">
                                Konuyla ilgili, websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümüne yazabilirsiniz. Müşteri temsilcisi arkadaşlarımız, size hemen yardımcı olacaktır.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c29">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Kredi kartından yapılan çekim ile ilgili bir sorun olduğunu düşünüyorum, ne yapmalıyım?
                                </h4>
                            </div>
                        </a>
                        <div id="c29" class="panel-collapse collapse">
                            <div class="panel-body">
                                Konuyla ilgili, websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümüne yazabilirsiniz. Müşteri temsilcisi arkadaşlarımız, size hemen yardımcı olacaktır.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c30">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi alıp alamadığımdan emin değilim, nasıl teyid edebilirim?
                                </h4>
                            </div>
                        </a>
                        <div id="c30" class="panel-collapse collapse">
                            <div class="panel-body">
                                Biletinizi aldığınız zaman, belirtmiş olduğunuz e-mail adresinize bilet bilgileri mailiniz ve telefonunuza sms otomatik olarak gönderiliyor. Ayrıca, dilerseniz websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümüne yazabilirsiniz. Müşteri temsilcisi arkadaşlarımız, size hemen yardımcı olacaktır.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c31">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Kart numarası, son kullanma tarihi ve cvc nedir?
                                </h4>
                            </div>
                        </a>
                        <div id="c31" class="panel-collapse collapse">
                            <div class="panel-body">
                                Bu bilgiler, kredi kartınız veya bankamatik(maaş-debit kart) kartınızın üzerindeki bilgilerdir. Kartınızın önyüzünde uzun bir şekilde yazan numaralar, kart numarasıdır. Son kullanma tarihi ise, yine kartın önyüzünde bulunan ay/yıl şeklinde bulunan bilgidir. Cvc ise, kartınızın arka yüzündeki son 3 haneli numaradır.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c32">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Kart sahibi ile yolcu sahibi aynı kişi mi olmalı?
                                </h4>
                            </div>
                        </a>
                        <div id="c32" class="panel-collapse collapse">
                            <div class="panel-body">
                                Hayır. Biletinizi alırken herhangi bir kredi kartı veya bankamatik(maaş kartı-debit kart) kullanabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-payment">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c33">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Kredi kartım veya bankamatik kartım yok, bilet alabilir miyim?
                                </h4>
                            </div>
                        </a>
                        <div id="c33" class="panel-collapse collapse">
                            <div class="panel-body">
                                Maalesef şu an için sistemimiz üzerinden yalnızca kredi kartı veya bankamatik(maaş kartı-debit kart) kabul edilmektedir.
                            </div>
                        </div>
                    </div>

                    <div class="panel faq faq-ticket">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c34">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi satın alabildiğimden emin değilim, nasıl teyid edebilirim?
                                </h4>
                            </div>
                        </a>
                        <div id="c34" class="panel-collapse collapse">
                            <div class="panel-body">
                                Biletinizi aldığınız zaman, belirtmiş olduğunuz e-mail adresinize bilet bilgileri mailiniz ve telefonunuza sms otomatik olarak gönderiliyor. Ayrıca, dilerseniz websitemizdeki ve mobil uygulamalarımızdaki Canlı Destek bölümüne yazabilirsiniz. Müşteri temsilcisi arkadaşlarımız, size hemen yardımcı olacaktır.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-ticket">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c35">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi bastırmak zorunda mıyım?
                                </h4>
                            </div>
                        </a>
                        <div id="c35" class="panel-collapse collapse">
                            <div class="panel-body">
                                Değilsiniz. Yalnızca kimliğinizi göstererek otobüsünüze binebilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-ticket">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c36">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi nereden bastırabilirim, nasıl teslim alabilirim?
                                </h4>
                            </div>
                        </a>
                        <div id="c36" class="panel-collapse collapse">
                            <div class="panel-body">
                                Biletinizi bastırmak zorunda değilsiniz. Yalnızca kimliğinizi göstererek otobüsünüze binebilirsiniz; fakat yine de biletinizi bastırmak isterseniz, seferinizin gerçekleşeceği gün otobüs firmasının gişesinden biletinizi bastırabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-ticket">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c37">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimin faturasını nereden alabilirim?
                                </h4>
                            </div>
                        </a>
                        <div id="c37" class="panel-collapse collapse">
                            <div class="panel-body">
                                Otobüs biletinin kendisi, Maliye Bakanlığı'ndan onaylı fatura niteliğindedir. Biletinizi bastırmak isterseniz, seferinizin gerçekleşeceği gün otobüs firmasının gişesinden biletinizi bastırabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-ticket">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c38">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi aldım. Koltuk numaramı nasıl teyid edebilirim?
                                </h4>
                            </div>
                        </a>
                        <div id="c38" class="panel-collapse collapse">
                            <div class="panel-body">
                                E-posta adresinize ve cep telefonunuza bilet detay bilgileriniz gönderilmiştir, koltuk bilgilerinizi de oradan kontrol edebilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-ticket">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c39">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi aldıktan sonra ne yapmam gerek?
                                </h4>
                            </div>
                        </a>
                        <div id="c39" class="panel-collapse collapse">
                            <div class="panel-body">
                                Hiçbir şey yapmanıza gerek bulunmamaktadır. Bilet bilgileriniz, tarafınıza e-mail ve sms ile gönderilmiştir. Biletinizi bastırmanıza bile gerek olmadan yalnızca kimliğinizi göstererek otobüsünüze binebilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-ticket">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c40">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Aldığım bilet üzerinde rota, yolcu ismi, cinsiyet veya benzeri bir değişikliği nasıl yapabilirim ?
                                </h4>
                            </div>
                        </a>
                        <div id="c40" class="panel-collapse collapse">
                            <div class="panel-body">
                                Birçok otobüs firmasının online iptal sistemi bulunurken, online değişim sistemi bulunmamaktadır. Biletinizi iptal ettiğiniz zaman paranız hiçbir kesinti olmadan kartınıza iade edilir. Bu sebeple en kolay bilet değişimini; anasayfadaki bilet iptali bölümünden biletinizi iptal edip, sistemimiz üzerinden yeni biletinizi alarak gerçekleştirebilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-cancellation">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c41">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Aldığım bileti online iptal edebilir miyim?
                                </h4>
                            </div>
                        </a>
                        <div id="c41" class="panel-collapse collapse">
                            <div class="panel-body">
                                Birçok firmanın online iptal fonksiyonu bulunmakta olup sistemimiz üzerinden iptali yapılabilmektedir; fakat bazı firmaların biletleri online olarak iptal edilememektedir. Anasayfamızdaki bilet iptali bölümüne girerek detaylı bilgi alabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-cancellation">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c42">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi nasıl iptal edebilirim?
                                </h4>
                            </div>
                        </a>
                        <div id="c42" class="panel-collapse collapse">
                            <div class="panel-body">
                                Anasayfadaki, bilet iptali bölümüne girerek detaylı bilgi alabilirsiniz.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-cancellation">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c43">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Biletimi iptal ettiğim durumda, geri ödemesi ne zaman yapılır?
                                </h4>
                            </div>
                        </a>
                        <div id="c43" class="panel-collapse collapse">
                            <div class="panel-body">
                                otobus.com tarafından iptal işlemi onaylandıktan sonra; bilet ücret iadesi, hiçbir kesinti olmadan kartınıza yapılıyor. Ödemenizin kartınıza yansıması bankaların işlem sürelerine göre farklılık gösterebilmekte. Ödediğiniz tutar; bankanıza bağlı olarak, kredi kartına 5 iş günü içinde, bankamatik kartına 30 gün içinde iade edilecektir. Bu süreç tamamen bankanıza bağlıdır ve otobus.com’in bankanıza müdahale etme hakkı yoktur.
                            </div>
                        </div>
                    </div>
                    <div class="panel faq faq-cancellation">
                        <a data-toggle="collapse" data-parent="#accordion" href="#c44">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <i class="fa fa-caret-right"></i>Bilet aldım, otobüse binemedim. Bilet ücretini geri alabilir miyim?
                                </h4>
                            </div>
                        </a>
                        <div id="c44" class="panel-collapse collapse">
                            <div class="panel-body">
                                Seyahatinizi gerçekleştirememe sebebiniz; sistemimiz veya otobüs firması kaynaklı ise, otobus.com %100 para iadesi sağlar; fakat bunun dışında kalan, otobus.com ile doğrudan ilgili olmayan bir sebep söz konusu ise, bu durumda maalesef ücret iadesi yapılmamaktadır.
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


    </div>

</section>