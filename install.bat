@echo off
start cmd /k "git clone https://github.com/gen1337/dobrograd-true repo && xcopy /h /e /q repo && rd /s /q repo && git submodule update --init && cd octolib && npm i && npm run setup"
