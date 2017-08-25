---
layout: page
title: Notes
---

<br />
<br />
<table class="bio-table">
    <tr><th>Book</th><th>Author</th><th>Date Completed</th></tr>
{% for note in site.notes %}
    {% unless note.title == 'Notes' %}
    <tr>
        <td><a href="{{ note.url }}">{{ note.book }}</a></td>
        <td>{{ note.author }}</td>
        <td>{{ note.date-complete }}</td>
    </tr>
    {% endunless %}
{% endfor %}
</table>