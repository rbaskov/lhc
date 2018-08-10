@Echo off

set "inkscapePath=C:\Program Files\Inkscape\inkscape.exe"
set /a count=0


:: Running through all files found with the defined ending
for %%i in (.\*.svg) do (
	set /a count=count+1
	echo %%i to %%~ni.pdf
	"%inkscapePath%" --without-gui --file="%%i" --export-pdf="%%~ni.pdf" --export-dpi=300
)
   
echo %count% file(s) converted from %sourceType% to %outputType%!
   
pause 
