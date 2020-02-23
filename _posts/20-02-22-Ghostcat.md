---
layout: post
title: Nederlands eigenaren kwetsbare Apache Tomcat AJP op de hoogte brengen / Notifying Dutch owners Apache Tomcat AJP vulnerability
author: Jeroen van de Weerd
excerpt: 773 Nederlandse ipadressen kwetsbaar voor Ghostcat - Apache Tomcat AJP File Read/Inclusion Vulnerability / 773 Dutch IP addresses vulnerable to Ghostcat - Apache Tomcat AJP File Read / Inclusion Vulnerability
---
<small>[English below](#english)</small>

### Nederlands

Deze kwetsbaarheid, omgedoopt naar de naam Ghostcat, werd ontdekt door onderzoekers van Chaitin Tech https://www.chaitin.cn/en/ghostcat en gemeldt op 3 januari aan Apache Software Foundation. Op 20 februari 2020 publiceerde China National Vulnerability Database (CNVD) een beveiligingsadvies voor CNVD-2020-10487, een ernstige kwetsbaarheid in Apache Tomcat's Apache JServ Protocol (of AJP). De kwetsbarheid heeft ook een CVE aanduiding gekregen, CVE-2020-1938.

Het heeft de naam Ghostcat gekregen omdat de kwetsbaarheid in alle versies (Tomcat 9/8/7/6 en ouder) van de Apache Tomcat AJP connector zitten en zit er al meer dan 10 jaar in, vandaar Ghostcat.

Bij het uitbuiten van deze kwetsbaarheid kan de aanvaller de inhoud van alle configuratiebestanden en broncodebestanden van de webapps die op Tomcat zijn geïmplementeerd inzien. Als de websiteapplicatie het toestaat om bestanden te uploaden, kan een aanvaller een bestand met kwaadaardige JSP-scriptcode uploaden. Het bestand wordt hierna opgepakt door de Ghostcat-kwetsbaarheid en dat kan uiteindelijk leiden tot uitvoering van externe code.
Apache heeft ondertussen al diverse updates uitgebracht om de kwetsbaarheid te verhelpen. De officieel versies 9.0.31, 8.5.51 en 7.0.100 zijn vrijgegeven om dit beveiligingslek te verhelpen.

Als de AJP Connector service niet wordt gebruikt dan raden wij aan om direct te updaten naar de nieuwe uitgegeven versies. Lukt het niet om te updaten, om welke reden dan ook, dan kunt u het beste de regel, <Connector port="8009" protocol="AJP/1.3" redirectPort="8443" /> in /conf/server.xml uitcommentariëren.

Als u de AJP Connector service wel gebruikt dan raden wij ook aan om direct te updaten naar de nieuwe uitgegeven versies. Onderzoekers van Chaitin Tech adviseren het "secret" kenmerk voor de AJP Connector om AJP-protocolverificatie in te stellen.
