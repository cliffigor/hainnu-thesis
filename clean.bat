Forfiles /p .\ /s /m *.aux /c "cmd /c del /q /f @path"
Forfiles /p .\ /s /m *.log /c "cmd /c del /q /f @path"
Forfiles /p .\ /s /m *.out /c "cmd /c del /q /f @path"
Forfiles /p .\ /s /m *.gz /c "cmd /c del /q /f @path"
Forfiles /p .\ /s /m *.toc /c "cmd /c del /q /f @path"
Forfiles /p .\ /s /m *.bbl /c "cmd /c del /q /f @path"
Forfiles /p .\ /s /m *.blg /c "cmd /c del /q /f @path"
Forfiles /p .\ /s /m *.synctex(busy) /c "cmd /c del /q /f @path"
pause
