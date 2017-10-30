.. _bpy.types.ConsoleLine:
.. _bpy.types.SpaceConsole:
.. _bpy.ops.console:

**************
Python Console
**************

The Python console is a quick way to execute commands,
with access to the entire Python API, command history and auto-complete.

Its a good way to explore possibilities, which can then be pasted into larger scripts.


Introduction
============

Accessing Built-in Python Console
---------------------------------

By pressing :kbd:`Shift-F4` in any Blender Editor type (3D View, Timeline, etc.)
you can change it to a Console Editor.

.. figure:: /images/editors_python-console_default.png

The command prompt is typical for Python 3.x,
the interpreter is loaded and is ready to accept commands at the prompt ``>>>``


First look at the Console Environment
-------------------------------------

To check what is loaded into the interpreter environment, type ``dir()``
at the prompt and execute it.

.. figure:: /images/editors_python-console_dir.png


Auto Completion
---------------

Now, type ``bpy.`` and then press :kbd:`Ctrl-Spacebar` and you will see the Console
auto-complete feature in action.

.. figure:: /images/editors_python-console_completion.png

You will notice that a list of sub-modules inside of ``bpy`` appear. These modules encapsulate all
that we can do with Blender Python API and are very powerful tools.

Lets list all the contents of ``bpy.app`` module.

Notice the green output above the prompt where you enabled auto-completion.
What you see is the result of auto completion listing.
In the above listing all are module attribute names,
but if you see any name end with ``(``, then that is a function.

We will make use of this a lot to help our learning the API faster.
Now that you got a hang of this, lets proceed to investigate some of modules in ``bpy``.


Before tinkering with the modules
---------------------------------

If you look at the 3D View in the default Blender scene, you will notice three objects: Cube,
Lamp and Camera.

- All objects exist in a context and there can be various modes under which they are operated upon.
- At any instance, only one object is active and there can be more than one selected object.
- All objects are data in the blend-file.
- There are operators/functions that create and modify these objects.

For all the scenarios listed above (not all were listed, mind you...)
the ``bpy`` module provides functionality to access and modify data.


Examples
========

bpy.context
-----------

.. note::

   For the commands below to show the proper output, make sure you have selected object(s) in the 3D View.

.. figure:: /images/editors_python-console_bpy-context.png


Try it out!
^^^^^^^^^^^

bpy.context.mode
   Will print the current 3D View mode (Object, Edit, Sculpt, etc.).

bpy.context.object or bpy.context.active_object
   Will give access to the active object in the 3D View.

Change X location to a value of 1::

   bpy.context.object.location.x = 1

Move object from previous X location by 0.5 unit::

   bpy.context.object.location.x += 0.5

Changes X, Y, Z location::

   bpy.context.object.location = (1, 2, 3)

Same as above::

   bpy.context.object.location.xyz = (1, 2, 3)

Data type of objects location::

   type(bpy.context.object.location)

Now that is a lot of data that you have access to::

   dir(bpy.context.object.location)


``bpy.context.selected_objects``
   Will give access to a list of all selected objects.

Type this and then press :kbd:`Ctrl-Spacebar`::

   bpy.context.selected_objects

To print out the name of first object in the list::

   bpy.context.selected_objects[0]

The complex one... But this prints a list of objects not including the active object::

   [obj for obj in bpy.context.selected_objects if obj != bpy.context.object]


bpy.data
--------

``bpy.data`` has functions and attributes that give you access to all the data in the
blend-file.

You can access following data in the current blend-file:
objects, meshes, materials, textures, scenes, screens, sounds, scripts, etc.

That is a lot of data.


Try it out!
^^^^^^^^^^^

.. figure:: /images/editors_python-console_bpy-data.png


Exercise
^^^^^^^^

After :kbd:`Enter` twice it prints the names of all objects
belonging to the Blender scene with name "Scene"::

   for obj in bpy.data.scenes['Scene'].objects: print(obj.name)

Unlink the active object from the Blender scene named 'Scene'::

   bpy.data.scenes['Scene'].objects.unlink(bpy.context.active_object)

.. code-block:: python

   bpy.data.materials['Material'].shadows

   bpy.data.materials['Material'].shadows = False


bpy.ops
-------

The tool system is built around the concept of operators.
Operators are typically executed from buttons or menus but can be called directly from Python too.

See the `bpy.ops <https://www.blender.org/api/blender_python_api_current/bpy.ops.html>`__ API documentation
for a list of all operators.

Lets create a set of five Cubes in the 3D View. First,
delete the existing Cube object by selecting it and pressing :kbd:`X`


Try it out!
^^^^^^^^^^^

The following commands are used to specify that the objects are created in layer 1.
So first we define an array variable for later reference::

   mylayers = [False] * 20
   mylayers[0] = True

We create a reference to the operator that is used for creating a cube mesh primitive::

   add_cube = bpy.ops.mesh.primitive_cube_add

Now in a *for loop*, we create the five objects like this (in the screenshot above,
another method is used) :
Press :kbd:`Enter` twice after entering the command at the shell prompt::

   for index in range(5):
       add_cube(location=(index * 3, 0, 0), layers=mylayers)

.. figure:: /images/editors_python-console_bpy-ops.png


Usage
=====

Aliases
-------

Some variables and modules are available for convenience:

- ``C``: Quick access to ``bpy.context``.
- ``D``: Quick access to ``bpy.data``.
- ``bpy``: Top level Blender Python API module.


Key Bindings
------------

- :kbd:`Up` / :kbd:`Down` -- Cycle command history.
- :kbd:`Left` / :kbd:`Right` -- Cursor motion.
- :kbd:`Ctrl-Left` / :kbd:`Ctrl-Right` -- Cursor motion, by word.
- :kbd:`Backspace` / :kbd:`Delete` -- Erase characters.
- :kbd:`Tab` -- Indent.
- :kbd:`Shift-Tab` -- Unindent.
- :kbd:`Ctrl-Backspace` / :kbd:`Ctrl-Delete` -- Erase words.
- :kbd:`Ctrl-Spacebar` -- Auto complete.
- :kbd:`Enter` -- Execute command.
- :kbd:`Shift-Return` -- Add to command history without executing.
- :kbd:`Ctrl-C` -- Copy the selection.
- :kbd:`Ctrl-V` -- Paste into the command line.
