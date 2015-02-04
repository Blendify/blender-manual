
************
Introduction
************

.. figure:: /images/Manual-2-56-PartIII-Outliner-Window.jpg

   The Outliner window.


The *Outliner* is a list that organizes data in your scene.
In the outliner, you can:

- View the data in the scene.
- Select and deselect objects in the scene.
- Hide or show an object in the scene.
- Enable or disable selection (to make an object "unselectable" in the 3D View).
- Enable or disable the rendering of an object.
- Delete objects from the scene.
- Unlink data (equivalent to pressing the *X* button next to the name of a datablock).
- Easily select which render layer to render.
- Easily select which render pass to render (for example, you can choose to render just the *Specular* pass).


Using the Outliner
==================

Each row in the *Outliner* shows a datablock. You can click the plus-sign to the
left of a name to expand the current datablock and see what other datablocks it contains.

You can select datablocks in the *Outliner*,
but this won't necessarily select the datablock in the scene.
To select the datablock in the scene, you have to activate it.


Selecting and Activating
========================

Single selection doesn't require any pre-selection: just work directly with :kbd:`LMB`
(and/or :kbd:`RMB` - contextual menu, see below) *inside* the name/icon area.

When you select an object in the list this way,
it is selected and becomes the active object in all other 3D Views.
Use this feature to find objects in your 3D View, select them in the *Outliner*,
then zoom to them with :menuselection:`View --> Show Active` or :kbd:`NumpadPeriod`.


.. figure:: /images/Manual-2-56-PartIII-Outliner-Activate-Datablock.jpg

   Click [lmb] on the mesh data of the cube to activate Edit mode.


Activating a datablock
   *Activate* the datablock with :kbd:`LMB` on the *icon* of the datablock.
   Activating the datablock will automatically switch to the relevant mode.
   For example, activating the mesh data of the cube will select the cube
   and enter *Edit mode* while activating the object data of the
   cube will select the cube and enter *Object mode* (see right).


.. figure:: /images/Manual-2-56-PartIII-Outliner-Window-Column-Icons.jpg

   Toggling pre-selection of a datablock.


Toggle pre-selection of a group of datablocks
   Useful when you want to select/deselect a whole bunch of datablocks.
   For this you must prepare the selection using, to your liking:

   - :kbd:`RMB` or :kbd:`LMB`,
   - :kbd:`Shift-RMB` or :kbd:`Shift-LMB`,
   - :kbd:`RMB` and drag or :kbd:`LMB` and drag,

   all *outside* the name/icon area. Those pre-selected have their line in a lighter color.
   You then can (de)select them with a :kbd:`RMB` *on* the name/icon area,
   which brings on a context menu (see bellow).


.. figure:: /images/Manual-2-56-PartIII-Outliner-Object-Operation.jpg

   Context menu for the Cube object.


Context menu
   Show the context menu for a datablock with :kbd:`RMB` on the icon or name.
   Depending on the type of the pre-selected datablock(s), you will have all or part of the following options:

   - *Select*.
   - *Deselect*.
   - *Delete*.
   - *Unlink* - To unlink a datablock from its "owner" (e.g., a material from its mesh).
   - *Make Local* - To create a "local" duplicate of this datablock.

   .. note::

      Some datablock types will not have a context menu at all!


Deleting a datablock
   Use :kbd:`X` to delete the selected datablock(s).

Expanding one level
   Use :kbd:`NumpadPlus` to expand one level down in the tree-list.

Collapsing one level
   Use :kbd:`NumpadMinus` to collapse one level up in the tree-list.

Expanding/collapsing everything
   Use :kbd:`A` to expand/collapse all levels of the tree-list.


Toggling object-level restrictions
==================================

The three following options, in the right side of the *Outliner* window,
are only available for objects:

Visibility (*eye icon*)
   Toggles the visibility of the object in the 3D View.
   :kbd:`V` will toggle this property for any objects that are selected in the *Outliner*.

Selectability (*mouse cursor icon*)
   This is useful for if you have placed something in the scene
   and don't want to accidentally select it when working on something else.
   :kbd:`S` will toggle this property for any objects that are selected in the *Outliner*.

Rendering (*camera icon*)
   This will still keep the object visible in the scene, but it will be ignored by the renderer.
   :kbd:`R` will toggle this property for any objects that are selected in the *Outliner*.


Searching
=========

You can search the file for datablocks,
either by using the *Search* menu in the header of the *Outliner*,
or by using one of the following hotkeys:

- :kbd:`F` - Find.
- :kbd:`Ctrl-F` - Find (case sensitive).
- :kbd:`Alt-F` - Find complete.
- :kbd:`Ctrl-Alt-F` - Find complete (case sensitive).
- :kbd:`Shift-F` - Find again.

Matching datablocks will be automatically selected.


Filtering the display
=====================

.. figure:: /images/Manual-2-56-PartIII-Outliner-Display-Mode.jpg

   Outliner Display dropdown.


The window header has a field to let you select what the outliner should show to help you narrow the
list of objects so that you can find things quickly and easily.

All Scenes
   Shows *everything* the outliner can display (in all scenes, all layers, etc.)
Current Scene
   Shows everything in the current scene.
Visible Layers
   Shows everything on the visible (currently selected) layers in the current scene.
   Use the :doc:`layer </getting_started/basics/navigating/layers>` buttons
   to make objects on a layer visible in the 3D window.
Selected
   Lists only the object(s) currently selected in the 3D window.
   You can select multiple objects by :kbd:`Shift-RMB` -clicking.
Active
   Lists only the active (often last selected) object.
Same Types
   Lists only those objects in the current scene that are of the same types as those selected in the 3d window.
Groups
   Lists only :doc:`Groups </modeling/objects/groups_and_parenting>` and their members.
Libraries
   TODO
Sequence
   TODO
Data Blocks
   TODO
User Preferences
   TODO
Key Maps
   TODO
