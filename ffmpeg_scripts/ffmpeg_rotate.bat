echo off
set FFMPEG_EXE=ffmpeg
set VIDEO_FILTER=rotate=-PI/2

set /p INPUT_FILE="input video filename: "

echo "choice the way to rotate:"
echo "1. -PI/2"
echo "2. PI/2"

set /p CHOICE=

if %CHOICE%==2 (
    set VIDEO_FILTER=rotate=PI/2
)

set VIDEO_FILTER=%VIDEO_FILTER%:ow=ih:oh=iw

%FFMPEG_EXE% -i %INPUT_FILE% -vf "%VIDEO_FILTER%" -vcodec libx264 out-%INPUT_FILE%

pause