set path=%CD%\jre1.8.0_191\bin;%path%;

REM java -cp dtc-0.0.1-SNAPSHOT.jar;lib/*;. org.springframework.boot.loader.JarLauncher
REM Change the -Xms1G -Xmx2G as per system config (currently 1gb to 2gb max)

java -Xms1G -Xmx2G  -Dspring.config.location=./config/application.properties -cp dtc-0.0.1-SNAPSHOT.jar;lib/*;. -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n org.springframework.boot.loader.JarLauncher


