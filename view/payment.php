<?php
ob_start();
$title ="Оплата и доставка";
?>


        <div id="content" class="site-content">
            <div id="primary" class="content-area column full">
                <main id="main" class="site-main" role="main">
                    <article id="post-37" class="post-37 page type-page status-publish hentry">
                        <header class="entry-header">
                            <h1 class="entry-title">Часто задаваемые вопросы</h1>
                        </header>
                        <!-- .entry-header -->
                        <div class="entry-content">

                            <div class="wpcmsdev-accordion">
                                <div class="accordion-item">
                                    <h3 class="accordion-item-title"><a href="#accordion-item-what-is-lore-ipsum"><i class="fa fa-plus icon-for-inactive"></i><i class="fa fa-minus icon-for-active"></i>Стоимость доставки?</a></h3>
                                    <div id="accordion-item-what-is-lore-ipsum" class="accordion-item-content">
                                        <p>
                                        <ul>
                                            <li>По Эстонии: почтовые автоматы (Smartpost, DPD, Omniva): 2,99 евро, почтовой посылкой: 5,50 евро</li>
                                            <li>По странам Балтии почтовые автоматы и посылка (Omniva, DPD): 8 евро</li>
                                            <li>В Финляндию почтовые автоматы и посылка (Smartpost): 12 евро</li>
                                            <li>В остальные страны: 19,50 евро</li>
                                        </ul>

                                        </p>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h3 class="accordion-item-title"><a href="#accordion-item-where-does-it-come-from"><i class="fa fa-plus icon-for-inactive"></i><i class="fa fa-minus icon-for-active"></i>Как можно оплатить покупку?</a></h3>
                                    <div id="accordion-item-where-does-it-come-from" class="accordion-item-content">
                                        <p>
                                        <ul>
                                            <li>Оплата банковским перечислением на наш расчётный счет (предпочтительно)</li>
                                            <li>PayPal</li>
                                            <li>кредитными картами Visa и Master</li>
                                        </ul>
                                        </p>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h3 class="accordion-item-title"><a href="#accordion-item-why-do-we-use-it"><i class="fa fa-plus icon-for-inactive"></i><i class="fa fa-minus icon-for-active"></i>Где можно купить ваши изделия кроме интернет-магазина?</a></h3>
                                    <div id="accordion-item-why-do-we-use-it" class="accordion-item-content">
                                        <p>
                                            Наши изделия всегда можно примерить и купить в нашей студии по адрессу.........
                                        </p>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h3 class="accordion-item-title"><a href="#accordion-item-what-is-lore-ipsum"><i class="fa fa-plus icon-for-inactive"></i><i class="fa fa-minus icon-for-active"></i>Можно ли вернуть товар?</a></h3>
                                    <div id="accordion-item-what-is-lore-ipsum" class="accordion-item-content">
                                        <p>
                                            Согласно законодательству, у клиента есть возможность и право вернуть или обменять товар, купленный в интернет-магазине в течение 14-ти дней после покупки.
                                            При возврате заказа, необходимо предварительно уведомить нас о причине возврата по электронной почте ...............
                                        </p>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h3 class="accordion-item-title"><a href="#accordion-item-what-is-lore-ipsum"><i class="fa fa-plus icon-for-inactive"></i><i class="fa fa-minus icon-for-active"></i>Время доставки</a></h3>
                                    <div id="accordion-item-what-is-lore-ipsum" class="accordion-item-content">
                                        <p>
                                        <ul>
                                            <li>Эстония 1-3 дня</li>
                                            <li>Финляндия 4-20 дней</li>
                                            <li>Европа 4-20 дней</li>
                                            <li>Россия 4-20 дней</li>
                                        </ul>
                                        В праздничные дни доставка может занять больше времени

                                        </p>
                                    </div>
                                </div>
                            </div>

                            <p>
                                <i class="fa fa-star fa-lg"></i><i class="fa fa-star fa-2x"></i><i class="fa fa-star fa-3x"></i><i class="fa fa-star fa-4x"></i><i class="fa fa-star fa-5x"></i>
                            </p>
                            <h4><i class="fa fa-heart" style="color:red;"></i> Мы надеемся, что эта информация была полезной для Вас.</h4>
                        </div>
                        <!-- .entry-content -->
                    </article>
                    <div class="clearfix">
                    </div>
                    <nav class="pagination"></nav>
                </main>
                <!-- #main -->
            </div>
            <!-- #primary -->
        </div>
        <!-- #content -->
    </div>



<?php
$content = ob_get_clean();
include "view/templates/layout.php";