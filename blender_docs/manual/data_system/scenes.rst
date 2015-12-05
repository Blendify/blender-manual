
******
Scenes
******

Scenes are a way to organize your work.
Each ``.blend`` file can contain multiple scenes which share other data such as objects and materials

Scene management and library appending/linking is based on Blender's
:doc:`Library and Data System </data_system/index>`,
so it is a good idea to read that manual page first if you're not familiar with the basics of that system.

You can select and create scenes with the *Scene selector* in the Info window header
(the bar at the top of most Blender layouts, see *Screen and Scene selectors*).

.. figure:: /images/ConceptScreens25.jpg
   :align: center

   Screen and Scene selectors


Adding a Scene
==============

To add a scene, click on the scene list button, and select *Add New*.
While you are adding a new scene, you have these options:

.. figure:: /images/Interface-Scene-AddButton-Dialog25.jpg
   :align: right

   Add scene pop-up menu.

.. |addview-button| image:: /images/Interface-Screens-AddView-Button25.jpg


New
   Creates an empty scene with default values.
Copy Settings
   Creates an empty scene but also copies
   the settings from the active scene into the new one.

Link Objects
   This option creates a new scene with the same settings and contents as the active scene.
   However, instead of copying the objects,
   the new scene contains links to the objects in the old scene.
   Therefore, changes to objects in the new scene will result in the same
   changes to the original scene, because the objects used are literally the same.
   The reverse is also true.
Link Object Data
   Creates new, duplicate copies of all of the objects in the currently selected scene,
   but each one of those duplicate objects will have *links to* the object-data (meshes, materials and so on)
   of the corresponding objects in the original scene.

   This means that you can change the position,
   orientation and size of the objects in the new scene without affecting other scenes,
   but any modifications to the object-data (meshes, materials *etc*) will also affect other scenes.
   This is because a *single instance of* the "object-data" is now being shared by all of the objects
   in all of the scenes that link to it.

   More information at the :doc:`Window Type </editors/index>` page.
   This has the effect of making a new independent copy of the object-data.
Full Copy
   Using this option, nothing is shared.
   This option creates a fully independent scene with copies of the active scenes contents.
   Every object in the original scene is duplicated, and a duplicate, private copy of its object-data is made as well.

.. note::

   To choose between these options,
   it's useful to understand the difference between *Objects* and *Object Data*.
   See :doc:`Duplication </editors/3dview/transform/duplication/introduction>`.

   The choices for adding a scene, therefore determine just how much of this information will be
   *copied from* the active scene to the new one, and how much will be *shared* (linked).

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

