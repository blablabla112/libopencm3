:: ############################################################################
::
:: COPYRIGHT:
::   Copyright (c) 2017   Panda.Xiong <yaxi1984@gmail.com>
::
::   This library is free software: you can redistribute it and/or modify
::   it under the terms of the GNU Lesser General Public License as published by
::   the Free Software Foundation, either version 3 of the License, or
::   (at your option) any later version.
::  
::   This library is distributed in the hope that it will be useful,
::   but WITHOUT ANY WARRANTY; without even the implied warranty of
::   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
::   GNU Lesser General Public License for more details.
::  
::   You should have received a copy of the GNU Lesser General Public License
::   along with this library.  If not, see <http://www.gnu.org/licenses/>.
::
::  DESCRIPTION:
::   Environment entrance for compiling.
::  HISTORY:
::   2019.05.30        Panda.Xiong          Create
::
:: ############################################################################

:: close command shell echo
@echo off

:: set project name
set PROJECT_NAME=libopencm3

:: set compiler base path
if "%COMPILER_BASE%" == "" (
  set COMPILER_BASE=D:\compiler
)

:: add base tools & project compiler search path
path %COMPILER_BASE%\msys\bin;%COMPILER_BASE%\MinGW\bin
path %COMPILER_BASE%\gcc-arm-none-eabi-4_9-2015q3-20150921-win32\bin;%PATH%
path %COMPILER_BASE%\python;%PATH%

:: set title & clear screen
title %PROJECT_NAME%
cls

:: display the supported commands.
echo.
echo   Available Commands :
echo  ******************************************************************************
echo   make       : Compile, for libopencm3.
echo   make clean : Clean,   for libopencm3.
echo  ******************************************************************************
echo.

:: keep current session
%windir%\system32\cmd /k

:: ============================================================================
