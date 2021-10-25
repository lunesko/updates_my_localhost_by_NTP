@ECHO OFF
echo Getting Started with the Windows Script "NTP.cmd" %DATE% в %TIME%

echo ////////////////////////////////////////////////////////
echo Display the real system time
time /t
echo ///////////////////////////////////////////////////////
echo Displaying the accuracy of the system time of the local machine relative to ntp.time.in.ua. 
 w32tm /monitor /computers:ntp.time.in.ua
 echo //////////////////////////////////////////////////////
 echo Synchronization of the system time of the local machine by NTP from ntp.time.in.ua. 
w32tm /config /syncfromflags:manual /manualpeerlist:ntp.time.in.ua
timeout 10
echo //////////////////////////////////////////////////////
echo Checking the accuracy of the system time of the local machine relative to the ntp.time.in.ua server.
 w32tm /stripchart /computer:ntp.time.in.ua /samples:3 /dataonly
 w32tm /monitor /computers:ntp.time.in.ua
 pause