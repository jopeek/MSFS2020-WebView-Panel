"%MSFS_SDK%\Tools\bin\fspackagetool.exe" "panel-simaware\Build\panel-simaware.xml" -nomirroring
copy /Y "panel-simaware\Build\Packages\panel-simaware\Build\panel-simaware.spb" "panel-simaware\InGamePanels"
RMDIR "Build\*.*" /S /Q
TIMEOUT /T 3
xcopy /e /v "panel-simaware" "Build\panel-simaware\" /y /s
TIMEOUT /T 3
RMDIR "Build\panel-simaware\Build" /S /Q
