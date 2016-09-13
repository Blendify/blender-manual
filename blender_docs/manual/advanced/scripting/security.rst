
********************
Scripting & Security
********************

The ability to include Python scripts within blend-files is valuable for advanced tasks such
as rigging, automation and using the game-engine.
However, it poses a security risk since Python does not restrict what a script can do.

Therefore, you should only run scripts from sources you know and trust.

Automatic execution is disabled by default,
however, some blend-files need this to function properly.

When a blend-file tries to execute a script and is not allowed, a message will appear in the
header with the option to **Reload Trusted** or **Ignore** the message.

.. figure:: /images/python_script_autoexec_header.jpg
   :width: 800px


Scripts in Blend Files
======================

Auto Execution
--------------

Here are the different ways blend-files may automatically run scripts.

Registered Text-Blocks
  A text block can have its *Register* option enabled which means it will load on start.
Animation Drivers
  Python expressions can be used to *Drive* values and are often used in more advanced rigs and animations.
Game Engine Auto-Start
  Scripts are often used for game logic, blend-files can have *Auto Start* enabled with runs the game on load.


Manual Execution
----------------

There are other ways scripts in a blend-file may execute that require user
interaction (therefore will run even when auto-execution is off),
but you should be aware that this is the case since it is not necessarily obvious.


- Running a script in the text editor.
- Rendering with FreeStyle, because FreeStyle uses scripts to control line styles.
- Running the Game-Engine.


Controlling Script Execution
============================

Blender provides a number of ways to control whether scripts
from a blend-file are allowed to automatically execute.

First of all, the File Browser has the option **Trusted Source** which you can use on a
case-by-case basis to control auto-execution.

However, you may forget to set this,
or open a file without going through the File Browser --
so you can change the default (described next).


Setting Defaults
----------------

In the *File* tab of the User Preferences,
there is the toggle **Auto-Run Python Scripts**.

This means the **Trusted Source** option in the File Browser will be enabled by default,
and scripts can run when blend-files are loaded without using the File Browser.

Once enabled you have the option to exclude certain directories,
a typical configuration would be to trust all paths except for the download directory.

.. figure:: /images/python_script_autoexec_configure.jpg
   :width: 600px


Command Line
------------

You may want to perform batch rendering or some other task from the command line --
running Blender without an interface.

In this case, the User Preferences are still used but you may want to override them.

- Enable with ``-y`` or ``--enable-autoexec``
- Disable with ``-Y`` or ``--disable-autoexec``


Example
^^^^^^^

Rendering an animation in background mode, allowing drivers and other scripts to run:

.. code-block:: sh

   blender --background --enable-autoexec my_movie.blend --render-anim

.. note::

   These command line arguments can be used to start a regular Blender instance and will
   still override the User Preferences.
