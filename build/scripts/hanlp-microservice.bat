@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  hanlp-microservice startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and HANLP_MICROSERVICE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\hanlp-microservice.jar;%APP_HOME%\lib\apollo-http-service-1.8.0.jar;%APP_HOME%\lib\apollo-okhttp-client-1.8.0.jar;%APP_HOME%\lib\apollo-jetty-http-server-1.8.0.jar;%APP_HOME%\lib\apollo-metrics-1.8.0.jar;%APP_HOME%\lib\apollo-extra-1.8.0.jar;%APP_HOME%\lib\apollo-environment-1.8.0.jar;%APP_HOME%\lib\apollo-core-1.8.0.jar;%APP_HOME%\lib\guice-multibindings-4.2.0.jar;%APP_HOME%\lib\guice-4.2.0.jar;%APP_HOME%\lib\apollo-api-impl-1.8.0.jar;%APP_HOME%\lib\apollo-route-1.8.0.jar;%APP_HOME%\lib\apollo-api-1.8.0.jar;%APP_HOME%\lib\semantic-metrics-ffwd-reporter-0.11.4.jar;%APP_HOME%\lib\semantic-metrics-ffwd-http-reporter-0.11.4.jar;%APP_HOME%\lib\semantic-metrics-core-0.11.4.jar;%APP_HOME%\lib\semantic-metrics-api-0.11.4.jar;%APP_HOME%\lib\guava-27.0-jre.jar;%APP_HOME%\lib\hanlp-portable-1.6.8.jar;%APP_HOME%\lib\failureaccess-1.0.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-2.5.2.jar;%APP_HOME%\lib\error_prone_annotations-2.2.0.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.17.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\metrics-jvm-3.0.2.jar;%APP_HOME%\lib\metrics-core-3.0.2.jar;%APP_HOME%\lib\ffwd-http-client-0.4.0.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\jopt-simple-4.9.jar;%APP_HOME%\lib\config-1.3.1.jar;%APP_HOME%\lib\auto-matter-jackson-0.15.0.jar;%APP_HOME%\lib\jackson-databind-2.6.1.jar;%APP_HOME%\lib\jackson-annotations-2.6.1.jar;%APP_HOME%\lib\okhttp-2.5.0.jar;%APP_HOME%\lib\jetty-server-9.3.4.v20151007.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\jackson-core-2.6.1.jar;%APP_HOME%\lib\okio-1.6.0.jar;%APP_HOME%\lib\auto-matter-annotation-0.15.0.jar;%APP_HOME%\lib\javax.servlet-api-3.1.0.jar;%APP_HOME%\lib\jetty-http-9.3.4.v20151007.jar;%APP_HOME%\lib\jetty-io-9.3.4.v20151007.jar;%APP_HOME%\lib\ffwd-client-0.0.3.jar;%APP_HOME%\lib\rut-1.0.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\jetty-util-9.3.4.v20151007.jar;%APP_HOME%\lib\annotations-2.0.0.jar;%APP_HOME%\lib\rxjava-1.3.3.jar

@rem Execute hanlp-microservice
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %HANLP_MICROSERVICE_OPTS%  -classpath "%CLASSPATH%" App %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable HANLP_MICROSERVICE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%HANLP_MICROSERVICE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
