---
layout: case
title: 202002 - Wildcard certificaten Citrix ADC
author: Frank Breedijk
excerpt: Op ruim 450 kwetsbare Citrix ADC systemen hebben wij wildcard certificaten aangetroffen / We have found over 450 vulnerable Citrix ADC that used wildcard certificates
redirect_from: /DIVD-2020-00002/
---

### Update 22-1-2020 21:20

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
| 22-1-2020 | We hebben ongeveer 1350 emailgestuurd aan abuse@, info@ en security@ van de betrokken domeinen |
 
<hr>

### <a name="english"></a>English
<hr>

## Summary

Our analysis of the scan data collected on the night of January 9 to 10 shows that of the more than 700 vulnerable Citrix servers identified in the Netherlands, over 450 used wildcard certificates.

Wildcard certificates are TLS certificates that can be used with multiple sub-domains of a domain. As an example, the wildcard certificate `*.securitymeldpunt.nl` (fictional) is valid for all sub-domains available of `securitymeldpunt.nl` - e.g., `www.securitymeldpunt.nl`, `mail.securitymeldpunt.nl`, `cms.securitymeldpunt.nl`.

TLS certificates ensure the integrity of a tls connections and validate the identity of the website or service accessed by an end-user. They provide protection against intercepting, manipulating, or redirecting connections to a malicious site (e.g. for phishing).
There is a high probability that Citrix ADC servers with no mitigation applied on or after January 9, 2020, have been taken over and their TLS certificates and associated keys have been stolen.

## What you can do

Before taking any action, ask the following questions:
* Was the mitigation installed on or after January 9?
* Has version 12.1 build 50.28 been used?

If the answer to one of these questions is "yes," we recommend taking these steps:
1. Check which TLS certificates were present on the system
2. Replace these certificates with new, preferably not wildcard, certificates
3. Have these TLS certificates revoked by the Certificate Authority (CA) that issued them

Note that a wildcard certificate may also be used on a system other than the relevant Citrix system.

If you are highly confident that your system has not been compromised, we still recommend replacing the wildcard certificate with a non-wildcard one and avoid using them in the future.

## What we are doing

We are currently processing the list of vulnerable Citrix servers identified in our scanning and will try to inform all affected parties. We have shared our data with the NCSC.

## Timeline


| Date  | Description |
|:-----:|-------------|
| 9-1-2020 / 10-1-2020 | Inital scan to identify affecged systems. During this scan the domainnames in TLS certificates were recorded as well.  |
| 22-1-2020 | Shared Data with Dutch NCSC |
| 22-1-2020 | Data analysis |
| 22-1-2020 | We sent out about 1350 email messages to abuse, info and security addresses of affected domains |