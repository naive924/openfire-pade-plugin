rmdir /s /q pade\classes\docs
rmdir /s /q pade\classes\jigasi
rmdir /s /q pade\classes\private
rmdir /s /q pade\classes\well-known


call mvn clean package -Dmaven.test.skip=true

copy pade\target\pade.jar C:\openfire_4_6_0\plugins\pade.jar

taskkill /F /im java.exe
rmdir /s /q C:\openfire_4_6_0\plugins\pade


taskkill /F /im turn-server-log.exe & taskkill /F /im cam-videoserver.exe & taskkill /F /im java.exe & C:\openfire_4_6_0\bin\openfire.bat

git checkout pade/
@REM taskkill /F /im java.exe 
pause