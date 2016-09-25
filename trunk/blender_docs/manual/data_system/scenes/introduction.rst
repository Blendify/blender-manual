﻿
************
Introduction
************

Scenes are a way to organize your work.
Each blend-file can contain multiple scenes, which share other data such as objects and materials.

Scene management and library appending/linking are based on Blender's
:doc:`Library and Data System </data_system/index>`,
so it is a good idea to read that manual page first, if you are not familiar with the basics of that system.

You can select and create scenes with the *Scene data-block* menu in the *Info Editor* header.

.. figure:: /images/interface_screen-scene-selector.jpg
   :align: center

   Screen and Scene data-block menus.


Controls
========

Scenes
   A list of available scenes.
Add ``+``
   New
      Creates an empty scene with default values.
   Copy Settings
      Creates an empty scene, but also copies
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
      but each one of those duplicate objects will have links to the object-data (meshes, materials and so on)
      of the corresponding objects in the original scene.
   
      This means that you can change the position,
      orientation and size of the objects in the new scene without affecting other scenes,
      but any modifications to the object-data (meshes, materials, etc.) will also affect other scenes.
      This is because a single instance of the "object-data" is now being shared by all of the objects
      in all of the scenes, that link to it.
      This has the effect of making a new independent copy of the object-data.
   Full Copy
      Using this option, nothing is shared.
      This option creates a fully independent scene with copies of the active scene's contents.
      Every object in the original scene is duplicated, and a duplicate, private copy of its object-data is made as well.

   .. note::

      To choose between these options,
      it is useful to understand the difference between *Objects* and *Object Data*.
      See :doc:`Duplication </editors/3dview/object/transform/duplication>`.
   
      The choices for adding a scene, therefore, determine just how much of this information will be
      *copied from* the active scene to the new one, and how much will be *shared* (linked).

Delete ``X``
   You can delete the current scene by clicking the *X* next to the name in the Info Editor.


.. _data-scenes-linking:

Linking to a Scene
==================

You can link any object from one scene to another.
Just open the scene where these objects are,
from the 3D View header access :menuselection:`Object --> Make Links...`
and choose the scene where you want your objects to appear.
The selected objects will be added to that scene, but remain linked to the original objects.

To make them single user (independent and unlinked) in a given scene go to that scene,
select them, then from the 3D View header access :menuselection:`Object --> Make Single User`.
You will be presented with a few options that allow you to free up the data-blocks (Object,
Material, Texture...) that you want.
