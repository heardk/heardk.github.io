---
layout: data-page
title: Articles
---

{% for newsitem in site.data.news %}
### {{ newsitem.title }}
{{ newsitem.notes }} - _[{{ newsitem.published | date: "%b %Y" }}]({{ newsitem.url }})_
{% endfor %}