@echo off

setlocal ENABLEEXTENSIONS

:argv_loop
if NOT "%1" == "" (

	REM Help Message
	if "%1" == "help" (
		echo.
		echo Documentation
		echo =============
		echo.
		echo - html
		echo.
		echo Checking
		echo ========
		echo.
		echo - check_syntax
REM		echo - check_structure
		goto EOF
	)

	REM Documentation
	if "%1" == "html" (
		sphinx-build -b html .\manual .\build\html
	) else if "%1" == "clean" (
		RMDIR/s/q build
	)
	goto EOF

	REM RST Checks
	) else if "%1" == "check_syntax" (
		python tools/rst_check_syntax.py --long > rst_check_syntax.log
		type rst_check_syntax.log
		DEL rst_check_syntax.log
	)
	goto EOF
REM	) else if "%1" == "check_structure" (
REM		python tools/rst_check_structure.py --image > rst_check_structure.log
REM		type rst_check_structure.log
REM		DEL rst_check_structure.log
REM		)
REM		goto EOF
	) else (
		echo Command "%1" unknown, aborting!
		goto EOF
	)

	shift /1
	goto argv_loop
)

:EOF
