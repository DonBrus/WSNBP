"%~1\bin\ielftool.exe" "%~2.out" "%~2.bin" --bin --silent
"%~1\bin\ielftool.exe" "%~2.out" "%~2.srec" --srec --fill 0x00;0x400000-0x401FFF 