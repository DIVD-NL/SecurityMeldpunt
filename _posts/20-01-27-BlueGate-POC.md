---
layout: post
title: POC Exploit Microsoft Remote Dekstop Gateway RCE vulnerability
author: Barry van Kampen
excerpt: Het Security Meldpunt adviseerd dringend patches uit te rollen / The Security Hotline is advising urgently to patch systems
---
<small>[English below](#english)</small>

Op 14 januari bracht Microsoft twee zeer kritieke updates uit met een [CVSS score 9.8](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?calculator&version=3&vector=(CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H/E:P/RL:O/RC:C)) voor de Windows 2012, 2012R2, 2016 en 2019 Server platformen. Zowel DDOS (Denial of Service) alsmede een RCE (Remote Command Execution) kwetsbaarheden in Windows Remote Desktop Gateway (RD Gateway) diensten zijn verholpen na het uitvoeren van de updates van Patchtuesday van januari 2020. Impact van de kwetsbaarheden kan zijn dat systemen worden overgenomen met alle gevolgen van dien.

Vandaag is door [@layle_ctf](https://twitter.com/layle_ctf/status/1221514332049113095) gepubliceerd dat het is gelukt om de RCE kwetsbaarheid daadwerkelijk te misbruiken.

Op dit moment heeft DIVD zo'n 16 duizend kwetsbare systemen op het internet gevonden waaronder 1137 Nederlandse systemen.
Het Security Meldpunt gaat beheerders waarvan de systemen op de lijst staan waarschuwen.

Achtergrond en update info:
* CVE-2020-0609 (https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-0609) 
* CVE-2020-0610 (https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-0610)
* Denial of Service POC(https://github.com/ollypwn/BlueGate)

Meer informatie en de laatste stand van zaken met betrekking tot deze case wordt aangelegd op [onze case pagina](/cases/divd-2020-00003-rdpgw/) *TBD

<hr>

### <a name="english"></a>English

On January 14th Microsoft patched two critical vulnerabilities in Windows Server 2012, 2012R2, 2016 and 2019 with a [CVSS score off 9.8](https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?calculator&version=3&vector=(CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H/E:P/RL:O/RC:C))
Impact is both DOS (Denial Of Service) and RCE (Remote Command Execution), functional impact van cause of fully take over of the system and it's information. Patches of January 2020 are effective and highly recommended to deploy asap.

Today a working POC of the RCE was announced by @layle_ctf (https://twitter.com/layle_ctf/status/1221514332049113095)

At the time of writing there are more then 16 thousand systems vulnerable, 1137 are Dutch servers.
We are going to notify administrators of the systems on the list

Background and patch info:
CVE-2020-0609 (https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-0609) 
CVE-2020-0610 (https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-0610)
Denial of Service POC(https://github.com/ollypwn/BlueGate)

More information and the current status of this case can be found on [our case page](/cases/divd-2020-00003-rdpgw/)
