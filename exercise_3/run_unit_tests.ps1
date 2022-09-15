# Go to root folder
Push-Location $PSScriptRoot

gprbuild -p && .\bin\test_main.exe

# return to original location
Pop-Location