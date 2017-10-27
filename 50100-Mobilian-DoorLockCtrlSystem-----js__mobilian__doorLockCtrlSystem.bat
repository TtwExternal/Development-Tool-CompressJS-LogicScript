:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
echo ----------Mobilian-DoorLockCtrlSystem----------
call del /q /s D:\_\*.*
call ..\Development-Tool-CompressJS\js--deleteEmptyFolder.bat

E:
cd E:\GitHub_Mobilian\Development-Tool-CompressJS
call xcopy /e /h /k /y ..\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\*.* D:\_\
call del D:\_\*.js
call ..\Development-Tool-CompressJS\del-debug_min_original__root.bat
call ..\Development-Tool-CompressJS\js--deleteEmptyFolder.bat

E:
cd E:\GitHub_Mobilian\Development-Tool-CompressJS
call CompressJS_Directory__SaveFile__AllMerge_DelLog_LineDel.bat
cd E:\GitHub_Mobilian\Development-Tool-CompressJS-LogicScript



:: 날짜 문자열을 년월일로 분해
:set Y=%date:~0,4%
:set M=%date:~5,2%
:set D=%date:~8,2%

:: 시간 문자열을 시분초로 분리
:set HO=%time:~0,2%
:set MI=%time:~3,2%

:set NM_DIR=%Y%%M%%D%_%HO%%MI%
:set Y=
:set M=
:set D=
:set HO=
:set MI=


:mkdir E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\%NM_DIR%
:copy /Y D:\_\___merge_debug_all_0.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\%NM_DIR%\___merge_debug_all_0.js
:copy /Y D:\_\___merge_debug_all_1.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\%NM_DIR%\___merge_debug_all_1.js
:copy /Y D:\_\___merge_min_all_0.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\%NM_DIR%\___merge_min_all_0.js
:copy /Y D:\_\___merge_min_all_1.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\%NM_DIR%\___merge_min_all_1.js
:copy /Y D:\_\___merge_min_all_1_0.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\%NM_DIR%\___merge_min_all_1_0.js
:set NM_DIR=


:copy /Y D:\_\___merge_debug_all_0.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\___merge_debug_all_0.js
:copy /Y D:\_\___merge_debug_all_1.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\___merge_debug_all_1.js
:copy /Y D:\_\___merge_min_all_0.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\___merge_min_all_0.js
:copy /Y D:\_\___merge_min_all_1.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\___merge_min_all_1.js
copy /Y D:\_\___merge_min_all_1_0.js E:\GitHub_Mobilian\Mobilian-DoorLockCtrlSystem\WebPage\root\js__mobilian__doorLockCtrlSystem\___merge_min_all_1_0.js

:copy /Y D:\_\___merge_min_all_1_0.js E:\GitHub_Mobilian\Development-Components-UI\WebPage\root\js__mobilian__doorLockCtrlSystem\___merge_min_all_1.js
:copy /Y D:\_\___merge_min_all_1_0.js E:\GitHub_Mobilian\Development-Components-UI\WebPage\root\js__mobilian__doorLockCtrlSystem\___merge_min_all_1_0.js
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------
:----------------------------------------------------------------------------------------------------

cmd /k
