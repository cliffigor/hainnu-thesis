Forfiles /p D:\Study\LaTeX /s /m *.aux /c "cmd /c del /q /f @path"
Forfiles /p D:\Study\LaTeX /s /m *.log /c "cmd /c del /q /f @path"
Forfiles /p D:\Study\LaTeX /s /m *.out /c "cmd /c del /q /f @path"
Forfiles /p D:\Study\LaTeX /s /m *.gz /c "cmd /c del /q /f @path"
Forfiles /p D:\Study\LaTeX /s /m *.toc /c "cmd /c del /q /f @path"
Forfiles /p D:\Study\LaTeX /s /m *.bbl /c "cmd /c del /q /f @path"
Forfiles /p D:\Study\LaTeX /s /m *.blg /c "cmd /c del /q /f @path"
Forfiles /p D:\Study\LaTeX /s /m *.synctex(busy) /c "cmd /c del /q /f @path"
pause