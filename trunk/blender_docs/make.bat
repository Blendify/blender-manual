@ECHO OFF

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set BUILDDIR=build
set ALLSPHINXOPTS=-d %BUILDDIR%/doctrees %SPHINXOPTS% manual
set I18NSPHINXOPTS=%SPHINXOPTS% manual
if NOT "%PAPER%" == "" (
	set ALLSPHINXOPTS=-D latex_paper_size=%PAPER% %ALLSPHINXOPTS%
	set I18NSPHINXOPTS=-D latex_paper_size=%PAPER% %I18NSPHINXOPTS%
)

REM Default to HTML
if "%1" == "" (
	echo.No command given, defaulting to html.
	echo.
	goto html
)

if "%1" == "help" (
	:help
	echo.Please use `make ^<target^>` where ^<target^> is one of
	echo.
	echo.Documentation
	echo.=============
	echo.
	echo.  html             to make standalone HTML files
	echo.  singlehtml       to make a single large HTML file
	echo.  readme           to create readme.html
	echo.  pdf              to make LaTeX files, you can set PAPER=a4 or PAPER=letter
	echo.
	echo.Checking
	echo.========
	echo.  check_syntax     to check the syntax of all .rst files
	echo.  check_structure  to check the structure of all .rst files
	echo.  linkcheck        to check all external links for integrity
	goto EOF
)

if "%1" == "clean" (
	for /d %%i in (%BUILDDIR%\*) do rmdir /q /s %%i
	del /q /s %BUILDDIR%\*
	goto EOF
)


REM Check if sphinx-build is available and fallback to Python version if any
%SPHINXBUILD% 1>NUL 2>NUL
if errorlevel 9009 goto sphinx_python
goto sphinx_ok

:sphinx_python

set SPHINXBUILD=python -m sphinx.__init__
%SPHINXBUILD% 2> nul
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.http://sphinx-doc.org/
	exit /b 1
)

:sphinx_ok


if "%1" == "html" (
	:html
	%SPHINXBUILD% -b html %ALLSPHINXOPTS% %BUILDDIR%/html
	if errorlevel 1 exit /b 1
	echo.
	echo.Build finished. The HTML pages are in %BUILDDIR%/html.
	pause
	goto EOF
)

if "%1" == "singlehtml" (
	%SPHINXBUILD% -b singlehtml %ALLSPHINXOPTS% %BUILDDIR%/singlehtml
	if errorlevel 1 exit /b 1
	echo.
	echo.Build finished. The HTML pages are in %BUILDDIR%/singlehtml.
	goto EOF
)

if "%1" == "readme" (
	rst2html.py readme.rst > readme.html
	goto EOF
)

if "%1" == "pdf" (
	%SPHINXBUILD% -b latex %ALLSPHINXOPTS% %BUILDDIR%/latex
	cd %BUILDDIR%/latex
	make all-pdf
	cd %~dp0
	echo.
	echo.Build finished; the PDF files are in %BUILDDIR%/latex.
	goto EOF
)


if "%1" == "gettext" (
	%SPHINXBUILD% -b gettext %I18NSPHINXOPTS% %BUILDDIR%/locale
	if errorlevel 1 exit /b 1
	echo.
	echo.Build finished. The message catalogs are in %BUILDDIR%/locale.
	goto EOF
)

if "%1" == "linkcheck" (
    %SPHINXBUILD% -b linkcheck %ALLSPHINXOPTS% %BUILDDIR%/linkcheck
    if errorlevel 1 exit /b 1
    echo.
    echo.Link check complete; look for any errors in the above output ^
or in %BUILDDIR%/linkcheck/output.txt.
    goto end
)

if "%1" == "check_syntax" (
	python tools/rst_check_syntax.py --kbd --long > rst_check_syntax.log
	type rst_check_syntax.log
	DEL rst_check_syntax.log
	goto EOF
)

if "%1" == "check_structure" (
	python tools/rst_check_structure.py --image --locale > rst_check_structure.log
	type rst_check_structure.log
	DEL rst_check_structure.log
	goto EOF
)


:EOF
