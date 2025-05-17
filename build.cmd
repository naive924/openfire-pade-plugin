call mvn clean package -Dmaven.test.skip=true

cd target
rename pade-openfire-plugin-assembly.jar pade.jar
rd "C:\dev\openfire_4_9_2\plugins\pade" /q /s
del "C:\dev\openfire_4_9_2\plugins\pade.jar" 
copy pade.jar C:\dev\openfire_4_9_2\plugins\pade.jar

cd ..
