---
layout: page
title: Ecommerce News
---

#### Subscribe to my Newsletter 
A somewhat regular email with interesting information about ecommerce and ecommerce technology. Email addresses will never be shared and only be used for this newsletter.
 <form style="border:1px solid #ccc;padding:3px;text-align:center;" action="https://tinyletter.com/klyhrd" method="post" target="popupwindow" onsubmit="window.open('https://tinyletter.com/klyhrd', 'popupwindow', 'scrollbars=yes,width=800,height=600');return true"><p><label for="tlemail">Enter your email address</label></p><p><input type="text" style="width:140px" name="email" id="tlemail" /></p><input type="hidden" value="1" name="embed"/><input type="submit" value="Subscribe" /><p></p></form>


#### Latest News

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