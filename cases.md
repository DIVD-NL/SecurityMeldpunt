Cases
=====
{% for p in site.pages | reverse %}
    {% if p.url contains "/cases/" and p.url != page.url %}
[{{ p.title }}]({{p.url}})
-------------------------------------
{{ p.excerpt }}
    {% endif %}
{% endfor %}
