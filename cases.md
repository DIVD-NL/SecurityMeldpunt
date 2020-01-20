Cases
=====
{% assign pages = site.pages |reverse %}
{% for p in pages %}
    {% if p.url contains "/cases/" and p.url != page.url %}
[{{ p.title }}]({{p.url}})
-------------------------------------
{{ p.excerpt }}
    {% endif %}
{% endfor %}
