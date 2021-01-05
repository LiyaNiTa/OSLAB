set local=C:\Users\Alex\lab6\task2
set /a hour=%time:~0,2%+0
set /a minute=%time:~3,2%+0
set /a minute=%minute%+1
echo OK
schtasks /create /SC once /TN my_copy /TR "C:\Windows\System32\xcopy.exe /Z %local%\m.txt \\%computername%\moya_zhopy" /ST %hour%:%minute%

echo OK


@:loop
@tasklist /FI "IMAGENAME eq my_copy" 2>NUL | find /I /N "my_copy">NUL
@if "%ERRORLEVEL%"=="0" goto :ParseError
@goto loop


:ParseError

echo ok
TASKKILL /IM xcopy
::fc %local%\m.txt \\%computername%\moya_zhopy > diff1.txt

xcopy /Z %local%\m.txt \\%computername%\moya_zhopy

::fc %local%\m.txt \\%computername%\moya_zhopy > diff2.txt
sleep 100