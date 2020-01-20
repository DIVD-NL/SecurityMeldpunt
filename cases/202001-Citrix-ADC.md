---
layout: case
title: 202001 - Citrix ADC
author: Frank Breedijk
excerpt: Onze status omtrend CVE-2019-19781 / Our current status around CVE-2019-19781
---

### Update 20-1-2020 7:45

<small>[English below](#english)</small>

## Samenvatting

Op 24-12-2019 werd bekend dat het product Citrix ADC / Citrix Gateway / Netscaler ADC / Netscaler Gateway (hierna Citrix ADC) een ernstig lek bevat waardoor het eenvoudig mogelijk is het systeem over te nemen. 
Voor versie 11.1 en 12.0 zijn inmiddels [patches beschikbaar](https://www.citrix.com/blogs/2020/01/19/vulnerability-update-first-permanent-fixes-available-timeline-accelerated/). Voor de andere versies worden de patches op 24-1 verwacht.  Voor het downloaden van patches is een Citrix portal account nodig. Voor systemen waar nog geen patches voor zijn/waren is er een [mitigatie](https://support.citrix.com/article/CTX26767) beschikbaar die de kwetsbaarheid verminderd. Deze bleek echter niet 100% betrouwbaar. Het [NCSC](https://www.ncsc.nl) adviseert dan ook [indien mogelijk Citrix ADC systemen zonder patch niet te gebruiken](https://www.ncsc.nl/actueel/nieuws/2020/januari/16/door-citrix-geadviseerde-mitigerende-maatregelen-niet-altijd-effectief).

Aaanvallers scannen massaal het internet af naar kwetsbare systemen die vervolgens worden overgenomen.

Het Security Meldpount scant naar systemen waarvan wij op afstand vast kunnen stellen dat de mitigatie niet is uitgevoerd of werkt en sturen hiervan bericht naar de beheerders van het netwerk waar deze systemen in staan. Hierbij concentreren wij ons op systemen in of gelieerd aan Nederland.

Het aantal ongemitigeerde systemen neem gelukkig af.
![Grafiek met aantal ongemitigeerde systemen](/assets/images/CitrixADC_graph.png "Ongemitigeerde systemen")


## Tijdslijn

| Datum |Omschrijving |
|:-----:|-------------|
| 17-12-2019 | [Citrix meldt](https://support.citrix.com/article/CTX267027) een kwetsbaarheid in Citrix ADC. En raadt  iedereen aan om op deze systemen een [mitigatie te implementeren](https://support.citrix.com/article/CTX267679).
| 9-1-2019   | Onderzoekers melden dat er actief gezocht wordt naar kwetsbare systemen |
| 11-1-2020  | Exploit code is publiek beschikbaar o.a. van [Project Zero Day India](https://github.com/projectzeroindia/CVE-2019-19781) en [Trusted Sec](https://github.com/trustedsec/cve-2019-19781) |
| 13-1-2020  | [Het Nederlands Security Meldpunt](https://www.securitymeldpunt.nl) activeert zichzelf |
| 14-1-2020  | Eerste notificaties worden uitgestuurd door Het Security Meldpunt |
| 15-1-2020  | [Blog post](/2020/01/15/How-to-check-your-Citrix-gateway/) met links naar artikelen om vast te stellen of een ADC gecompromitteerd is |
| 16-1-2020  | Het [NCSC](https://www.ncsc.nl) meldt dat de mitigatie niet betrouwbaar is en adviseert te overwegen [Citrix ADC systemen af te sluiten](https://www.ncsc.nl/actueel/nieuws/2020/januari/16/door-citrix-geadviseerde-mitigerende-maatregelen-niet-altijd-effectief). Het Security Meldpunt besluit het scannen en melden tijdelijk te staken |
| 17-1-2020  | Het NCSC verduidelijkt het advies van 16-1: "Schakel Citrix-systemen uit waar dat kan of tref aanvullende maatregelen".
het Security Meldpunt gaat door met scannen en melden. |
| 19-1-2020  | [Patches beschikbaar](https://www.citrix.com/blogs/2020/01/19/vulnerability-update-first-permanent-fixes-available-timeline-accelerated/) voor versie 11.1 and 12.0. Dit is één dag eerder dan eerder gecommuniceerd. De datum waarop patches voor versie 12.1 en 13 is vervroegd van 27-1 naar 24-1. De datum waarop parches voor versie 10 beschikbaar zijn is vervroegd van 31-1 naar 24-1 |
| ~ 24-1-2020  | Citrix verwacht op deze datum patches beschikbaar te hebben voor versie 10, 12.1 en 13 van Citrix ADC |

 
<hr>

### <a name="english"></a>English

## Summary

On 24-12-2019 Citrix ADC / Citrix Gateway / Netscaler ADC / Netscaler Gateway (hereafter Citrix ADC) appeared to contain a serious vulnerability that allows an attacker to trivially take over a system. 
[Patches are available](https://www.citrix.com/blogs/2020/01/19/vulnerability-update-first-permanent-fixes-available-timeline-accelerated/) for version 11.1 and 12.0. Patches for the other versions are expected on 24-1. A valid Citrix portal account is needed to download these patches. For systems that are currently upatched there is a [mitigation](https://support.citrix.com/article/CTX26767) that reduces the vulnerability. However, this mitigation turned out not to be 100% reliable. The [Dutch NCSC](https://www.ncsc.nl) strongly recommends to [not use Citrix ADC systems that are unpatched if possible](https://www.ncsc.nl/actueel/nieuws/2020/januari/16/door-citrix-geadviseerde-mitigerende-maatregelen-niet-altijd-effectief) ([translation by google](https://translate.google.com/translate?hl=&sl=auto&tl=en&u=https%3A%2F%2Fwww.ncsc.nl%2Factueel%2Fnieuws%2F2020%2Fjanuari%2F16%2Fdoor-citrix-geadviseerde-mitigerende-maatregelen-niet-altijd-effectief).

Attackers are bulk scanning the internet for vulnerable systems and exploiting them.

The Security Hotline is scanning for systems that are unmitigated or have an ineffective mitigation and is sending out notifications to the operators of networks in which these systems are found. We focus on systems located or related to The Netherlands.

The number of vulnerable systems is decreasing
![Graph with unmitigated systems over time](/assets/images/CitrixADC_graph.png "Unmitigated systems")


## Timeline

(To be translated)

| Date  | Description |
|:-----:|-------------|
| 17-12-2019 | [Citrix reports](https://support.citrix.com/article/CTX267027) a vulnerability in Citrix ADC and advices to [implement mitigation](https://support.citrix.com/article/CTX267679).
| 9-1-2019   | Researchers report attackers are actively searching for vulnerable systems. |
| 11-1-2020  | Exploit code is publicly available, e.g. the [Project Zero Day India](https://github.com/projectzeroindia/CVE-2019-19781) and [Trusted Sec](https://github.com/trustedsec/cve-2019-19781) |
| 13-1-2020  | [The Dutch Security Hotline](https://www.securitymeldpunt.nl/english/) has been activated |
| 14-1-2020  | First notifications have been sent out by the [The Dutch Security Hotline](https://www.securitymeldpunt.nl/english/) |
| 15-1-2020  | [Blog post](/2020/01/15/How-to-check-your-Citrix-gateway/) with links to articles on how to establish whether a ADC is compromised |
| 16-1-2020  | The Dutch National Cyber Security Center, [NCSC](https://www.ncsc.nl), reports mitigation measures prove unreliable and advices to consider to [shut down Citrix ADC systems](https://www.ncsc.nl/actueel/nieuws/2020/januari/16/door-citrix-geadviseerde-mitigerende-maatregelen-niet-altijd-effectief). The Dutch Security Hotline decides to temporarily stop scanning and reporting.  |
| 17-1-2020  | The NCSC Het NCSC clarifies its 16-1 statement: "Shut down Citrix systems if possible or take additional measures".
The Dutch Security Hotline continues its scanning and reporting activities. |
| 19-1-2020  | [Patches avaiable](https://www.citrix.com/blogs/2020/01/19/vulnerability-update-first-permanent-fixes-available-timeline-accelerated/) for version 11.1 and 12.0. This is one day sooner then initially communicated. The date for which patches for version 12.1 and 13 are availbe has changed from 27-1 to 24-1. The date that patches are aviable for version 10 has been changed from 31-1 to 24-1. |
| ~ 24-1-2020  | Citrix expect to have patches available for version 10, 12.1 and 13 |
