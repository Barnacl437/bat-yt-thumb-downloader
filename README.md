# bat-yt-thumb-downloader
A simple YouTube video thumbnail downloader written in Batch. 

(Bash? uhh not yet. Later oke?)

## ...How?
This small script will try to download YouTube thumbnail images using a specified universal image URL for every video.
The size and filename for downloaded image is maxresdefault.jpg, which is an optimal choice for bigger, better image output.
Just type the playback ID, which looks like this: (youtube.com/watch?v=)**9EtbggRB51g** (the 11 random characters, digits and dashes).
I think that for convenient, this script should be able to handle full-URL input and then cut the part before the playback ID, but well uhhh
I'm not gonna implement that yet. 

## Note
This script uses [cURL](https://curl.se) and [wget](https://www.gnu.org/software/wget/) to download thingies, so currently this script supports via-```curl``` and ```wget``` downloading, however I just finished the ```curl``` thing. So as of now only ```curl``` work. Well will add another more soon.
You can also add your own URL fetcher/getter/downloader if you want. Yes.
[update on 2024/01/04] I'm temporarily delaying the write so this may sounds like I'm committing useless stuff, but I think I will work back on this soon(TM), prob in one or two weeks. 

## Kontreebooshun 
This thing is currently in progress. All contributions are welcome to improve this one. Or probably write a Bash port for it. idk do wtf u want im suck @ coding lel

## Licence
as always, WTFPL. Enjoy the freedom at its peak.
