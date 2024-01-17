@echo off

set ROM=ROM
set /a "PAD=1"

IF EXIST %ROM%.bin move /Y %ROM%.bin %ROM%_prev.bin >NUL
Utilities\Assembler\asm68k.exe /m /p Main.asm, %ROM%.bin, , _LISTINGS.lst>_ERROR.log
type _ERROR.log
if not exist %ROM%.bin pause & exit
echo.
if "%PAD%"=="1" Utilities\rompad.exe %ROM%.bin 255 0
Utilities\fixheadr.exe %ROM%.bin
"Config/Error/ConvSym.exe" _SYMBOLS.sym %ROM%.bin -input asm68k_sym -a
del _ERROR.log
del _SYMBOLS.sym
echo.
