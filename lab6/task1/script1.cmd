chcp 1251 
systeminfo > systeminfo.txt
wmic diskdrive get model,serialNumber,size,mediaType >   wmic_diskdrive_get_model.txt
md test
set labdir=C:\Users\Alex\lab6\task1
xcopy %labdir% %labdir%\test
cd test 
dir /b > dir.txt
for %%i in (*.*) do if not "%%i"=="dir.txt" del "%%i"