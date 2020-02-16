---
author: Frank Breedijk
excerpt: Initiatiefnemer, coordinator en perscontact / Initiator, coordinator and press contact
---
Frank Breedijk
==============

<small>[English below](#english)</small>

[Frank Breedijk](https://www.linkedin.com/in/seccubus/) is de initiatiefnemer en coordinator en pers woordvoerder van het Nederlands Security Meldpunt. In het dagelijks leven is hij de CISO van [Schuberg Philis](https://www.schubergphilis.com).

### English

[Frank Breedijk](https://www.linkedin.com/in/seccubus/) is the initiator, coordinator and press contact of the Dtuch Security Hotline. His day job is CISO of [Schuberg Philis](https://www.schubergphilis.com).

Blog posts
----------

{%- for p in site.posts -%}
  {% if p.author == page.author %}
* [{{ p.date | date_to_long_string }} - {{ p.title }}]({{ p.url }})
  {%- endif -%}
{% endfor %}

Cases
-----

{%- assign ps = site.pages | reverse -%}
{%- for p in ps -%}
  {% if p.author == page.author and p.url contains "/cases/" %}
* [{{ p.title }}]({{ p.url }})
  {%- endif -%}
{%- endfor -%}
