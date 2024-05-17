[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="detail">
    <div class="vizitka">
        <div class="jmeno">${vizitka.jmeno}</div>
        <div class="firma">${vizitka.firma}</div>
        <div class="udaje">
            <div class="adresa">
                <div>${vizitka.ulice}</div>
                <div><span>${vizitka.obecPsc}</span></div>
            </div>
            <div class="kontakty">
                <div><i class="bi bi-at"></i> [#if vizitka.email??]${vizitka.email}[#else]<small><em>not specified</em></small>[/#if]</div>
                <div><i class="bi bi-phone"></i>[#if vizitka.telefon??] ${vizitka.telefon}[#else]<small><em>not specified</em></small>[/#if]</div>
                <div><i class="bi bi-globe"></i>${vizitka.web}</div>
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${vizitka.celaAdresa?url("UTF-8")}" width="100%" height="100%" frameborder="0"></iframe>
    </div>

    <nav>
        <a href="/">◂ zpět na seznam</a>
    </nav>
</div>
</body>
</html>
