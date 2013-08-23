@echo off
color 01
title Server creator 1.6.2 only
:startofprog
echo Program started >> servercreationlog.txt
echo NOTE: THIS IS NOT A FULL CREATION...YOU WILL HAVE TO DO SOME THINGS YOURSELF
pause
:menu
echo Menu loaded >> servercreationlog.txt
cls
echo --------------------
echo        MENU 
echo --------------------
echo.
echo.
echo.
echo       1.Start
echo       2.Credits
echo       3.View log
echo       4.Select color
echo       5.Reset log
set /p menuchoice=Please enter your number:
if %menuchoice%==1 goto startprog
if %menuchoice%==2 goto credits
if %menuchoice%==3 goto log
if %menuchoice%==4 goto selectcolor
if %menuchoice%==5 goto resetlog
goto exit

:resetlog
echo Reseted log >> servercreationlog.txt
del servercreationlog.txt
echo Deleted
pause
goto startofprog

:selectcolor
echo Color selection selected >> servercreationlog.txt
cls
echo 1=dark blue 2=Dark green 3=Dark aqua 4=Dark Red 5=Dark Purple 6=Dark Yellow 7=White 8=Gray 9=Green 10=Aqua 11=Red 12=Purple 13=Yellow 14=Bright white
pause
echo Please input one of the numbers to change the color! Any thing inputed that isnt a number will not do anything   
set /p "cho=>"
if %cho%==1 color 01
if %cho%==2 color 02
if %cho%==3 color 03
if %cho%==4 color 04
if %cho%==5 color 05
if %cho%==6 color 06
if %cho%==7 color 07
if %cho%==8 color 08
if %cho%==9 color 0a
if %cho%==10 color 0b
if %cho%==11 color 0c
if %cho%==12 color 0d
if %cho%==13 color 0e
if %cho%==14 color 0f
pause
goto menu

:credits
echo Credits loaded >> servercreationlog.txt
echo     CREDITS
pause
cls
echo     LUCARGIA
pause
goto menu
:log
echo Open log selected in menu >> servercreationlog.txt
start servercreationlog.txt
pause
goto menu



:startprog
echo Please enter your desired amount of space used for the server:
set /p spaceserv=
pause
echo Your server starter is now being created...
echo java -Xms%spaceserv%M -Xms%spaceserv%M -jar craftbukkit.jar -o true >> Start.bat
echo pause >> Start.bat

echo Created
echo Created server starter >> servercreationlog.txt
pause
echo Would you like to create with defaults or customize the files? Cus/Def
set /p continuecusom=
if %continuecusom%==Cus goto morecus2
if %continuecusom%==Def goto ghta
goto exit

