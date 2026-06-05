# x64 Assembly 

A Intel-syntax x64 assembly program compiled with GCC on Windows.

## Files
* `calculator.s` - A simple program that adds two numbers stored in memory and prints the result.

## Compilation
To compile and run the assembly code using GCC (MinGW-w64) in PowerShell:

```powershell
gcc calculator.s -o calculator.exe
.\calculator.exe