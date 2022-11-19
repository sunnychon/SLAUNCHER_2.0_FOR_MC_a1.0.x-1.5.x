@echo off
del /q /f files\versions\*.*
copy versions files\versions 
cd files
set appdata=%cd%
title Slauncher V2.0
echo ¢e¢e¢e¢e¢e¢e¢e¢e¢e¢e¢e¢e¡@¡»¡»¡»¡@¡»
echo ¢e¢«¡@¢«¡@¢ª¢e¡@¡»¡@¡@¡@¡»
echo ¢e¡»¡@¡@¡@¡»¢e¡@¡»¡»¡»¡@¡»
echo ¢e¡@¡»¡@¡@¡@¢e¡@¡@¡@¡»¡@¡»
echo ¢e¡@¡@¡»¡@¡@¢e¡@¡»¡»¡»¡@¡»¡»¡»
echo ¢e¡»¡@¡@¡@¡@¢e
echo ¢e¢e¢e¢e¢e¢e¢e¢e¢e¢e¢e¢e
echo SLAUNCHER v1.0
cls
echo select minecraft FILENAME
dir %cd%\versions
set /p enterkey={ENTER}
set mcfn=%enterkey%
if %mcfn%==help goto help
if %mcfn%==HELP goto help
cls
echo USERNAME:
set /p enterkey={ENTER}
set mcusername=%enterkey%
cls
echo RAM SIZE: (cannot be lower than 200MB because you game will crash.)
set /p enterkey={ENTER}
set ramz=%enterkey%
cls
title Slauncher V2.0:launched minecraft
%cd%\JDK17\bin\java.exe -Xms%ramz% -Xmx%ramz% -Dsun.java2d.noddraw=true  -Dsun.awt.noerasebackground=true  -Dsun.java2d.d3d=false  -Dsun.java2d.opengl=false  -Dsun.java2d.pmoffscreen=false -classpath "lwjgl.jar;lwjgl_util.jar;jinput.jar;%cd%\versions\%mcfn%" net.minecraft.client.Minecraft %mcusername%
title Slauncher V2.0:exited 
goto exit
:help
::type the help file
cls
title viewing help file
cd versions
type HELP
pause
goto hexit
:exit
pause
:hexit
title  