@echo off
cd /d "%~dp0"
echo 사진 변환과 홍보 문구 만들기를 시작합니다. 잠시만 기다려 주세요...
echo.
where py >nul 2>nul
if %errorlevel%==0 (
  py 사진변환.py
) else (
  "%LOCALAPPDATA%\Programs\Python\Python312\python.exe" 사진변환.py
)
echo.
echo 끝났습니다. 완성 폴더를 엽니다.
start "" "%~dp0완성"
timeout /t 5 >nul
