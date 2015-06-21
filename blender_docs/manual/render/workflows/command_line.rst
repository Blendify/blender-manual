
************
Command Line
************

In some situations we want to increase the render speed,
access blender remotely to render something or build scripts that use the command line.

One advantage of using the command line is that we don't need the X server (in the case of Linux)
and consequently we can render remotely by SSH or telnet.

To see a list of available flags (for example to specify which scene to render, the end frame number, etc...),
simply run:

.. code-block:: sh

   blender --help


.. note::

   Arguments are executed in the order they are given!

   The following command won't work, since the output and extension is set after blender is told to render:

   .. code-block:: sh

      blender -b file.blend -a -x 1 -o //render

   The following command will behave as expected.

   .. code-block:: sh

      blender -b file.blend -x 1 -o //render -a

   **Always position** ``-f`` **or** ``-a`` **as the last arguments.**

.. RST / WIKI NOTE - WE HAD THE FULL OUTPUT OF ``blender --help`` here,
   not sure theres much point in duplicating all info! - ideasman42


Platforms
=========

How to actually execute Blender from the command line depends on the platform and where you
have installed Blender. Here are basic instructions for the different platforms.


Linux
-----

Open a terminal, then go to the directory where Blender is installed,
and run the blender command like this.

.. code-block:: sh

   cd <blender installation directory>
   ./blender

If you have Blender installed in your ``PATH``
(usually when Blender is installed through a distribution package), you can simply run:

.. code-block:: sh

   blender


Mac OS X
--------

Open the terminal application, go to the directory where Blender is installed,
and run the executable within the app bundle, with commands like this:

.. code-block:: sh

   cd /Applications/Blender
   ./blender.app/Contents/MacOS/blender

If you need to do this often,
you can make an alias so that typing just ``blender`` in the terminal works.
For that you can run a command like this in the terminal (with the appropriate path).

.. code-block:: sh

   echo "alias blender=/Applications/Blender/blender.app/Contents/MacOS/blender" >> ~/.profile

If you then open a new terminal, the following command will work:

.. code-block:: sh

   blender


Windows
-------

Open the Command Prompt, go to the directory where Blender is installed,
and then run the blender command.

.. code-block:: bat

   cd c:\<blender installation directory>
   blender

You can also add the Blender folder to your system ``PATH`` so that do you do not have to change to it each time.


Examples
========

Here are some common examples of command line rendering:


Single Image
------------

.. code-block:: sh

   blender -b file.blend -f 10


``-b``
   Render in the background (without UI).
``file.blend``
   Path to the blend file to render.
``-f 10``
   Render only the 10th frame.


.. code-block:: sh

   blender -b file.blend -o /project/renders/frame_##### -F EXR -f -2

``-o /project/renders/frame_#####``
   Path of where to save the rendered image, using 5 padded zeros for the frame number.
``-F EXR``
   Override the image format specified in the blend file and save to an OpenEXR image.
``-f -2``
   Render only the second last frame.

.. warning::

   Arguments are case sensitive! ``-F`` and ``-f`` are not the same.


Animation
---------

.. code-block:: sh

   blender -b file.blend -a

``-a``
   Render the whole animation using all the settings saved in the blend file.


.. code-block:: sh

   blender -b file.blend -E BLENDER_RENDER -s 10 -e 500 -t 2 -a

``-E BLENDER_RENDER``
   Use the "Blender Render" engine. For a list of available renderers, run ``blender -E help``.
``-s 10 -e 500``
   Set the start frame to ``10`` and the end frame to ``500``.
``-t 2``
   Use only two threads.
