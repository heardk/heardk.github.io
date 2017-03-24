---
layout: page
title: Notes
---

I'm trying to do better at retaining the information I take in while reading. A method I've heard about is active reading, by highlighting different passages or areas of the book that are interesting and not being afraid to mark up the book making notes. The different files contained here is my attempt at doing this..and sharing it with you.
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