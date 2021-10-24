@ECHO OFF
echo Начало Работы сценария Windows "NTP.cmd" %DATE% в %TIME%

echo ////////////////////////////////////////////////////////
echo Отображение текущего системного времени

time /t
echo ///////////////////////////////////////////////////////
echo Отображение точности системного времени локальной машины относительно ntp.time.in.ua. 
 
 w32tm /monitor /computers:ntp.time.in.ua
 echo //////////////////////////////////////////////////////
 echo Синхронизация системного времени локальной машины по NTP с ntp.time.in.ua. 

w32tm /config /syncfromflags:manual /manualpeerlist:ntp.time.in.ua
timeout 10
echo //////////////////////////////////////////////////////
echo Оценивание точности системного времени локальной машины относительно сервера ntp.time.in.ua. 
 
 w32tm /stripchart /computer:ntp.time.in.ua /samples:3 /dataonly
 w32tm /monitor /computers:ntp.time.in.ua
 pause