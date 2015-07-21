
******
Scenes
******

Scenes are a way to organize your work.
Each ``.blend`` file can contain multiple scenes which share other data such as objects and materials

Scene management and library appending/linking is based on Blender's
:doc:`Library and Data System </data_system/index>`,
so it is a good idea to read that manual page first if you're not familiar with the basics of that system.


Adding a Scene
==============

To add a scene, click on the scene list button, and select *Add New*.
While you are adding a new scene, you have these options:


.. figure:: /images/Interface-Scene-AddButton-Dialog.jpg

   Add scene pop-up menu.


Empty
   Create a completely empty scene.
Link Objects
   All objects are linked to the new scene.
   The layer and selection flags of the objects can be configured differently for each scene.
Link ObData
   Duplicates objects only. ObData linked to the objects, e.g. mesh and curve, are not duplicated.
Full Copy
   Everything is duplicated.

The new scene can be renamed by clicking in the text field and typing a name.


Linking to a Scene
==================

You can link any object from one scene to another.
Just open the scene where these objects are,
use :kbd:`Ctrl-L` --> *Objects to Scene...*
and choose the scene where you want your objects to appear.
The selected objects will be added to that scene but remain linked to the original objects.

To make them single user (independent and unlinked) in a given scene go to that scene, select them and press :kbd:`U`.
You will be presented with a few options that allow you to free up the datablocks (Object,
Material, Texture...) that you want.


Removing a scene from the file
==============================

You can delete the current scene by clicking the *X* next to the name in the Info Editor.
