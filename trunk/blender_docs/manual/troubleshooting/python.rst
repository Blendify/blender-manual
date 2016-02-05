
*******************************
Troubleshooting Python problems
*******************************

Mixed Python Libraries (DLL's)
==============================

You ever got trapped in a situation where a part of Blender always ends up
with throwing tons of python errors into the Blender Console?
Or you have an add-on that just fails when enabled with an error, eg:
``... is not a valid Win32 application.``.

.. figure:: /images/troubleshooting-python.png

   A Python Traceback

This may be caused by some inconsistency in the Python libraries.
However Blender comes with its own bundled Python interpreter.
So unless Blender has a distribution bug, there is no way to
get your environment polluted, Blender should just run... one might think.


PYTHONPATH
----------

When the ``PYTHONPATH`` is set incorrectly, Blender may fail to load.

Blender respects the systems ``PYTHONPATH`` environment variable,
see: `Pythons documentation <https://docs.python.org/3/using/cmdline.html#envvar-PYTHONPATH>`__ for details.

This can be useful for Python developers who want to use their own Python installation
however it will prevent Blender from opening at all when set to an incompatible version of Python.

To see if this is the cause of an error temporary unset the environment variable and reload Blender.


Addon issues
------------

An Addon might possibly come along with its own Python libraries. These libraries
might not work nicely together with the current Blender installation. Please check if
the Addon that you want to install has its own .pyd files (this is not a common situation,
but well, it can happen). If so, then please check if the libraries match with Blender's
bundled Python Interpreter. If in doubt then ask the Addon creator.


Left over files in Appdata
--------------------------

Blender is flexible. It can be extended in many ways. And because Blender tries to
be friendly to everyone it allows you to add python libraries in many places. If you
do not take care then you can easily pollute your Blender without even noticing.

Here is a method how you can find a solution:


Finding out which Python Library made the Problem
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is normally reported somewhere around the bottom line of the Traceback.
In the image above you see the problem is caused while trying to import _socket.
This corresponds to either a file named _socket.py or _socket.pyd.
In many cases the filename is reported one line above, but not always,
especially if the module comes from a python library. In that case you
don't get informed about from where the file comes. So you have to find the file.

Check in following locations:

- The Scripts folder
- The application Data Folder
- The Blender installation folder
- The Python Installation (if you have installed Python independent from Blender)

If you find this file at multiple locations, then you are already in trouble.
If you find the File in the Blender Installation folder and somewhere else, then
the version in the Blender Installation Folder should be used. In that case rename
or remove the file from the other location and see if Blender now behaves different.

.. tip:: Quick Tests:

   - Move the Application Data aside (rename it temporary) and restart Blender to see
     if you possibly have a corrupt customdata.
   - Restart Blender with Factory Settings and see if this makes anything better.
