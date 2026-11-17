@echo off
set PYTHON="%LOCALAPPDATA%\Programs\Python\Python312-embed\python.exe"

echo ========================================================
echo        SECURE CODE GAME - AUTOMATED LOCAL TEST RUNNER
echo ========================================================
echo.

echo --- Season 1 - Level 1: Cyber Monday ---
cd "Season-1\Level-1"
%PYTHON% -c "import sys, os; sys.path.insert(0, os.getcwd()); import tests; tests.unittest.main(module=tests)"
%PYTHON% -c "import sys, os; sys.path.insert(0, os.getcwd()); import hack; hack.unittest.main(module=hack)"
cd ..\..

echo.
echo --- Season 1 - Level 3: Social Network ---
cd "Season-1\Level-3"
%PYTHON% -c "import sys, os; sys.path.insert(0, os.getcwd()); import tests; tests.unittest.main(module=tests)"
%PYTHON% -c "import sys, os; sys.path.insert(0, os.getcwd()); import hack; hack.unittest.main(module=hack)"
cd ..\..

echo.
echo --- Season 1 - Level 4: Data Bank ---
cd "Season-1\Level-4"
if exist level-4.db del level-4.db
%PYTHON% -c "import sys, os; sys.path.insert(0, os.getcwd()); import tests; tests.unittest.main(module=tests)"
%PYTHON% -c "import sys, os; sys.path.insert(0, os.getcwd()); import hack; hack.unittest.main(module=hack)"
if exist level-4.db del level-4.db
cd ..\..

echo.
echo --- Season 1 - Level 5: Locanda ---
cd "Season-1\Level-5"
%PYTHON% -c "import sys, os; sys.path.insert(0, os.getcwd()); import tests; tests.unittest.main(module=tests)"
cd ..\..

echo.
echo --- Season 2 - Level 4: Space-Crossing ---
cd "Season-2\Level-4"
%PYTHON% -c "import sys, os; sys.path.insert(0, os.getcwd()); import tests; tests.unittest.main(module=tests)"
cd ..\..

echo.
echo ========================================================
echo                   ALL TESTS FINISHED!
echo ========================================================
pause
