---
layout: post
title: Every Song Considered
slug: every-song-considered
categories: [side-hustle, Code]
description: 'Bringing song lists from All Songs Considered together with Spotify previews'
---

I finally released a little side project. I've started so many but just never got them finished. Either I lost interest, or something changed along the way that made me rethink the idea altogether.

> TLDR - I released a small side project called Every Song Considered. Listen to 30-second previews of songs from All Songs Considered. Visit here: [http://everysong.rocks/](http://everysong.rocks/)

### NPR

[All Songs Considered](http://www.npr.org/sections/allsongs/) is a fantastic podcast by the good folks at NPR. I'm a big fan of Bob and Robin and the music they (and others) share on the show. It introduces me to a lot of the music I end up listening to. The show posts on the NPR site don't always include music, so I wanted a way to bring all the shows together that contained song lists and provide a consistent way to listen to them. 

With the help of the [NPR API](http://www.npr.org/api/index) I was able to easily get a list of the shows and the attributes that go along with each. Apart from having to deal with inconsistencies in the data, a complete list of _All Songs_ shows containing song lists was relatively straightforward to get. The next step was to display the list of songs, with artist and album information and a small album cover. Previewing the song was tricky as this data wasn't always avaialble.

### Spotify to the rescue

With their extensive set of [APIs](https://developer.spotify.com/web-api/), I was able to get the song preview I was looking for. It would have been great to play the entire song, but for now the preview would do. There was a problem though. There was no common unique identifier between what I was getting from NPR and what I needed to get accurate data from Spotify. 

The UPC was my first try, but for some reason, they both use different UPCs to identify albums. I had to resort to searching against the Spotify API with artist, album and song information. In most cases, this method returns accurate results but there are edge cases where it might not. I haven't seen this behaviour yet.

### The Resulting MVP

![](/public/images/2017-03-21_1617.png)

It's certainly not going to win any design awards, but does what it's supposed to. 

### What's Next

I am in the process of building some new functionality that will allow you to create Spotify playlists based on selected songs. 

