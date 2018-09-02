---
layout: page
title: Books
---

Reading List

{% for book in site.data.books %}
{% if book.date-finished != nil %}
<div class="bookWrapper">

<div class="bookImg">
    <img src="{{ book.cover-image-url }}" />
</div>
<div class="bookTitle">{{ book.title }}</div>
<div class="bookAuthor">by {{ book.author }}
    <a href="{{ book.buy-url }}">(buy)</a>
</div>
<div class="bookInfo">
<strong>Read:</strong> {{ book.date-finished | date: "%B %Y" }}<br />
<strong>Pages:</strong> {{ book.pages }}<br />
{% if book.notes-url != nil %}
<strong><a href="{{ book.notes-url }}" target="_blank">My Notes</a></strong>
{% endif %}
</div>

</div>
{% endif %}
{% endfor %}