function beam()
{
write-host("Hello there how are you")
#to know we are running at all

#cd to wherever visual studio program is to start it.
cd \
cd Users\Justin\Documents\
cd '.\Visual Studio 2015\'
cd Projects\ConsoleApplication1\ConsoleApplication1\bin\Debug
sleep 1

#wait 2 milliseconds so the .raw files have time to be created, then convert them to .wav one by one.
sleep 2
sox -r 2048000 -e unsigned -b 8 -c 2 filename1.raw outputfile1.wav
sleep 1
sox -r 2048000 -e unsigned -b 8 -c 2 filename2.raw outputfile2.wav
sleep 1
sox -r 2048000 -e unsigned -b 8 -c 2 filename3.raw outputfile3.wav
sleep 1
sox -r 2048000 -e unsigned -b 8 -c 2 filename4.raw outputfile4.wav
sleep 1
sox -r 2048000 -e unsigned -b 8 -c 2 filename5.raw outputfile5.wav

#copy .wav files to their own folder. (just an empty WavFiles one will do..)
Copy-Item 'C:\Users\Justin\Documents\Visual Studio 2015\Projects\ConsoleApplication1\ConsoleApplication1\bin\Debug\*.wav' C:\Users\Justin\Desktop\WavFiles

#wait again, and then cd to where java project .jar was saved, and run it.
sleep 1
cd \Users\Justin\Desktop
java -jar BeamForm4.jar


#wait, cd back to first directory so that testing this program is easier.
sleep 1
cd \Users\Justin

}

beam