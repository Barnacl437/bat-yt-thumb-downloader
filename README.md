# bat-yt-thumb-downloader
A simple YouTube video thumbnail downloader written in Windows Batch. 
Just for fun, and also for manipulating my Batch skill. It has no actual use tho. I plan to write it in Bash later but probably contributions can help.

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

-One more pls: this is written in Batch so it does run on Windows, but not Linux. You are free to write a Bash script altogether to this and push it here. Also, 
albeit it's available for Windows only (as of if there's no Bash or other port yet), you can run it via Wine and then save it to custom destination. Well, weird, right? 
lol 

## Installation and use
Just download the zip file as below and unzip it, run the .bat file and here you go.

![image depicting how to download zip source code](https://cdn.discordapp.com/attachments/1066215979006312478/1203665240592621608/image.png "yes, do it")

## Kontreebooshun 
This thing is currently in progress. All contributions are welcome to improve this one. Or probably write a Bash port for it. idk do wtf u want im suck @ coding lel

## Licence
as always, WTFPL. Enjoy the freedom at its peak.
