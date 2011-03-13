@echo off
cd %~dp0

if "%1"=="/r" (
    if exist build (rmdir /S /Q build)
)

if not exist build (mkdir build)
cd build

cls
cmake ../ -DTEST_APP=ON -DCMAKE_BUILD_TYPE=Debug && msbuild FakeInput.sln /p:Configuration=Release

cd ..

@echo on