﻿function beam()
{
write-host("Hello there how are you")

cd \
cd Users\Justin\Documents\
cd '.\Visual Studio 2015\'
cd Projects\ConsoleApplication1\ConsoleApplication1\bin\Debug
sleep 1
Invoke-Item ConsoleApplication1.exe


sleep 2
sox -r 2048000 -e unsigned -b 8 -c 2 filename1.raw outputfile1.wav
sleep 1
sox -r 2048000 -e unsigned -b 8 -c 2 filename2.raw outputfile2.wav
#sleep 1
#sox -r 2048000 -e unsigned -b 8 -c 2 filename2.raw outputfile2.wav
#sleep 1
#sox -r 2048000 -e unsigned -b 8 -c 2 filename2.raw outputfile2.wav
#sleep 1
#sox -r 2048000 -e unsigned -b 8 -c 2 filename2.raw outputfile2.wav



sleep 1
cd \Users\Justin\Desktop
java -jar BeamForm3.jar



sleep 1
cd \Users\Justin

}

beam