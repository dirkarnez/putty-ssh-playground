@echo off
set PATH=%USERPROFILE%\Downloads\putty
plink -i xxx.ppk -no-antispoof -ssh ubuntu@xxxxxxxxxxxx.compute.amazonaws.com 'rm -rf ./public/*'
pscp -i xxx.ppk -r "./dist/" ubuntu@xxxxxxxxxxxx.compute.amazonaws.com:/home/ubuntu/public/
pause
