@echo off
rem Decompile one Dark Souls AI lua file (Lua 5.0 bytecode) back to source.
rem Usage: decompile.cmd <input.lua> -o <output.lua>
setlocal
set DOTNET_ROLL_FORWARD=LatestMajor
"%~dp0DSLuaDecompiler/DSLuaDecompiler.exe" %*
