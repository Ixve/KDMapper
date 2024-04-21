echo off
cls
echo Calling VCVars64^.bat
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
echo Building using cl^.exe
cl.exe /EHsc /GS- /std:c++17 intel_driver.cpp kdmapper.cpp main.cpp portable_executable.cpp service.cpp utils.cpp /link /SAFESEH:NO kernel32.lib user32.lib ntdll.lib Advapi32.lib Shlwapi.lib
pause