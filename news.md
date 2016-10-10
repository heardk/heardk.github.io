---
layout: page
title: Latest Ecommerce News
---

News of interest from the ever changing world of ecommerce.

<div id="news"></div>

<script>
jQuery.get( "https://blogrollcontent.firebaseio.com/.json", function( response ) {
var html = "<table>";

for (var newsitem in response) {
html = html + "<tr><td><a href='" + response[newsitem].URL + "'>" + response[newsitem].Post + "</a></td><td><small>" + response[newsitem].Date + "</small></td></tr>";
}

html = html + "</table>";
document.getElementById("news").innerHTML = html;

} );
</script>