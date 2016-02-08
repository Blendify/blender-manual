
**************
Python Console
**************

The Python console is a quick way to execute commands,
with access to the entire Python API, command history and auto-complete.

Its a good way to explore possibilities, which can then be pasted into larger scripts.


Usage
=====

Accessing Built-in Python Console
---------------------------------

Launching the Console using mouse.

.. youtube:: Ge2Kwy5EGE0

By pressing :kbd:`Shift-F4` in any Blender Editor Type (3D View, Timeline etc.,)
you can change it to a Console Editor.


.. figure:: /images/Extensions-Python-Console-Default-Console.jpg


From the screen shot above,
you will notice that apart from the usual hot keys that are used to navigate,
by pressing :kbd:`Ctrl-Spacebar` you can enable Auto-complete feature.

The command prompt is typical for Python 3.x,
the interpreter is loaded and is ready to accept commands at the prompt ``>>>``


First look at the Console Environment
-------------------------------------

To check what is loaded into the interpreter environment, type dir()
at the prompt and execute it.


.. figure:: /images/Extensions-Python-Console-Listing-Globals.jpg


Following is a quick overview of the output

``C``
   Quick access to ``bpy.context``
``D``
   Quick access to ``bpy.data``
``bpy``
   Top level Blender Python API module.


Auto Completion at work
-----------------------

Now, type bpy. and then press :kbd:`Ctrl-Spacebar` and you will see the Console
auto-complete feature in action.


.. figure:: /images/Extensions-Python-Console-Auto-Completion.jpg


You will notice that a list of sub-modules inside of bpy appear. These modules encapsulate all
that we can do with Blender Python API and are very powerful tools.

Lets list all the contents of bpy.app module.


.. figure:: /images/Extensions-Python-Console-List-SubModule-Contents.jpg


Notice the green output above the prompt where you enabled auto-completion.
What you see is the result of auto completion listing.
In the above listing all are module attribute names, but if you see any name end with '(',
then that is a function.

We will make use of this a lot to help our learning the API faster.
Now that you got a hang of this, lets proceed to investigate some of modules in bpy.


Before tinkering with the modules..
-----------------------------------

If you look at the 3D Viewport in the default Blender scene, you will notice 3 objects: Cube,
Lamp and Camera.


.. figure:: /images/Extensions-Python-Console-Default-Scene.jpg


- All objects exist in a context and there can be various modes under which they are operated upon.
- At any instance, only one object is active and there can be more than one selected objects.
- All objects are data in the Blender file.
- There are operators/functions that create and modify these objects.

For all the scenarios listed above (not all were listed, mind you..)
the bpy module provides functionality to access and modify data.


Examples
========

bpy.context
-----------

Note
   For the commands below to show the proper output, make sure you have selected object(s) in the 3D view.


.. figure:: /images/Extensions-Python-Console-Example-bpy-context.jpg


Try it out!
^^^^^^^^^^^

bpy.context.mode
   Will print the current 3D View mode (Object, Edit, Sculpt etc.,)

bpy.context.object or bpy.context.active_object
   Will give access to the active object in the 3D View

.. code-block:: python

   >>> bpy.context.object.location.x = 1


Change x location to a value of 1

.. code-block:: python

   >>> bpy.context.object.location.x += 0.5


Move object from previous x location by 0.5 unit

.. code-block:: python

   >>> bpy.context.object.location = (1, 2, 3)


Changes x, y, z location

.. code-block:: python

   >>> bpy.context.object.location.xyz = (1, 2, 3)


Same as above

.. code-block:: python

   >>> type(bpy.context.object.location)


Data type of objects location

.. code-block:: python

   >>> dir(bpy.context.object.location)


Now that is a lot of data that you have access to

bpy.context.selected_objects
   Will give access to a list of all selected objects.

.. code-block:: python

   >>> bpy.context.selected_objects

... then press :kbd:`Ctrl-Spacebar`

.. code-block:: python

   >>> bpy.context.selected_objects[0]


Prints out name of first object in the list

.. code-block:: python

   >>> [object for object in bpy.context.selected_objects if object != bpy.context.object]


Complex one... But this prints a list of objects not including the active object


bpy.data
--------

``bpy.data`` has functions and attributes that give you access to all the data in the
Blender file.

You can access following data in the current Blender file:
objects, meshes, materials, textures, scenes, screens, sounds, scripts, ... etc.

That's a lot of data.


Try it out!
^^^^^^^^^^^

.. figure:: /images/Extensions-Python-Console-Example-bpy-data.jpg


Exercise
^^^^^^^^

.. code-block:: python

   for obj in bpy.data.scenes['Scene'].objects: print(obj.name)

:kbd:`Return` twice
Prints the names of all objects belonging to the Blender scene with name "Scene"

.. code-block:: python

   bpy.data.scenes['Scene'].objects.unlink(bpy.context.active_object)


Unlink the active object from the Blender scene named 'Scene'

.. code-block:: python

   bpy.data.materials['Material'].shadows

   bpy.data.materials['Material'].shadows = False


bpy.ops
-------

The tool system is built around the concept of operators.
Operators are typically executed from buttons or menus but can also be be called directly from Python too.

See the `bpy.ops <https://www.blender.org/api/blender_python_api_current/bpy.ops.html>`__ API documentation
for a list of all operators.

Lets create a set of five Cubes in the 3D Viewport. First,
delete the existing Cube object by selecting it and pressing :kbd:`X`


Try it out!
^^^^^^^^^^^

The following commands are used to specify that the objects are created in layer 1.
So first we define an array variable for later reference:

.. code-block:: python

   mylayers = [False] * 20
   mylayers[0] = True


We create a reference to the operator that is used for creating a cube mesh primitive

.. code-block:: python

   add_cube = bpy.ops.mesh.primitive_cube_add


Now in a for loop, we create the five objects like this (In the screenshot above,
I used another method)
Press :kbd:`Return` twice after entering the command at the shell prompt.

.. code-block:: python

   for index in range(5):
       add_cube(location=(index * 3, 0, 0), layers=mylayers)


.. figure:: /images/Extensions-Python-Console-Example-bpy-ops.jpg
   :width: 500px
