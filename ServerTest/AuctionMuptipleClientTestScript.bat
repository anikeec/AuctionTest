@echo off

set AMOUNT_OF_CLIENTS=5

set TEST_PATH=%cd%

set BAT_FILE_NAME=AuctionClientSingleRun.bat
set BAT_FILE_CONTENT=start java -jar AuctionClient-1.0-jar-with-dependencies.jar

set SRC_JAR_FILE_PATH=d:\Projects_java\AuctionClient\target\AuctionClient-1.0-jar-with-dependencies.jar
set RESULT_JAR_FILE_NAME=AuctionClient-1.0-jar-with-dependencies.jar

set LOG_FILE_NAME=AuctionClient.log


FOR /L %%B IN (1,1,%AMOUNT_OF_CLIENTS%) DO (

if not exist %TEST_PATH%\%%B mkdir %TEST_PATH%\%%B

cd %TEST_PATH%\%%B

del %LOG_FILE_NAME%
del %BAT_FILE_NAME%
del %RESULT_JAR_FILE_NAME%

echo %BAT_FILE_CONTENT% %%B 1 > %BAT_FILE_NAME%
copy %SRC_JAR_FILE_PATH%  %RESULT_JAR_FILE_NAME% /Y

call %BAT_FILE_NAME%

)


