:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
echo ----------Development-NodeJS_Modules----------
call del /q /s D:\_\*.*
call ..\Development-Tool-CompressJS\js--deleteEmptyFolder.bat

E:
cd E:\GitHub_Mobilian\Development-Tool-CompressJS

mkdir D:\_\b2link\
call xcopy /e /h /k /y ..\Development-NodeJS_Modules\js\b2link\*.* D:\_\b2link\
mkdir D:\_\b2link_service\
call xcopy /e /h /k /y ..\Development-NodeJS_Modules\js\b2link_service\*.* D:\_\b2link_service\
mkdir D:\_\mongodb\
call xcopy /e /h /k /y ..\Development-NodeJS_Modules\js\mongodb\*.* D:\_\mongodb\
call del D:\_\*.js
call ..\Development-Tool-CompressJS\del-debug_min_original__root.bat
call ..\Development-Tool-CompressJS\js--deleteEmptyFolder.bat

E:
cd E:\GitHub_Mobilian\Development-Tool-CompressJS
call CompressJS_Directory__SaveFile__AllMerge_DelLog_LineDel.bat
cd E:\GitHub_Mobilian\Development-Tool-CompressJS-LogicScript



:: 날짜 문자열을 년월일로 분해
set Y=%date:~0,4%
set M=%date:~5,2%
set D=%date:~8,2%

:: 시간 문자열을 시분초로 분리
set HO=%time:~0,2%
set MI=%time:~3,2%

set NM_DIR=%Y%%M%%D%_%HO%%MI%
set Y=
set M=
set D=
set HO=
set MI=


mkdir E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\%NM_DIR%
copy /Y D:\_\___merge_debug_all_0.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\%NM_DIR%\___merge_debug_all_0.js
copy /Y D:\_\___merge_debug_all_1.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\%NM_DIR%\___merge_debug_all_1.js
copy /Y D:\_\___merge_min_all_0.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\%NM_DIR%\___merge_min_all_0.js
copy /Y D:\_\___merge_min_all_1.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\%NM_DIR%\___merge_min_all_1.js
copy /Y D:\_\___merge_min_all_1_0.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\%NM_DIR%\___merge_min_all_1_0.js
set NM_DIR=


copy /Y D:\_\___merge_debug_all_0.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\___merge_debug_all_0.js
copy /Y D:\_\___merge_debug_all_1.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\___merge_debug_all_1.js
copy /Y D:\_\___merge_min_all_0.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\___merge_min_all_0.js
copy /Y D:\_\___merge_min_all_1.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\___merge_min_all_1.js
copy /Y D:\_\___merge_min_all_1_0.js E:\GitHub_Mobilian\Development-NodeJS_Modules\js__Merge\___merge_min_all_1_0.js
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------

cmd /k
