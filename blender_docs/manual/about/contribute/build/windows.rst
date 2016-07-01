
*************************************
Building the HTML Files on MS-Windows
*************************************


We are now ready to convert all those **rst** files into pretty **html**!

- Open a command prompt and change to the repository with ``cd C:\blender_docs``.
- Build using the following command

   .. code-block:: sh

      make

  This is the command you will always use when building the docs.
  The building process may take several minutes the first time (or after any major changes),
  but the next time you build it should only take a few seconds.

  .. note::

     If you encounter an error ending with ``TypeError: an integer is required (got type str)``,
     you may need to install an older version of *Babel* (the Python Internationalization Library).

     To do this, simply run:

     .. code-block:: sh

        pip install sphinx "babel<2.0"

- Once the docs have been built, all the HTML files can be found inside ``C:\blender_docs\build\html``.
  Try opening ``\build\html\contents.html`` in your web browser and read the manual.


------------------------

Continue with the next step: :doc:`Editing </about/contribute/editing>`

