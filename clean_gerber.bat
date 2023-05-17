set PROJECT="%1"
set COMPANY="_elecrow"
set OUTPUT="%PROJECT%%COMPANY%"

del /q "%PROJECT%"-*.gbr*
del /q "%PROJECT%"-*.drl

rmdir /s /q "%OUTPUT%"
