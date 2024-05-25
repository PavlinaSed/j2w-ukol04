[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="list">
    [#list list as card]
        <a href="/detail/${card?index}">
            <div class="businessCard">
                <div class="name">${card.name}</div>
                <div class="company">${card.company}</div>
                <div class="data">
                    <div class="address">
                        <div>${card.street}</div>
                        <div><span>${card.municipalityZip}</div>
                    </div>
                    <div class="contact">
                        <div><i class="bi bi-at"></i> [#if card.email??] ${card.email}[#else]<small><em>not
                                    specified</em></small>[/#if]</div>
                        <div><i class="bi bi-phone"></i>[#if card.phone??] ${card.phone}[#else]<small><em>not
                                specified</em></small>[/#if]</div>
                        <div><i class="bi bi-globe"></i>[#if card.web??] ${card.web}[#else]<small><em>not
                                specified</em></small>[/#if]</div>
                    </div>
                </div>
            </div>
        </a>
    [/#list]
    <a href="/new">
        <div class="businessCard vizitka--nova">
            <svg width="100" height="100">
                <rect width="20" height="100" x="40" y="0" fill="white"/>
                <rect width="100" height="20" x="0" y="40" fill="white"/>
            </svg>
        </div>
    </a>
</div>
</body>
</html>

