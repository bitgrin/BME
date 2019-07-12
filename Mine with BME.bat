@echo off
COLOR 02

IF EXIST "Parameters.txt" (
	

echo             /@@@@@@@@@@@@@@@@^&/.                       
echo             /@@@@@@@@@@@@@@@@@@@@@@@@*                 
echo             /@@@@@@@@@@@@@@@@@@@@@@@@@@@.              
echo             /@@@@@@.            ^&@@@@@@@@@             
echo             /@@@@@@.               @@@@@@@@            
echo             /@@@@@@.                ^%@@@@@@@           
echo             /@@@@@@.                 @@@@@@@           
echo             /@@@@@@.                 @@@@@@@           
echo             /@@@@@@.                 @@@@@@@           
echo             /@@@@@@.                ^%@@@@@@*           
echo             /@@@@@@.               @@@@@@@(            
echo             /@@@@@@.            (@@@@@@@@              
echo             /@@@@@@@@@@@@@@@@@@@@@@@@@(                
echo             /@@@@@@@@@@@@@@@@@@@@@@@^&                 
echo             /@@@@@@@@@@@@@@@@@@@@@@@@@@@@              
echo             /@@@@@@.             /@@@@@@@@@(           
echo             /@@@@@@.                .@@@@@@@@          
echo             /@@@@@@.                  #@@@@@@@         
echo                                        ^&@@@@@@@        
echo                                         @@@@@@@        
echo                                         @@@@@@@        
echo             /@@@@@@@@@@@@@.            *@@@@@@@        
echo             /@@@@@@@@@@@@@.            @@@@@@@^%        
echo             /@@@@@@.                 .@@@@@@@@         
echo             /@@@@@@                @@@@@@@@^%          
echo             /@@@@@@^%/......../^&@@@@@@@@@@@@            
echo             /@@@@@@@@@@@@@@@@@@@@@@@@@@@#              
echo             /@@@@@@@@@@@@@@@@@@@@@@@(                  
echo              ...............  


         



timeout /t 2 >nul
echo Welcome back to BME
timeout /t 1 >nul
echo ...........
GOTO start





)
   
) ELSE (
echo             /@@@@@@@@@@@@@@@@^&/.                       
echo             /@@@@@@@@@@@@@@@@@@@@@@@@*                 
echo             /@@@@@@@@@@@@@@@@@@@@@@@@@@@.              
echo             /@@@@@@.            ^&@@@@@@@@@             
echo             /@@@@@@.               @@@@@@@@            
echo             /@@@@@@.                ^%@@@@@@@           
echo             /@@@@@@.                 @@@@@@@           
echo             /@@@@@@.                 @@@@@@@           
echo             /@@@@@@.                 @@@@@@@           
echo             /@@@@@@.                ^%@@@@@@*           
echo             /@@@@@@.               @@@@@@@(            
echo             /@@@@@@.            (@@@@@@@@              
echo             /@@@@@@@@@@@@@@@@@@@@@@@@@(                
echo             /@@@@@@@@@@@@@@@@@@@@@@@^&                 
echo             /@@@@@@@@@@@@@@@@@@@@@@@@@@@@              
echo             /@@@@@@.             /@@@@@@@@@(           
echo             /@@@@@@.                .@@@@@@@@          
echo             /@@@@@@.                  #@@@@@@@         
echo                                        ^&@@@@@@@        
echo                                         @@@@@@@        
echo                                         @@@@@@@        
echo             /@@@@@@@@@@@@@.            *@@@@@@@        
echo             /@@@@@@@@@@@@@.            @@@@@@@^%        
echo             /@@@@@@.                 .@@@@@@@@         
echo             /@@@@@@                @@@@@@@@^%          
echo             /@@@@@@^%/......../^&@@@@@@@@@@@@            
echo             /@@@@@@@@@@@@@@@@@@@@@@@@@@@#              
echo             /@@@@@@@@@@@@@@@@@@@@@@@(                  
echo              ...............  


         



timeout /t 2 >nul
echo Welcome to BME
timeout /t 1 >nul
echo BME is a Bitgrin miner based on Gminer
timeout /t 1 >nul
echo This program will set everything up so you can mine in the next 10seconds
timeout /t 2 >nul
echo First pick your password
timeout /t 1 >nul
set /p password="Password: "
set user=BME_Miner_%random%%random%
echo Contacting pool to register...
@ curl/bin/curl.exe curl -X POST -d "username=%user%&password=%password%" https://api.pool.bitgrin.io/pool/users -s 
echo Pool registration complete
timeout /t 1 >nul
(
echo Your login credentials to pool.bitgrin.io
echo Username :
echo %user%
echo Password :
echo %password%
)>Credentials.txt
echo Generated username for pool.bitgrin.io - %user%
timeout /t 2 >nul
echo Username and password is now backed up in Credentials.txt
timeout /t 2 >nul

(
echo # This is a automatically generated config
echo # Feel free to modify this file.
echo # Likely nothing will blow up

echo [common]
echo algo=cuckaroo29
echo pers=Bitgrin
echo #devices=0 1 2 3
echo templimit=85
echo color=1 ; enable color output
echo watchdog=1
echo pec=1 ; enable power efficiency calculator
echo api=10555 ; enable API, to view statistics navigate to http://localhost:10555 in your browser
echo logfile=log.log

echo # Main pool
echo [server]
echo host=stratum.pool.bitgrin.io
echo port=3333
echo user=%user%
echo pass=%password%

echo # Failover pool, you can specify unlimited number of failover pools
echo [server]
echo host=stratum.pool.bitgrin.io
echo port=4444
echo user=%user%
echo pass=%password%
) > Parameters.txt
echo Config generated and written to Parameters.txt
echo              ...............  
GOTO start
)




                     
pause >nul                                                                  
                                                                                                                                                                                                                          
:start

echo Type start to begin mining
timeout /t 1 >nul
set /p start="Bitgrin Miner: "
if %start%==start miner.exe --config Parameters.txt
if %start%==Start miner.exe --config Parameters.txt
if %start%==START miner.exe --config Parameters.txt 
echo You have to type start to begin mining
set /p start="Bitgrin Miner: "
if %start%==start miner.exe --config Parameters.txt
if %start%==Start miner.exe --config Parameters.txt
if %start%==START miner.exe --config Parameters.txt 
echo Type in s-t-a-r-t and press enter
set /p start="Bitgrin Miner: "
if %start%==start miner.exe --config Parameters.txt
if %start%==Start miner.exe --config Parameters.txt
if %start%==START miner.exe --config Parameters.txt 
if %start%==s-t-a-r-t (
echo Very funny, starting miner 
miner.exe --config Parameters.txt
)
echo Seriosly tho, type start to begin mining
set /p start="Bitgrin Miner: "
if %start%==start miner.exe --config Parameters.txt
if %start%==Start miner.exe --config Parameters.txt
if %start%==START miner.exe --config Parameters.txt 

setlocal enabledelayedexpansion

set string=start

for /L %%a in (1, 1, 5) do (
set sting=!string:~0,%%a!
echo Here let me help you out
echo ^>!sting!
ping localhost -n 3 >nul
if %%a GEQ 5 goto run
cls 
)

:run
miner.exe --config Parameters.txt


   
                                                      
