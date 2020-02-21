---
author: Sander Spierenburg
excerpt: Handler
---
Sander Spierenburg
==================

<small>[English below](#english)</small>

[Sander Spierenburg](https://www.linkedin.com/in/sspierenburg/) is een handler bij Het Nederlands Security Melpunt. In het dagelijks leven is hij security analyst en incident responder bij het KPN-CERT.


### English

[Sander Spierenburg](https://www.linkedin.com/in/sspierenburg/)) is  handler at The Dutch Security Hotline. He's also a security analyst at the largest dutch telecom provider in the KPN-CERT. 

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
