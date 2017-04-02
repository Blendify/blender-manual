
****
Menu
****

There are also many more options accessible through the *Select* menu of the 3D View.
Each is more adapted to certain operations.


.. _select-grouped:

Select Grouped
==============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Select --> Grouped`
   | Hotkey:   :kbd:`Shift-G`


There are two ways to organize the objects in relation to one another.
The first one is *parenting*, and the second is simple *grouping*.
These relationships to an artist's advantage by selecting members of respective families or groups.
*Select Grouped* uses the active object as a basis to select all others.


Options
-------

Children
   Selects all hierarchical descendants of the active object.
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
   If the active object belongs to more than one group,
   a list will pop up so that we can select which group to select.
Object Hooks
   Every hook that belongs to the active object.
Pass
   Select objects assigned to the same :ref:`render pass <render-cycles-passes>`.
Color
   Select objects with same :ref:`Object Color <objects-display-object-color>`.
Properties
   Select objects with same :doc:`Game Engine Properties </game_engine/logic/properties>`.
Keying Set
   Select objects included in the active :doc:`Keying Set </animation/keyframes/keying_sets>`.
Lamp Type
   Select matching lamp types.
Pass Index
   Select matching object pass index.


Select Linked
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Select --> Linked`
   | Hotkey:   :kbd:`Shift-L`


Selects all objects which share a common data-block with the active object.
*Select Linked* uses the active object as a basis to select all others.


Options
-------

Object Data
   Selects every object that is linked to the same Object Data, i.e.
   the data-block that specifies the type (mesh, curve, etc.) and the build
   (constitutive elements like vertices, control vertices, and where they are in space) of the object.
Material
   Selects every object that is linked to the same material data-block.
Texture
   Selects every object that is linked to the same texture data-block.
Dupligroup
   Selects all objects that use the same *Group* for duplication.
Particle System
   Selects all objects that use the same *Particle System*.
Library
   Selects all objects that are in the same :doc:`Library </data_system/linked_libraries>`
Library (Object Data)
   Selects all objects that are in the same :doc:`Library </data_system/linked_libraries>`
   and limited to *object data*.


Select All by Type
==================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Select --> Select All by Type`
   | Hotkey:   None


With this tool, it becomes possible to select objects of a certain type in one go.


Options
-------

The types are Mesh, Curve, Surface, Meta, Font,
Armature, Lattice, Empty, Camera, Lamp, Speaker.


Select All by Layer
===================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Select --> Select All by Layer`
   | Hotkey:   None

.. figure:: /images/editors_3dview_select_allbylayer.png
   :align: right

   All by Layer selection menu.

This option allows the selection of every single object that belongs to a given layer.
Selected objects become visible.

.. Comment: Not implemented yet?:
   This selection is added to anything that was already selected at that moment.


Options
-------

Match
   The match type for selection.
Extend
   Enable to add objects to current selection rather than replacing the current selection.
Layer
   The layer on which the objects are.

.. tip:: Selection of Objects

   Rather than using the :menuselection:`Select All by Layer` option,
   it might be more efficient to make the needed layers visible and use :kbd:`A` on them.
   This method also allows objects to be deselected.


More/Less
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Menu:     :menuselection:`Select --> More/Less`
   | Hotkey:   :kbd:`Ctrl-NumpadPlus`, :kbd:`Ctrl-NumpadMinus`


Their purpose, based on the hierarchical.

More
   Select connected parent/child objects.
Less
   Deselect objects at the boundaries of parent/child relationships.
Parent
   ToDo.
Child
   ToDo.
Extend Parent
   Extends the selection to the parent of the selection.
   ToDo: active object.
Extend Child
   ToDo.


Other Menu Options
==================

Available options on the first level of the menu are:

(De)select All :kbd:`A`
   If anything was selected it is first deselected.
   Otherwise it toggles between selecting and deselecting every visible object.

   Action
      Select, Deselect, Invert, Toggle
Inverse :kbd:`Ctrl-I`
   Selects all objects that were not selected, while deselecting all those which were.
Random
   Randomly selects unselected objects based on percentage probability on currently active layers.
   On selecting the operator a numerical selection box becomes available in the *Tool Shelf*.
   It is important to note that the percentage represents the likelihood of an unselected object being
   selected and not the percentage amount of objects that will be selected.
Mirror :kbd:`Shift-Ctrl-M`
   Select the Mirror objects of the selected object, based on their names.
   e.g. "sword.L" and "sword.R".
Select Camera
   Select the active camera.
Select Pattern
   Selects all objects whose name matches a given pattern.
   Supported wildcards: \* matches everything, ? matches any single character,
   [abc] matches characters in "abc", and [!abc] match any character not in "abc".
   As an example \*house\* matches any name that contains "house",
   while floor\* matches any name starting with "floor".

   Case Sensitive
      The matching can be chosen to be case sensitive or not.
   Extend
      When *Extend* checkbox is checked the selection is extended instead of generating a new one.
