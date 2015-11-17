
***********************
Troubleshooting Startup
***********************

There are some common causes for problems when using Blender. If you can not find a solution for your problem here,
try asking the `community <introduction/community>`__ for help.

If Blender crashes on startup there are a few things to check for:

- See if you computer meets the `minimum requirements <http://www.blender.org/download/requirements/>`__
- Confirm that you graphics card is supported and that the drivers support at least OpenGL 1.4
- Make sure you are using the correct Blender version (32 or 64 bit) for your architecture.

Known causes listed below.


Python Crashes on Startup
=========================

If you get an error on startup ::

   Fatal Python error: Py_Initialize: unable to load the file system codec

you may have set your systems ``PYTHONPATH`` environment variable.

In this case Blender's bundled Python will attempt to use the ``PYTHONPATH``,
If the Python version is different from the version used by Blender, this will crash Blender on startup.

To solve the problem, either clear the ``PYTHONPATH`` before starting Blender *(can be done in a launcher script)*,
or set it to a compatible Python version.

