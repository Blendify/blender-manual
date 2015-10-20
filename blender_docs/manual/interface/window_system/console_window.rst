
..    TODO/Review: {{review|text=we need command line options for this page,
                     explained and some examples for rendering, opening Blender with debug flag,
                     and how to open Blender for screencasts/screenshots}} .


******************
The Console Window
******************

The *Console Window* is an operating system text window that displays messages about
Blender operations, status, and internal errors.


Use Cases:

- If Blender exits unexpectedly, the messages may indicate the cause or error.
- To see the output of Python scripts ``print()`` command.
- To launch with :doc:`/advanced/command_line` options.
- When troubleshooting, to see the output of ``--debug`` messages.

Platform Dependant Instructions
===============================

Linux
-----

.. figure:: /images/Interface-Window-System-console-linux.jpg
   :align: right
   :width: 360px

   Starting Blender from a Linux console window.


The Blender *Console Window* in Linux will typically only be visible on the desktop
if Blender is manually started from a terminal, as Blender outputs to the
*Console Window* it is started from.

Depending on your desktop environment setup, a Blender icon may appear on your desktop or an
entry for Blender added to your menu after you install Blender.
When you start Blender using a desktop icon or menu entry rather than a Terminal window, the
Blender *Console Window* text will most likely be hidden on the Terminal that your
`XWindows <http://en.wikipedia.org/wiki/Xwindows>`__ server was started from.

This screenshot shows Blender started from a Linux Terminal and the
resulting console text being printed to it.


Mac OSX
-------

.. figure:: /images/Interface-Window-System-console-mac.jpg
   :align: right
   :width: 360px

   Starting Blender from a Mac OSX console window.


Mac-OSX uses "files" with the ``.app`` extension called *applications*.
These files are actually folders that appear as files in Finder.
In order to run Blender you will have to specify that path to the Blender executable inside this folder,
to get all output printed to the terminal.
You can start a terminal from Applications --> Utilities.
The path to the executable in the ``.app`` folder is ``./blender.app/Contents/MacOS/blender``.

If you have Blender installed in the Applications folder,
the following command can be used:

.. parsed-literal:: /Applications/blender-\ |BLENDER_VERSION|/blender.app/Contents/MacOS/blender


MS-Windows
----------

.. figure:: /images/Interface-Window-System-console-windows.jpg
   :align: right
   :width: 360px

   Blender's Console Window on MS-Windows.


When Blender is started on a MS-Windows operating system,
the *Console Window* is first created as a separate window on the desktop.
The main Blender window will also appear and the *Console Window* will then be toggled off.
To display the console again, go to :menuselection:`Window --> Toggle System Console`.

The screenshot shows the Blender *Console Window* on MS-Windows
directly after starting Blender and then a short while later after opening a file along with
the relevant messages.


.. tip:: Closing the Blender Console Window

   Closing the *Console Window* will also close Blender, losing any unsaved work.

   To turn off the console without closing Blender,
   just run *Toggle System Console* again from the menu (as mentioned above).


Console Window Status and Error Messages
========================================

The *Blender Console Window* can display many different types of Status and Error Messages.
Some messages simply inform the user what Blender is doing, but have no real impact on Blender's ability to function.
Other messages can indicate serious errors that will most likely prevent Blender carrying out a particular task and
may even make Blender non-responsive or shut down completely. The *Blender Console Window* messages can
also originate internally from within the Blender code or from external sources such as
:doc:`Python scripts </advanced/scripting/python/add_ons>`.


Common messages
---------------

- found bundled python: (FOLDER)

   This message indicates that Blender was able to find the :ref:`Python <scripting-index>`
   library for the Python interpreter embedded within Blender.
   If this folder is missing or unable to be found,
   it is likely that an error will occur, and this message will not appear.

- malloc returns nil()

   When Blender carries out operations that require extra memory (RAM), it calls a function called malloc
   (short for memory allocate) which tries to allocate a requested amount of memory for Blender.
   If this cannot be satisfied, malloc will return nil/null/0 to indicate that it failed to carry out the request.
   If this happens Blender will not be able to carry out the operation requested by the user.
   This will most likely result in Blender operating very slowly or shutting down.
   If you want to avoid running out of memory you can install more memory in your system,
   reduce the amount of detail in your Blender models,
   or shut down other programs and services which may be taking up memory that Blender could use.
