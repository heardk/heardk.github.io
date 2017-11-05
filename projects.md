---
layout: page
title: Projects
---

Side Projects and Other Learning

{% for project_hash in site.data.projects %}
{% assign project = project_hash[1] %}
<h3 class="projectTitle">
    <a href="{{ project.link }}">{{ project.name }}</a> ({{ project.status }})
</h3>
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
{% if project.source %}
<p>Source: <a href="{{ project.source }}">{{ project.source }}</a></p>
{% endif %}
{% endfor %}