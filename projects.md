---
layout: page
title: Projects
---

Side Projects and Other Learning

{% for project_hash in site.data.projects %}
{% assign project = project_hash[1] %}
<h2>
    {{ project.name }}
</h2>
<p>{{ project.description }}</p>
<ul>
{% for highlight in project.highlights %}
    <li>{{ highlight.name }}</li>
{% endfor %}
</ul>
<table>
    <thead>
    <tr>
        <td colspan="2"><h4>Tools Used</h4></td>
    </tr>
    </thead>
    <tbody>
    {% for tool in project.tools %}
    <tr>
        <td>{{ tool.name }}</td><td><a href="{{ tool.link }}">{{ tool.link }}</a></td>
    </tr>
    {% endfor %}
    </tbody>
</table>
<p>
{% if project.source %}Source Code: <a href="{{ project.source }}">{{ project.source }}</a><br />{% endif %}
Link: <a href="{{ project.link }}">{{ project.link }}</a>
</p>
{% endfor %}
