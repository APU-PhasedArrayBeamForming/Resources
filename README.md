# Resources
Currently, here is the plan: 

Powershell file runs whole project:

First, it grabs C# program to access API and outputs 8 .raw files.

Second, it converts .raw files into .wav via SoX.

Third, it runs .jar (whole java project) which uses 8 BeamObjects to output a pretty GUI.

Obviously, if we could remove and polish pieces that would be good too (but this would work and prove it's possible).

ie. use Java to access API removes first piece, or just read .raw files in Java to remove the second piece, 

or vice versa: use C# to beamform and output a GUI using .raw.


the beamforming.ps1 file currently runs for 1 SDR, and only needs to have 7 lines of conversion to work with 8 SDRs.

ie.

instead of: 

sleep 2

sox -r 2048000 -e unsigned -b 8 -c 2 filename1.raw outputfile.wav


we will have:

sleep 2

sox -r 2048000 -e unsigned -b 8 -c 2 filename1.raw outputfile1.wav

sox -r 2048000 -e unsigned -b 8 -c 2 filename2.raw outputfile2.wav

sox -r 2048000 -e unsigned -b 8 -c 2 filename3.raw outputfile3.wav

sox -r 2048000 -e unsigned -b 8 -c 2 filename4.raw outputfile4.wav

sox -r 2048000 -e unsigned -b 8 -c 2 filename5.raw outputfile5.wav

sox -r 2048000 -e unsigned -b 8 -c 2 filename6.raw outputfile6.wav

sox -r 2048000 -e unsigned -b 8 -c 2 filename7.raw outputfile7.wav

sox -r 2048000 -e unsigned -b 8 -c 2 filename8.raw outputfile8.wav
