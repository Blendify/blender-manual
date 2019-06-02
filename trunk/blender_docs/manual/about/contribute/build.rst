.. highlight:: sh

*****
Build
*****

The building process may take several minutes the first time (or after any major changes),
but the next time you build it should only take a few seconds.
The building process is different for each operating system, instructions have been written for:

.. tabs::

   .. group-tab:: Windows

      #. Open a command prompt and change to the repository with ``cd C:\blender_docs``.
      #. Build using the following command::

            make html

      .. note::

         If you encounter an error ending with ``TypeError: an integer is required (got type str)``,
         you may need to install an older version of *Babel* (the Python Internationalization Library).

         To do this, simply run::

            pip install sphinx "babel<2.0"


      .. rubric:: Viewing the Local Manual

      Once the docs have been built, all the HTML files can be found inside ``C:\blender_docs\build\html``.
      Try opening ``\build\html\index.html`` in your web browser and read the manual.

   .. group-tab:: Mac OSX

      To build the docs, open a terminal to the folder ``~/blender_docs`` and simply run::

         make html

      .. rubric:: Viewing the Local Manual

      Once the docs have been built, all the HTML files can be found inside ``~/blender_docs/build/html``.
      Try opening ``build/html/index.html`` in your web browser and read the manual::

         open build/html/index.html

      ..rubric:: Building a Single Chapter

      If you are working on a specific chapter of the manual, you can build it quickly using::

         make <chapter name>

      For example, to build only the documentation for the modifiers, use ``make modifiers``.
      You can then view this quick build by opening ``build/html/contents_quicky.html``.

      This will build very quickly, but it will mean your next complete build of all the chapters will be slow.

   .. group-tab:: Linux

      To build the docs, open a terminal to the folder ``~/blender_docs`` and simply run::

         make html

      .. rubric:: Viewing the Local Manual

      Once the docs have been built, all the HTML files can be found inside ``~/blender_docs/build/html``.
      Try opening ``build/html/index.html`` in your web browser and read the manual::

         xdg-open build/html/index.html

      ..rubric:: Building a Single Chapter

      If you are working on a specific chapter of the manual, you can build it quickly using::

         make <chapter name>

      For example, to build only the documentation for the modifiers, use ``make modifiers``.
      You can then view this quick build by opening ``build/html/contents_quicky.html``.

      This will build very quickly, but it will mean your next complete build of all the chapters will be slow.
