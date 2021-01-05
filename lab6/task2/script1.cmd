set local=C:\Users\Alex\lab6\task2
echo %local%
echo %computername%
IF EXIST "%local%\temp" (
  rd /s "%local%\temp"
  ::don't create directory temp. this directory create avtomaticali!!!
  net share moya_zhopy /delete
)
md %local%\temp
net share moya_zhopy=%local%\temp /grant:Everyone,FULL /unlimited /remark:"oooo fuck, it is work!!!!" /cache:none
sleep 100