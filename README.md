# yt-thumb-downloader
A simple YouTube video thumbnail downloader written in Batch. 

(Bash? uhh not yet. Later oke?)

## ...How?
This small script will try to download YouTube thumbnail images using a specified universal image URL for every video.
Just type the playback ID, which looks like this: (youtube.com/watch?v=)**9EtbggRB51g** (the 11 random characters, digits and dashes).
I think that for convenient, this script should be able to handle full-URL input and then cut the part before the playback ID, but well uhhh
I'm not gonna implement that yet. 

## Note
currently this script supports ```curl``` and ```wget``` downloading, however I just finished the ```curl``` thing. So as of now only ```curl``` work. Well will add another more soon.
You can also add your own URL fetcher/getter/downloader if you want. Yes.

## Kontreebooshun 
This thing is currently in progress. All contributions are welcome to improve this one. Or probably write a Bash port for it. idk do wtf u want im suck @ coding lel

## Licence
as always, WTFPL. Enjoy the freedom at its peak.
