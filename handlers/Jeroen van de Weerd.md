---
author: Jeroen van de Weerd
excerpt: Handler
---
Frank Breedijk
==============

<small>[English below](#english)</small>

[Jeroen van de Weerd](https://www.linkedin.com/in/jvandeweerd/).

### English

[Jeroen van de Weerd](https://www.linkedin.com/in/jvandeweerd/).

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
