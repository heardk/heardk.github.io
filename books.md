---
layout: data-page
title: Reading List
---

{% for book in site.data.books %}
    {% if book.date-finished != nil %}
        {% capture bookFinishedYear %}{{ book.date-finished | date: "%Y" }}{% endcapture %}
        {% capture currentYear %}{{ "now" | date: "%Y" }}{% endcapture %}
        {% assign numPagesRead = numPagesRead | plus: book.pages %}
        {% assign numBooksRead = numBooksRead | plus: 1 %}
        {% if bookFinishedYear == currentYear %}
            {% assign numBooksCurrentYear = numBooksCurrentYear | plus: 1 %}
        {% endif %}
        {% if book.notes-url != '' %}
            {% assign numBookNotes = numBookNotes | plus: 1 %}
        {% endif %}
    {% endif %}
{% endfor %}

<div class="stats">
    <ul>
        <li>Books Read in {{ "now" | date: "%Y" }}: <span class="statsBold">{{ numBooksCurrentYear}}</span></li>
        <li>Books Read: <span class="statsBold">{{ numBooksRead }}</span></li>
        <li>Total Pages: <span class="statsBold">{{ numPagesRead }}</span></li>
        <li>Books with Notes: <span class="statsBold">{{ numBookNotes }}</span></li>
    </ul>
</div>

<div style="overflow-x:auto;">
<table class="datatable">
<tr>
    <th colspan="2">Title</th>
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

