
..    TODO/Review: {{review|partial=X|text=Missing Keying set. }} .

*********
Selecting
*********

Introduction
============

Selection determines which elements will be the target of our actions.
Blender has advanced selection methods.
Both in *Object mode* and in *Edit mode*.


.. _object-active:

Selections and the Active Object
================================

Blender distinguishes between two different states of selection:


.. figure:: /images/Object-Selection-001.jpg

   Unselected object in black, selected object in orange, and active object in yellow


- In *Object mode* the last (de)selected item is called the "Active Object"
  and is outlined in yellow (the others are orange).
  There is exactly one active object at any time (even when nothing is selected).

  Many actions in Blender use the active object as a reference (for example linking operations).
  If you already have a selection and need to make a different object the active one,
  simply re-select it with :kbd:`Shift-RMB`.

- All other selected objects are just selected. You can select any number of objects.


Point Selection
===============

The simplest form of object *selection* consists of using :kbd:`RMB` on it.

To *add to the selection*, use :kbd:`Shift-RMB` on more objects.

If the *objects are overlapping* in the view,
you can use :kbd:`Alt-RMB` to cycle through possible choices.

If you want *to add to a selection* this way then the shortcut becomes
:kbd:`Shift-Alt-RMB`.

To *activate an object* that is already selected, click :kbd:`Shift-RMB` on it.

To *deselect* an active object,
click :kbd:`Shift-RMB` one time - and hence two clicks if the object isn't active.
Note that this only works if there are no other objects under the mouse.
Otherwise it just adds those to the selection. There appears to be no workaround for this bug.


Rectangular or Border Select
============================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode* and *Edit mode*
   | Menu:     *Select* --> *Border Select*
   | Hotkey:   :kbd:`B`


Description
-----------

With *Border Select* you draw a rectangle while holding down :kbd:`LMB`.
Any object that lies even partially within this rectangle becomes selected.

For deselecting objects,
use :kbd:`MMB` or *Border Select* again with holding :kbd:`Shift`.

To cancel the selection use :kbd:`RMB`.


Example
-------

.. figure:: /images/Object-Selection-Border.jpg
   :width: 610px

   Border selecting in three steps


*Border Select* has been activated in the first image and is indicated by showing a dotted cross-hair cursor.
In the second image, the *selection region* is being chosen by drawing a rectangle with the :kbd:`LMB`.
The rectangle is only covering two cubes.
Finally, in the third image, the selection is completed by releasing :kbd:`LMB`.

Notice in the third image, the bright color of left-most selected cube.
This means it is the "active object",
the last selected object prior to using the *Border Select* tool.


Hints
-----

*Border Select* adds to the previous selection, so in order to select only the contents of the rectangle,
deselect all with :kbd:`A` first.


Lasso Select
============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode* and *Edit mode*
   | Menu:     no entry in the menu
   | Hotkey:   :kbd:`Ctrl-LMB`


Description
-----------

Lasso select is used by drawing a dotted line around the pivot point of the objects,
in *Object mode*.


Usage
-----

While holding :kbd:`Ctrl` down, you simply have to draw around the pivot point of each
object you want to select with :kbd:`LMB`.

Lasso select adds to the previous selection. For deselection, use :kbd:`Ctrl-Shift-LMB`.


.. figure:: /images/Object-Selection-Lasso.jpg
   :width: 610px

   Lasso selection example


Circle Select
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode* and *Edit mode*
   | Menu:     *Select* --> *Circle Select*
   | Hotkey:   :kbd:`C`


Description
-----------

.. figure:: /images/Object-Selection-Circle0.jpg
   :width: 100px

   Main selection menu


*Circle Select* is used by moving with dotted circle through objects with :kbd:`LMB`.
You can select any object by touching of circle area.
It is possible to dynamically change the diameter of circle by scrolling :kbd:`MMB` as
seen in pictures below. Deselection is under the same principle - :kbd:`MMB`.
To cancel the selection use :kbd:`RMB` or key :kbd:`Esc`,

.. list-table::

   * - .. figure:: /images/Object-Selection-Circle1.jpg
          :width: 300px

          Circle selection

     - .. figure:: /images/Object-Selection-Circle2.jpg
          :width: 320px

          ...with huge circle


Menu Selection
==============

The selection methods described above are the most common.
There are also many more options accessible through the *Select* menu of the 3D view.

Each is more adapted to certain operations.


Select Grouped
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode*
   | Menu:     *Select* --> *Grouped*
   | Hotkey:   :kbd:`Shift-G`


.. figure:: /images/Object-Selection-Grouped.jpg

   Select Grouped menu


There are two ways to organize the objects in relation to one another.
The first one is *parenting*, and the second is simple *grouping*.
We can use these relationships to our advantage by selecting members of respective families or
groups.


