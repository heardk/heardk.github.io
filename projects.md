---
layout: page
title: Projects
---

Side Projects and Other Learning

{% for project_hash in site.data.projects %}
{% assign project = project_hash[1] %}

## {{ project.name }}

{{ project.description }}

<ul>
{% for highlight in project.highlights %}
     <li>{{ highlight.name }}</li>
{% endfor %}
</ul>

### Tools Used
<div style="overflow-x:auto;">
<table>
{% for tool in project.tools %}
    <tr>
        <td>{{ tool.name }}</td>
        <td><a href="{{ tool.link }}">{{ tool.link }}</a></td>
     </tr>
{% endfor %}
</table>
</div>

<p>
{% if project.source %}Source Code: <a href="{{ project.source }}">{{ project.source }}</a><br />{% endif %}
Link: <a href="{{ project.link }}">{{ project.link }}</a>
</p>
{% endfor %}
