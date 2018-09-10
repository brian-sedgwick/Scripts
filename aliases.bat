@echo off
::
::	Load this file in C:\src\Scripts\aliases.bat in order for everthing to work correctly.
::  using regedit, add the following registry key:
::  [HKEY_CURRENT_USER\Software\Microsoft\Command Processor]
::  "AutoRun"="%USERPROFILE%\\Dropbox\\dev\\misc\\env.cmd
::

:: Temporary system path at cmd startup
:: sublime_text
set PATH=%PATH%;"C:\Program Files\Sublime Text 3\"
:: msbuild
set PATH=%PATH%;"C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\MSBuild\15.0\Bin\amd64"

:: Commands

DOSKEY ls=dir /B
DOSKEY sublime=sublime_text $*  
    ::sublime_text.exe is name of the executable. By adding a temporary entry to system path, we don't have to write the whole directory anymore.
DOSKEY alias=sublime_text "C:\src\Scripts\aliases.bat"
DOSKEY load="C:\src\Scripts\aliases.bat"
DOSKEY rm=del $*

:: Common directories

DOSKEY home=cd "C:\Users\Brian"
DOSKEY hoem=cd "C:\Users\Brian"
DOSKEY aliashome=cd "C:\src\Scripts"
DOSKEY repos=cd "C:\Users\Brian\Source\Repos"
DOSKEY workspaces=cd "C:\Users\Brian\Source\Workspaces"

:: Make things tidy to start the session

DOSKEY clear=cls
cd "C:\Users\Brian"
cls