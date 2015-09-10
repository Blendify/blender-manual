
******
Scenes
******

Scenes are a very useful tool for managing your projects. The Cube model in empty space you
see when you open Blender for the first time is the default scene.
You can imagine scenes to be similar to tabs in your web browser. For example,
your web browser can have many tabs open at once. The tabs could be empty,
showing identical views of the same web page,
showing different views of the same page or show entirely different pages altogether.
Blender's scenes work in much the same way. You can have an empty scene, a complete
independent copy of your scene or a new copy that links to your original scene in a number of
ways.

You can select and create scenes with the *Scene selector* in the Info window header
(the bar at the top of most Blender layouts, see *Screen and Scene selectors*).


.. figure:: /images/ConceptScreens25.jpg
   :align: center

   Screen and Scene selectors


Scene configuration
===================

Adding a new Scene
------------------

.. figure:: /images/Interface-Scene-AddButton-Dialog25.jpg
   :align: right

   Add Scene menu

.. |addview-button| image:: /images/Interface-Screens-AddView-Button25.jpg

You can add a new scene by clicking the *Add* button (|addview-button|) in the scene selector option.
When you create a new scene, you can choose between a number of options to control its contents.

To choose between these options,
it's useful to understand the difference between *Objects* and *Object Data*.
See :doc:`Duplication </modeling/objects/duplication/introduction>`.

The choices for adding a scene, therefore determine just how much of this information will be
*copied from* the active scene to the new one, and how much will be *shared* (linked).

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

To better understand the way Blender works with data,
read through :doc:`Blender's Library and Data System. </data_system/index>`


.. note:: A Brief Example

   Consider a bar scene in a film. You initially create the bar as a clean version,
   with everything unbroken and in its proper place.
   You then decide to create the action in a separate scene.
   The action in your scene will indicate which type of linking (if any)
   would suit your scene best.

   Link Objects
      Every object will be linked to the original scene.
      If you correct the placement of a wall, it will move in every scene that uses the bar as a setting.

   Link Object Data
      Will be useful when the positions of objects need to change,
      but their shape and material settings will remain constant.
      For example, chairs might stand on the floor in the "crowded bar"
      scene and up on the tables in the "we are closing" scene.
      Since the chairs don't change form, there is no need to waste memory on exact mesh-copies.

   Full Copy
      A glass shattering on the floor will need its own copy because the mesh will change shape.

   It is not possible to do all of the above in the same scene,
   but it might help in understanding why you would link different objects in different ways.


Deleting a Scene
----------------

.. |deleteview-button| image:: /images/Interface-Screens-DeleteView-Button25.jpg

You can delete a scene by using the *Delete datablock* button
(|deleteview-button|) from the scene selector option (see *Screen and Scene
selectors*).

