echo off
set FFMPEG_EXE=ffmpeg
set VIDEO_FILTER=crop=w=iw:h=ih/3:x=0:y=ih/3

set /p INPUT_FILE="input video filename: "

%FFMPEG_EXE% -i %INPUT_FILE% -vf "%VIDEO_FILTER%" -vcodec libx264 out-%INPUT_FILE%

pause