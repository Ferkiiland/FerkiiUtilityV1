@echo off
Reg.exe ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f 
color 6
mode 145,30
reg add HKLM /F 
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b

setlocal EnableDelayedExpansion



REM Blank/Color Character
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")

REM Add ANSI escape sequences
reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f 

  
  
:warning   
cls                           
echo.
echo.
echo.
echo.                                                                  ATENCION/LEER!
echo.                       "============================================================================================="
echo.                          No me hago responsable de si no has hecho una copia de seguridad en tu pc!
echo.                          Puedo saber quien redistribuye este pack de modificaciones
echo.                          Si necesitas ayuda, tienes una seccion de ayuda prioritaria en el discord
echo.                          Escribe los numeros/letras para seleccionar las opciones.
echo.                          LEE TODAS AL ADVERTENCIAS, DESCRIPTIONES, VENTANAS EMERGENTES, ETC... 
echo.                       "============================================================================================="
echo.
echo.
echo.                                                      Presiona cualquier tecla para continuar...
pause >nul                                                           
cls        
goto:startmenu


:startmenu

cls
echo.
echo.
echo.
echo.                                                          OPTIMIZADOR DE PROCESOS BY FERKIITO!
echo.                    "============================================================================================================="        
echo.                           Nota: Si no puedes escribir ninguna letra verifica que no haya ninguna ventana emergente abierta 
echo.                    
echo.                       .########.########.########..##....##.####.####.########..#######..........########..########.##.....##
echo.                       .##.......##.......##.....##.##...##...##...##.....##....##.....##.........##.....##.##.......##.....##
echo.                       .##.......##.......##.....##.##..##....##...##.....##....##.....##.........##.....##.##.......##.....##
echo.                       .######...######...########..#####.....##...##.....##....##.....##.#######.##.....##.######...##.....##
echo.                       .##.......##.......##...##...##..##....##...##.....##....##.....##.........##.....##.##........##...##.
echo.                       .##.......##.......##....##..##...##...##...##.....##....##.....##.........##.....##.##.........##.##..
echo.                       .##.......########.##.....##.##....##.####.####....##.....#######..........########..########....###...                                                                                          
echo.                                                                                                                    
echo.                                                                                                                    
echo.                                               [1] Discord y Contactos      [2] Crear un punto de Restauracion 
echo.         
echo.                                             
echo.                                                 Escribe "X" y dale a enter para ir al menu de optimizacion
echo.                                                              
echo.                  "============================================================================================================="

powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('ASEGURATE DE CREAR UNA COPIA DE SEGURIDAD ANTES DE EJECUTAR ESTE SCRIPT | SI LO HAS OBTENIDO DE FUENTES NO OFICIALES ACTUA BAJO TU CUIDADO', 'Ferkii Process Utility', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"

set /p input=: 
if /i %input% == 1 goto Discord
if /i %input% == 2 goto restorepoint
if /i %input% == X cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:Discord
start https://discord.gg/esB2W2yJMZ

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 > nul
goto RedirectMenu


:RedirectMenu
cls
goto :real

:download
echo.
echo [-] Making folders in c: drive (its the "exm" folder)
echo.

md C:\Exm\Res
md C:\Exm\PowerPlan
md C:\Exm\Nvidia
md C:\Exm\Shortcuts
md C:\Exm\NvProfile

echo.
echo [-] descargando apps + recursos, SI ESTO NO FUNCIONA, CHECA LAS #INSTRUCTIONES EN NUESTRO SERVER!!!
echo.


powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1098692473649365052/Premium_Settings_V2.nip' -OutFile C:\Exm\NvProfile\Premium_Settings_V2.nip
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1098688771433713664/nvcplui.exe' -OutFile C:\Exm\Nvidia\nvcplui.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1098688771903471676/nvcpluir.dll' -OutFile C:\Exm\Nvidia\nvcpluir.dll
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1098686020536516652/Uninstall_Apps_You_Dont_Need.lnk' -OutFile C:\Exm\Shortcuts\Uninstall_Apps_You_Dont_Need.lnk
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1098685437586972753/FilterKeysSetter.exe' -OutFile C:\Exm\Res\FilterKeysSetter.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1099033552022147182/PowerPlan.pow' -OutFile C:\Exm\PowerPlan\ExmPremiumPowerPlan.pow 
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1092381059167031367/DeviceCleaner.exe' -OutFile C:\Exm\Res\DeviceCleaner.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1092385414318403735/NVCleanstall.exe' -OutFile C:\Exm\Res\NVCleanstall.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1092385385998462997/NvidiaProfileInspector.exe' -OutFile C:\Exm\Res\NvidiaProfileInspector.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1092399367903772682/Wub.exe' -OutFile C:\Exm\Res\Wub.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1092399335964168202/MSI_Utility_V3.exe' -OutFile C:\Exm\Res\MSI_Utility_V3.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/912730883625214025/1093522942513643611/Startup.exe' -OutFile C:\Exm\Res\Startup.exe


echo.
echo.                                                         Presiona cualquier para continuar...
pause >nul                                                                 
cls  
goto startmenu

:restorepoint
echo.
echo [-] Restore Point
echo.
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f
Reg.exe  add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f 
powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\', 'D:\', 'E:\', 'F:\', 'G:\' 
powershell -ExecutionPolicy Unrestricted -NoProfile Checkpoint-Computer -Description 'Exm Restore Point' 

echo.
echo.                                                         Presiona cualquier para continuar...
pause >nul                                                                 
cls  
goto startmenu
 
:menu
color 6
echo.
echo.                                      
echo.                 "==================================================================================================================="
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A 
:::                                                                                                                                                                                                                            	
echo.                "==================================================================================================================="								
echo.                                                          
echo.                                                       Version 1.0v Beta abierta Youtube Ferkii Tweaker
echo.                             
echo.                "==================================================================================================================="
echo.                                                                                
echo.                                                       Escribe un numero para seleccionar las opciones!
echo.
echo.                       .########.########.########..##....##.####.####.########..#######..........########..########.##.....##
echo.                       .##.......##.......##.....##.##...##...##...##.....##....##.....##.........##.....##.##.......##.....##
echo.                       .##.......##.......##.....##.##..##....##...##.....##....##.....##.........##.....##.##.......##.....##
echo.                       .######...######...########..#####.....##...##.....##....##.....##.#######.##.....##.######...##.....##
echo.                       .##.......##.......##...##...##..##....##...##.....##....##.....##.........##.....##.##........##...##.
echo.                       .##.......##.......##....##..##...##...##...##.....##....##.....##.........##.....##.##.........##.##..
echo.                       .##.......########.##.....##.##....##.####.####....##.....#######..........########..########....###...
echo.                                                                      
echo.                                                  [1] Optimizar Procesos                [2] Debloater   
echo.                         
echo.                                                                      
echo.                                                                     Creado por Ferkii 
echo.
echo.                 "===================================================================================================================" 
echo.
echo.
echo.
echo.
echo.
echo.
echo.

set /p input=:

if /i %input% == 1 goto svc
if /i %input% == 2 goto Debloat

ELSE 
echo Valor invalido & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 > nul
goto RedirectMenu


:RedirectMenu
cls
goto :menu

:svc
cls
echo.
echo.
echo.
echo.                                                      OPTIMIZADOR DE SVC HOST!
echo.                       "=================================================================================="      
echo.                                                                                                
echo.                                     Escoge tu cantidad de ram para realizar la optimizacion.
echo.                                    
echo.                                              [0] checar cantidad de ram a tiempo real
echo.                                                         
echo.                                                 [1] 2GB Ram           [2] 4GB Ram
echo.          
echo.                                                 [3] 8GB Ram           [4] 12GB Ram  
echo.
echo.                                                 [5] 16GB Ram          [6] 32GB Ram           
echo.
echo.                                                 [7] 64GB Ram          [8] Revertir  
echo.
echo.                                                           
echo.                                  Escoge la opcion referente a tu ram y dale enter para continuar
echo.
echo.                       "==================================================================================" 

set /p input=: 
if /i %input% == 0 goto check
if /i %input% == 1 goto 2GB
if /i %input% == 2 goto 4GB
if /i %input% == 3 goto 8GB
if /i %input% == 4 goto 12GB
if /i %input% == 5 goto 16GB
if /i %input% == 6 goto 32GB
if /i %input% == 7 goto 64GB
if /i %input% == 8 goto default
if /i %input% == X cls & goto menu

ELSE 
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 > nul
goto RedirectMenu


:RedirectMenu
cls
goto SvcHostMenu

:check
taskmgr
echo.
echo.
echo                                                        Presiona cualquier para continuar...     
pause >nul

goto :ram
:64Gb
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "1729136740" /f
echo.
echo Optimizacion de Registro aplicada
echo.
echo                                                        Presiona cualquier para continuar...     
pause >nul

goto :ram


:2GB

Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "34173266" /f
echo.
echo Optimizacion de Registro aplicada
echo.
echo                                                        Presiona cualquier para continuar...      
pause >nul
cls
goto :ram




:4GB
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "68764420" /f
echo.
echo Optimizacion de Registro aplicada
echo.
echo                                                        Presiona cualquier para continuar...      
pause >nul
cls
goto :ram



:8GB
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "137922056" /f
echo.
echo Optimizacion de Registro aplicada
echo.
echo                                                       Presiona cualquier para continuar...      
pause >nul
cls
goto :ram



:12GB
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "307767570" /f
echo.
echo Optimizacion de Registro aplicada
echo.
echo                                                       Presiona cualquier para continuar...     
pause >nul
cls
goto :ram



:16GB
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "376926742" /f
echo.
echo Optimizacion de Registro aplicada
echo.
echo                                                      Presiona cualquier para continuar...     
pause >nul
cls
goto :ram




:32GB
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "861226034" /f
echo.
echo Optimizacion de Registro aplicada
echo.
echo                                                      Presiona cualquier para continuar...      
pause >nul
cls
goto :ram



:default

Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "3670016" /f
echo.
echo Optimizacion de Registro aplicada
echo.
echo                                                      Presiona cualquier para continuar...    
pause >nul
cls
goto :ram


:reged
echo.
echo [-] Ajustes de captación previa y caché
echo.
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f

echo.
echo [-] Ajustar la gestión de la memoria
echo.

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolQuota" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolQuota" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "1024" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionViewSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemPages" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PhysicalAddressExtension" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolQuota" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "NonPagedPoolSize" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolQuota" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagedPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SecondLevelDataCache" /t REG_DWORD /d "1024" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionPoolSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SessionViewSize" /t REG_DWORD /d "192" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemPages" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PhysicalAddressExtension" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IoPageLockLimit" /t REG_DWORD /d "16710656" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PoolUsageMaximum" /t REG_DWORD /d "96" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_D


echo.
echo [-] Deshabilitar la compresión de memoria
echo.

POWERSHELL "Disable-MMAgent -MemoryCompression"
POWERSHELL Disable-MMAgent -MemoryCompression -ApplicationPreLaunch -ErrorAction SilentlyContinue 
echo.
echo Aplicamos todos los ajustes!!
echo.
echo                                                        Presiona cualquier para continuar...      
pause >nul
cls
goto :ram



:Debloat
powershell "iwr -useb https://git.io/debloat|iex"