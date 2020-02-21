---
author: Sander Spierenburg
excerpt: Handler
---
Richard
==================

<small>[English below](#english)</small>

[Richard Masmeijer](https://www.linkedin.com/in/richard-masmeijer/) is een handler bij Het Nederlands Security Melpunt. In het dagelijks leven is hij security incident responder bij de Nederlandse Spoorwegen.


### English

[Richard Masmeijer](https://www.linkedin.com/in/richard-masmeijer/)) is  handler at The Dutch Security Hotline. He's also a security incident responder at the dutch railway company Nederlandse Spoorwegen.

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
