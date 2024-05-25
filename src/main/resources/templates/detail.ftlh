[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="detail">
    <div class="businessCard">
        <div class="name">${card.name}</div>
        <div class="company">${card.company}</div>
        <div class="data">
            <div class="address">
                <div>${card.street}</div>
                <div><span>${card.municipalityZip}</span></div>
            </div>
            <div class="contact">
                <div><i class="bi bi-at"></i> [#if card.email??]${card.email}[#else]<small><em>not
                            specified</em></small>[/#if]
                </div>
                <div><i class="bi bi-phone"></i>[#if card.phone??] ${card.phone}[#else]<small><em>not
                        specified</em></small>[/#if]</div>
                <div><i class="bi bi-globe"></i>[#if card.web??] ${card.web}[#else]<small><em>not
                        specified</em></small>[/#if]</div>
            </div>
        </div>
    </div>
    <div class="map">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${card.completeAddress?url("UTF-8")}" width="100%"
                height="100%" frameborder="0"></iframe>
    </div>
    <nav>
        <a href="/">◂ back to list</a>
    </nav>
    <form method="post" action="/detail/${id}">
        <input type="hidden" name="id"/>
        <button type="submit" class="btn btn-secondary">delete</button>
    </form>
</div>
</body>
</html>
