@Echo Off
Setlocal EnableDelayedExpansion
Set _RNDLength=10
Set _Alphanumeric=ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnpqrstuvwxyz23456789*-?*-*-*?
Set _Str=%_Alphanumeric%98765432---
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~12%& SET /A _Len+=12& GOTO :_LenLoop
SET _tmp=%_Str:~12,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop
Echo Random string is 
Echo !_RndAlphaNum!
ECHO.
pause