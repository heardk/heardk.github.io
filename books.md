---
layout: data-page
title: Reading List
---

<div style="overflow-x:auto;">
<table class="datatable">
<tr>
    <th>&nbsp;</th>
    <th>Title</th>
    <th>Author</th>
    <th>Read</th>
    <th>Pages</th>
    <th>Buy</th>
    <th>Notes</th>
</tr>
{% for book in site.data.books %}
{% if book.date-finished != nil %}
    <tr>
        <td><img class="bookImg" src="{{ book.cover-image-url }}" /></td>
        <td>{{ book.title | truncate: 55 }}</td>
        <td>{{ book.author | truncate: 30 }}</td>
        <td>{{ book.date-finished | date: "%b %Y" }}</td>
        <td>{{ book.pages }}</td>
        <td><a href="{{ book.buy-url }}" target="_blank">amazon</a></td>
    {% if book.notes-url != '' %}
        <td><a href="{{ book.notes-url }}" target="_blank">notes</a></td>
    {% else %}
        <td>&nbsp;</td>
    {% endif %}
    </tr>
{% endif %}
{% endfor %}
</table>
</div>

