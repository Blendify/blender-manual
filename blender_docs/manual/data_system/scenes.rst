
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


Removing a Scene
================

You can delete the current scene by clicking the *X* next to the name in the Info Editor.


.. _scene-background_set:

Background Set Scene
====================

You can use a scene as a background,
this is typically useful when you want to focus on animating the foreground for example,
without background elements getting in the way.

You can assign a *Background* to your current scene from the *Properties Editor* *Scene* panel.

This scene can have its own animation, physics-simulations etc,
but you will have to select it from the *Scene* browser if you want to edit any of its contents.

This can also be used in combination with `Linking to a Scene`_,
where one ``.blend`` file has the environment, which can be re-used in many places.


Linking to a Scene
==================

You can link any object from one scene to another.
Just open the scene where these objects are,
from the 3d-view header access :menuselection:`Obejct -> Make Links...`
and choose the scene where you want your objects to appear.
The selected objects will be added to that scene but remain linked to the original objects.

To make them single user (independent and unlinked) in a given scene go to that scene,
select them, then from the 3d-view header access :menuselection:`Obejct -> Make Single User`.
You will be presented with a few options that allow you to free up the data-blocks (Object,
Material, Texture...) that you want.

