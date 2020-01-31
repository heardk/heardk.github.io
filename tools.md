---
layout: data-page
title: Useful Tools & Products
---

<div style="overflow-x:auto;">
<table class="datatable">
<tr>
    <th>Product</th>
    <th>&nbsp;</th>
    <th>Notes</th>
    <th>Added</th>
</tr>
{% for tool in site.data.tools %}
    <tr>
        <td>{{ tool.tool | truncate: 50 }}</td>
        <td><a href="{{ tool.url }}" target="_blank">(link)</a></td>
        <td>{{ tool.notes | truncate: 65 }}</td>
        <td>{{ tool.date-added | date: "%b %Y" }}</td>
    </tr>
{% endfor %}
</table>
</div>