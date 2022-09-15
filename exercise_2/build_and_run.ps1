# Go to root folder
Push-Location $PSScriptRoot

gprbuild -p && bin/main.exe

# return to original location
Pop-Location