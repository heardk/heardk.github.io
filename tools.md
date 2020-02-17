---
layout: data-page
title: Useful Tools & Products
---

<div style="overflow-x:auto;">
<table class="datatable">
<tr>
    <th>Product</th>
    <th>Notes</th>
    <th>Added</th>
</tr>
{% for tool in site.data.tools %}
    <tr>
        <td><a href="{{ tool.url }}" target="_blank">{{ tool.tool | truncate: 50 }}</a></td>
        <td>{{ tool.notes | truncate: 65 }}</td>
        <td>{{ tool.date-added | date: "%b %Y" }}</td>
    </tr>
{% endfor %}
</table>
</div>