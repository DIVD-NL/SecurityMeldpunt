---
author: Barry van Kampen
excerpt: Handler
---
Barry van Kampen
================

<small>[English below](#english)</small>

[Barry van Kampen](https://www.linkedin.com/in/bvankampen/) is een handler bij Het Nederlands Security Melpunt. In het dagelijks leven is hij een van de directeuren van The S-Unit.


### English

[Barry van Kampen](https://www.linkedin.com/in/bvankampen/) is  handler at The Dutch Security Hotline. het is also a director of The S-Unit.

Pages written
-------------

Blog posts:
{% for p in site.posts %}
  {% if p.author == page.author %}
* [{{ p.title }}]({{ p.url }})
  {% endif %}
{% endfor %}

Cases:
{% for p in site.pages %}
  {% if p.author == page.author and p.url contains "/cases/" %}
* [{{ p.title }}]({{ p.url }})
  {% endif %}
{% endfor %}