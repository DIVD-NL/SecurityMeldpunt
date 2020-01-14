## Het Nederlands Security Meldpunt...

... is een groep vrijwillers, onderdeel van het [Dutch Institute for Vulnerability Disclosure](https://divd.nl), die het zich tot taak heeft gesteld eigenaren van Nederlandse netwerkblokken en websites te informeren over (cyber) security zaken die bij het meldpunt gemeld worden.

### Wat kunt je melden?

Wij richten ons specifiek op kwetsbaarheden die een groot aantal gebruikers treft zoals b.v. de in [PulseVPN](//2019/10/01/Pulse-VPN/) en Citrix Gateway. In deze gevallen willen wij gericht de netwerk beheerders van netwerken met kwetsbare systemen op de hoogte brengen van het bestaan van deze systemen zodat zij de kwetsbaarheid kunnen (laten) verhelpen.

### Hoe kan ik melden?

Lees voor je gaat melden eerst onze [spelregels](/spelregels) en lees eventueel onze [veel gestelde vragen](/faq).

Op dit moment zijn we nog in oprichting, je kunt helaas dus *nog niet melden*.

## Blog

Laatste 10 artikelen...

<ul>
{% for post in site.posts %}
	{% if forloop.index <= 10 %}
	    <li>
	        <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
	    </li>
	{% endif %}
{% endfor %}
</ul>

[Alle artikelen](/blog)
