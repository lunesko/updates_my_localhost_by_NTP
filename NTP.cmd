@ECHO OFF
echo ��砫� ������ �業��� Windows "NTP.cmd" %DATE% � %TIME%

echo ////////////////////////////////////////////////////////
echo �⮡ࠦ���� ⥪�饣� ��⥬���� �६���

time /t
echo ///////////////////////////////////////////////////////
echo �⮡ࠦ���� �筮�� ��⥬���� �६��� �����쭮� ��設� �⭮�⥫쭮 ntp.time.in.ua. 
 
 w32tm /monitor /computers:ntp.time.in.ua
 echo //////////////////////////////////////////////////////
 echo ����஭����� ��⥬���� �६��� �����쭮� ��設� �� NTP � ntp.time.in.ua. 

w32tm /config /syncfromflags:manual /manualpeerlist:ntp.time.in.ua
timeout 10
echo //////////////////////////////////////////////////////
echo �業������ �筮�� ��⥬���� �६��� �����쭮� ��設� �⭮�⥫쭮 �ࢥ� ntp.time.in.ua. 
 
 w32tm /stripchart /computer:ntp.time.in.ua /samples:3 /dataonly
 w32tm /monitor /computers:ntp.time.in.ua
 pause