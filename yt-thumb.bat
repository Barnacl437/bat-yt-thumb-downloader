@echo off 
rem note: find some weird characters and numbers between echo lines? They are actually ANSI colouring syntaxes, particularly "ANSI Escape Sequences" used for encoding-level markdown. 

rem You can look for reference here: https://stackoverflow.com/questions/2048509/how-to-echo-with-different-colors-in-the-windows-command-line
:init
set ver=0.1
set name=bat-yt-thumb-downloader
set phrase=just a YouTube video downloader written in Windows Batch.
    cls
echo %name%, %phrase%
echo Type "help" to get help without any arguments.
echo ----------------------------------------------
:cli
set /p cli=input: 

    if %cli% == help goto helper
    if %cli% == info goto info
    if %cli% == download goto download
    if %cli% == cmd goto cmd-prmpt
    if %cli% == exit goto exit
else goto cli


:helper
echo %name% version %ver%. 
echo Currently only curl and wget supported.
echo Please install curl or wget if you haven't. Or you can modify to 
echo allow this script to use another tool as you want.
echo [101;93m commands [0m 		description
echo download 		go to the downloader.
echo cmd      		open system command prompt.
echo info     		licence and other information.
echo exit/quit		exit/quit the application.
goto cli

:info
echo [96m                %name% version %ver%. [0m
echo A utility to help you download YouTube video thumbnail in maxresdefault (the maximum resolution of
echo that YouTube video) with easy-to-use semi-CLI mode.
echo This is a [4mfree software[0m licenced under [7mWTFPL v2[0m. You are free to copy, distribute, modify
echo and commercialise this, with or without the licence verbatim (as long as the name changed)
echo according to Sam Hocevar.
echo Honestly, personally I don't think this is worth commercialising, since it has no actual
echo value to be sold. It's recommended to keep it free.
echo Ognl. written by barnacl437, 2024. 
echo Find my GitHub here: [91mhttps://github.com/barnacl437[0m
goto cli

:cmd-prmpt
echo Type 'exit' to exit.
cmd
goto cli

:download
echo Please choose curl or wget method. If unsure, try curl since it's pretty built-in by 
echo many OSes. Otherwise use wget if you think your system is ready to use it, since this
echo script will rely on one of them.
set /p method=Choose one (wget, curl, back): 
    if %method%==curl goto dl-curl
    if %method%==wget goto dl-wget
    if %method%==back goto cli
else goto cli

:dl-curl
echo So you chose %method% method. Now proceeding...
echo Please type playback ID below. It looks like this and located in here: 
echo youtube.com/watch?v=[7mabcdef123-_[0m (don't leave any space for sure)
set /p playbackid=Playback ID: 
echo Now type the folder path where you want to save. Otherwise it will save in the same 
echo place as the script file. Path must end with "/" (slash) if you don't want things
echo to break.
echo Default is %playbackid%-maxresdefault.jpg.
set /p saveloc=Location and filename:
set /p curl-args=Arguments (optional):
:curl-confirm
    echo Got the information. Your code now may look like this:
    echo curl https://img.youtube.com/vi/%playbackid%/maxresdefault.jpg -o %saveloc%%playbackid%-maxresdefault.jpg %args%
    set /p dl-curl-confirm=Do you want to proceed?(yes/no/back) 
        if %dl-curl-confirm%==yes goto curl-download
        if %dl-curl-confirm%==no goto cli
        if %dl-curl-confirm%==back goto dl-curl
    else goto curl-confirm
:curl-download
echo Downloading...
curl https://img.youtube.com/vi/%playbackid%/maxresdefault.jpg -o %saveloc%/%playbackid%-maxresdefault.jpg %args%
echo Done.
goto cli

else goto cli