:morecus2
echo WARNING: when it says true/false do not put a capital at the start!
pause
echo Allow nether? True/False:
set /p nethera=
pause
echo Allow flight? True/False:
set /p af=
pause
echo Server port? (25565=no port):
set /p sepor=
pause
echo Force gamemode? True/False:
set /p fogam=
pause
echo Level seed:
set /p ls=
pause
echo Max build height:
set /p mab=
pause
echo Spawn npcs? True/False:
set /p snp=
pause
echo Whitelist? True/False:
set /p white=
pause
echo Spawn animals? True/False:
set /p sanim=
pause
echo Hardcore? True/False:
set /p hardc=
pause
echo Snooper?
set /p snoope=
pause
echo Pvp? True/False:
set /p pvp=
pause
echo Difficulty? 1=peaceful 2=easy 3=normal etc etc:
set /p dif=
pause
echo Command blocks? True/False:
set /p ecom=
pause
echo Gamemode? 1= creative 0=survival 3=adventure:
set /p gamemodese=
pause
echo Max players?:
set /p mps=
pause
echo Spawn monsters? True/False:
set /p sms=
pause
echo Generate structures? True/False
set /p gss=
pause
echo View distance? (Default: 10):
set /p vds=
pause
echo Spawn protection:
set /p spse=
pause
echo Motd? (Colors not supported):
set /p motds=
pause
echo Add a custom pre made spawn world (if not wanted put "World" here)
set /p customworld
pause
echo Now creating (May cause lag)
echo generator-settings= >> server.properties
echo op-permission-level=4 >> server.properties
echo allow-nether=%nethera% >> server.properties
echo level-name=%customworld% >> server.properties
echo enable-query=false >> server.properties
echo allow-flight=%af% >> server.properties
echo server-port=%sepor% >> server.properties
echo level-type=DEFAULT >> server.properties
echo enable-rcon=false >> server.properties
echo force-gamemode=%fogam% >> server.properties
echo level-seed=%ls% >> server.properties
echo server-ip= >> server.properties
echo max-build-height=%mab%  >> server.properties
echo spawn-npcs=%snp% >> server.properties
echo white-list=%white% >> server.properties
echo spawn-animals=%sanim% >> server.properties
echo hardcore=%hardc% >> server.properties
echo snooper-enabled=%snoope% >> server.properties
echo texture-pack= >> server.properties 
echo online-mode=true >> server.properties 
echo server-id=unnamed >> server.properties 
echo pvp=%pvp% >> server.properties 
echo difficulty=%dif% >> server.properties 
echo enable-command-block=%ecom% >> server.properties 
echo gamemode=%gamemodese% >> server.properties 
echo max-players=%mps% >> server.properties 
echo spawn-monsters=%sms% >> server.properties 
echo generate-structures=%gss% >> server.properties 
echo view-distance=%vds% >> server.properties 
echo spawn-protection=%spse% >> server.properties 
echo motd=%motds% >> server.properties 
echo Created
echo Finshed customization of file 1 >> servercreationlog.txt
pause
:ghta
echo Download this first and then rename to "craftbukkit.jar"
start  http://dl.bukkit.org/downloads/craftbukkit/get/02253_1.6.2-R0.1/craftbukkit-beta.jar
echo Downloaded craftbukkit >> servercreationlog.txt
pause
echo Now sit tight and watch
start Start.bat
echo Created files >> servercreationlog.txt
echo Continue customization or ignore? Continue/Ignore
set /p ccors=
if %ccors%==continue goto morecusghda
if %ccors%==ignore goto noignore
goto exit
:noignore
pause
start Start.bat
echo You now have a working (non portfortforwarded) Server!
echo Do to the whole port forwarding thing not being able to be done by programs....
echo If you want to do it you must do it yourself, Sorry!
pause
echo Created server with no extra customization >> servercreationlog.txt
goto exit
:morecusghda
echo More customization started >> servercreationlog.txt
echo (Only one name can be added in this if you would like to add more well then open it and add it)
echo Please enter the names you want to whitelist if you selected true if not leave blank:
set /p whitelistadd=
pause
echo %whitelistadd% >> white-list.txt
pause
echo Added custom whitelisted players >> servercreationlog.txt
echo Now the same with the banned members:
set /p banlistadd=
pause
echo %banlistadd% >> banned-players.txt
pause
echo Added custom banned players >> servercreationlog.txt
echo Now the same with the banned ips:
set /p banlistipadd=
pause
echo %banlistipadd% >> banned-ips.txt
echo Added custom banned ips >> servercreationlog.txt
pause
echo Now the same with the oped members:
set /p opsadd=
pause
echo Added custom ops >> servercreationlog.txt
echo %opsadd% >> ops.txt
pause
echo Allow end? True/False:
set /p aends=
pause
echo Warn on overload? True/False:
set /p woos=
pause
echo Shutdown message? Example: Server closed:
set /p sdms=
pause
echo Spawn limit for monsters:
set /p slfms=
pause
echo Spawn limit for animals:
set /p slfas=
pause
echo Spawn limit for water animals:
set /p slfwas=
pause
echo Spawn limit for ambient:
set /p slfas2
pause
echo Now adding custom options
echo settings: >> bukkit.yml
echo allow-end: %aends% >> bukkit.yml
echo warn-on-overload: %woos% >> bukkit.yml
echo permissions-file: permissions.yml >> bukkit.yml
echo update-folder: update >> bukkit.yml
echo ping-packet-limit: 100 >> bukkit.yml
echo use-exact-login-location: false >> bukkit.yml
echo plugin-profiling: false >> bukkit.yml
echo connection-throttle: 4000 >> bukkit.yml
echo query-plugins: true >> bukkit.yml
echo deprecated-verbose: default >> bukkit.yml
echo shutdown-message: %sdms% >> bukkit.yml
echo spawn-limits: >> bukkit.yml
echo monsters: %slfms% >> bukkit.yml
echo animals: %slfas% >> bukkit.yml
echo water-animals: %slfwas% >> bukkit.yml
echo ambient: %slfwas% >> bukkit.yml
echo chunk-gc: >> bukkit.yml
echo period-in-ticks: 600 >> bukkit.yml
echo load-threshold: 0 >> bukkit.yml
echo ticks-per: >> bukkit.yml
echo animal-spawns: 400 >> bukkit.yml
echo monster-spawns: 1 >> bukkit.yml
echo autosave: 0 >> bukkit.yml
echo auto-updater: >> bukkit.yml
echo enabled: true >> bukkit.yml
echo on-broken: >> bukkit.yml
echo - warn-console >> bukkit.yml
echo - warn-ops >> bukkit.yml
echo on-update: >> bukkit.yml
echo - warn-console >> bukkit.yml
echo - warn-ops >> bukkit.yml
echo preferred-channel: rb >> bukkit.yml
echo host: dl.bukkit.org >> bukkit.yml
echo suggest-channels: true >> bukkit.yml
echo database: >> bukkit.yml
echo username: bukkit >> bukkit.yml
echo isolation: SERIALIZABLE >> bukkit.yml
echo driver: org.sqlite.JDBC >> bukkit.yml
echo password: walrus >> bukkit.yml
echo url: jdbc:sqlite:{DIR}{NAME}.db >> bukkit.yml
echo Created
echo Created customized bukkit.yml >> servercreationlog.txt
pause
echo This is the current end state of the server creator 1.0 it will get update to support the next update when a new one comes out
echo Here is the log recorded for your intire use of this
pause
start servercreationlog.txt
echo Thank you for using this program hope you enjoy!
echo Time used to make this: 20 hours
echo Coded 100% by hand
pause
goto exit






:exit
echo Program closed >> servercreationlog.txt
exit
