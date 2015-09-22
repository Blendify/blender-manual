
**********
DupliGroup
**********

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* mode
   | Panel:    *Object* --> *Duplication* --> *Group*


*Duplication Group* or *DupliGroup* allows you to create an instance of a group for each instance of another object.


Basic Usage
===========

- Create a number of objects and group them by
   - selecting them all,
   - :kbd:`Ctrl-G`, and
   - eventually rename your group in *Object* --> *Groups*
- Create a DupliGroup by
   - adding another object (:kbd:`Shift-A`), say an *Empty*,
   - in *Object* --> *Duplication* enable *Group*, and
   - select the name of your newly created group in the selection box that appears.


DupliGroup and Dynamic Linking
==============================

See :doc:`Appending and Linking </data_system/linked_libraries>`
to understand how to dynamically link data from another ``.blend`` file into the current file.
You can dynamically link groups from one blend file to another.
When you do so, the linked group does not appear anywhere in your scene
until you create an object controlling where the group instance appears.


Example
-------

- Link a group from another file into your scene,
  as described in :doc:`Appending and Linking </data_system/linked_libraries>`.

From here, you can use the easy way or the hard way:

- The easy way:
   - Select *Add* --> *Group Instance* --> ``[name of group you just linked]``.
- The hard way:
   - Select *Add* --> *Empty*, and select the empty that you added.
   - Switch to the *Object* context, and in the *Duplication* panel, click *Group*.
   - In the dropdown box that appears next to *Group:*, pick the group that you linked.

At this point, an instance of the group will appear. You can duplicate the empty,
and the DupliGroup settings will be preserved for each empty. This way,
you can get multiple copies of linked data very easily.


Making a DupliGroup Object Real
===============================

Say you want to make further edits on an DupliGroup instance:

Simply select your DupliGroup and press :kbd:`Ctrl-Shift-A` to convert the DupliGroup
into regular objects that can be transformed and animated normally.


.. note::
   Note that if the DupliGroup was linked from an external file the Object Data
   (mesh, materials, textures, transforms) will also still be linked from the original group.
   However, the various object's parent-child relationships do not carry over.