Options
^^^^^^^

*Select* --> *Grouped* in *Object mode* uses the active object as a basis to select all others.

Available options are:

Children
   Selects all children of the active object recursively.
Immediate Children
   Selects all direct children of the active object.
Parent
   Selects the parent of this object if it has one.
Siblings
   Select objects that have the same parent as the active object.
   This can also be used to select all root level objects (objects with no parents).
Type
   Select objects that are the same type as the active one.
Layer
   Objects that have at least one shared layer.
Group
   Objects that are part of a group (rendered green with the default theme)
   will be selected if they are in one of the groups that the active object is in.
Object Hooks
   Every hook that belongs to the active object.
Pass
   Select objects assigned to the same render pass.
   Render passes are set in *Properties* --> *Object* --> *Relations* and can be used in the *Node Compositor*
   (*Add* --> *Convertor* --> *ID Mask*.)
Color
   Select objects with same *Object Color*.
   Object colors are set in *Properties* --> *Object* --> *Display* --> *Object Color*.)
Properties
   Select objects with same *Game Engine* *Properties*.
Keying Set
   Select objects included in active Keying Set.
Lamp Type
   Select matching lamp types.
Pass Index
   Select matching object pass index.


Select linked
-------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Menu:     *Select* --> *Linked*
   | Hotkey:   :kbd:`Shift-L`


Selects all objects which share a common data-block with the active object.


Options
^^^^^^^

*Select* --> *Linked* in *Object mode* uses the active object as a basis to select all others.

Available options are:

Object Data
   Selects every object that is linked to the same Object Data, i.e.
   the data-block that specifies the type (mesh, curve, etc.) and the build
   (constitutive elements like vertices, control vertices, and where they are in space) of the object.
Material
   Selects every object that is linked to the same material data-block.
Texture
   Selects every object that is linked to the same texture data-block.
Dupligroup
   Selects all objects that use the same **Group** for duplication.
Particle System
   Selects all objects that use the same **Particle System**
Library
   Selects all objects that are in the same
   `Library <http://wiki.blender.org/index.php/Dev:2.5/Source/Data_system/LibraryBrowser>`__
   `Library (Object Data)`


Select All by Type
------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Menu:     *Select* --> *Select All by Type*
   | Hotkey:   None


The types are *Mesh*, *Curve*, *Surface*, *Meta*,
*Font*, *Armature*, *Lattice*, *Empty*,
*Camera*, *Lamp*, *Speaker*.

With this tool it becomes possible to select every **visible** object of a certain type in
one go.


Options
^^^^^^^

*Select All by Type* in *Object* mode offers an option for every type
of object that can be described by the *ObData* data-block.

Just take your pick.


Select All by Layer
-------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Menu:     *Select* --> *Select All by Layer*
   | Hotkey:   None


.. figure:: /images/Object-Selection-AllByLayer.jpg

   All by Layer selection menu


Layers are another means to regroup your objects to suit your purpose.

This option allows the selection of every single object that belongs to a given layer,
visible or not, in one single command.

.. Comment: <!--Not implemented yet?:
   This selection is added to anything that was already selected at that moment. --> .


Options
^^^^^^^

In the *Tool Shelf* --> *Select by Layer* the following options are available:

Match
   The match type for selection.
Extend
   Enable to add objects to current selection rather than replacing the current selection.
Layer
   The layer on which the objects are.


.. tip:: Selection of Objects

   Rather than using the *Select All by Layer* option,
   it might be more efficient to make the needed layers visible and use :kbd:`A` on them.
   This method also allows objects to be deselected.


Other Menu Options
------------------

Available options on the first level of the menu are:

Select Pattern...
   Selects all objects whose name matches a given pattern.
   Supported wildcards: * matches everything, ? matches any single character,
   [abc] matches characters in "abc", and [!abc] match any character not in "abc".
   The matching can be chosen to be case sensitive or not.
   As an example *house* matches any name that contains "house", while floor* matches any name starting with "floor".

Select Camera
   Select the active camera.

Mirror (:kbd:`Shift-Ctrl-M`)
   Select the Mirror objects of the selected object eg. L.sword --> R.sword.

Random
   Randomly selects unselected objects based on percentage probability on currently active layers.
   On selecting the command a numerical selection box becomes available in the *Tool Shelf*.
   It's important to note that the percentage represents the likelihood of an unselected object being
   selected and not the percentage amount of objects that will be selected.

Inverse (:kbd:`Ctrl-I`)
   Selects all objects that were not selected while deselecting all those which were.

(De)select All (:kbd:`A`)
   If anything was selected it is first deselected.
   Otherwise it toggles between selecting and deselecting every visible object.
