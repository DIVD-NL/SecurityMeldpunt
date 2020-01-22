---
layout: case
title: 202002 - Wildcard certificaten Citrix ADC
author: Frank Breedijk
excerpt: Op ruim 450 kwetsbare Citrix ADC systemen hebben wij wildcard certificaten aangetroffen / We have found over 450 vulnerable Citrix ADC that used wildcard certificates
---

### Update 22-1-2020 11:15

| CVE(s) | Related to [CVE-2019-19781](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19781) |
| Products | TLS Wildcard certificates installed on vulnerable Citrix ADC / Citrix Gateway / Netscaler ADC / Netscaler Gateway / Citrix SD-WAN WANOP servers |
| Versions | N/A |
| Patches | N/A |
| Workaround | N/A |
| Recommendation | Revoke and replace certificates (preferably for non-wildcard versions) unless you can reliable determine that the Citrix system wasn't compromised. |

<small>[English below](#english)</small>


## Samenvatting

Uit analyse van de data van onze scan in de nacht van 9 op 10 januari is gebleken dat van de ruim 700 door ons als kwetsbaar geidentificeerde Citrix systmen meer dan 450 systemen gebruik maakten van [wildcard certificaten](https://en.wikipedia.org/wiki/Wildcard_certificate).

Wildcard certificaten zijn TLS certificaten die geldig zijn voor alle sub-domeinen binnen een domein. B.v. het (niet bestaande) wildcard certificaat `*.securitymeldpunt.nl` is geldig voor alle subdomeinen van `securitymeldpunt.nl`, dus b.v. ook voor `www.securitymeldpunt.nl`, `mail.securitymeldpunt.nl` en `cms.securitymeldpunt.nl`

Een TLS certificaat beschermt een TLS verbinding tegen afluisteren en zorg ervoor dat een eindgebruiker zekerheid heeft over de identieit van de website of dienst waarmee hij communiceert. Een goed TLS certificaat beveiligd tegen het onderscheppen/omleiden van verbindingen (b.v. om deze af te luisteren, te manipuleren of een phishing site op te zetten).

Er is een grote waarschijnlijkheid dat Citrix ADCs waarop op of na 9 januari 2020 geen mitigatie is toegepast, zijn overgenomen en dat daarbij het TLS certificaat en de bijgehorende sleutel is buitgemaakt.

## Wat kun u doen?

We raden iedereen aan de volgende overweging te maken:
* Is de mitigatie op of na 9 januari is geinstalleerd?
* Is er gebruik gemaakt van versie 12.1 build 50.28?

Indien het antwoord op een van deze vragen ja is, dan raden wij u aan om:
* Te controleren welke TLS certificaten op het systeem aanwezig waren
* Deze certificaten te vervangen door nieuwe, bij voorkeur niet wildcard, certificaten
* Deze TLS certificaten door de uitgevende instantie (CA) in te laten trekken

Let erop dat een wildcard certificaat mogelijk ook gebruikt kan worden op een andere system dan het desbetreffende Citrix systeem.

Indien u, met hoge mate van zekerheid, heeft kunnen (laten) uitsluiten dan het systeem gecompromitterd is, dan raden wij u nog steeds aan het wildcard certificaat te vervangen door een niet wildcard variant on een soortgelijk risico in de toekomst te vermijden.

## Wat doen wij?

Wij zijn op dit moment bezig de lijst te verwerken en gaan daarna proberen alle partijen in te lichten. Wij hebben onze data gedeeld met het [NCSC](https://www.ncsc.nl).

## Timeline

| Date  | Description |
|:-----:|-------------|
| 9-1-2020 / 10-1-2020 | Initiele scan uitgevoerd om kwetsbare systemen te identificeren. Hierbij zijn ook de domeinnamen in de TLS certificaten opgeslagen |
| 22-1-2020 | Data gedeeld met NCSC |
| 22-1-2020 | Data analyse |
 
<hr>

### <a name="english"></a>English
<hr>

Translation will follow.