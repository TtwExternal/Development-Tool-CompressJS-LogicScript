d:
cd _

del /s /q *.debug

del /s /q *.dev

del /s /q *.error

del /s /q *.html

del /s /q *.json

del /s /q *.min

del /s /q *.NUse

del /s /q *.original

del /s /q *.template

del /s /q *.ttwOriginal

del /s /q *.txt

del /s /q __list.json

del /s /q temp

for /f "usebackq delims=" %%d in (`"dir /ad/b/s | sort /R"`) do rd "%%d"