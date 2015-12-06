
.. _grouping-objects:

****************
Grouping objects
****************

.. figure:: /images/Modeling-Objects-Parenting-Exampel-GroupedObj.jpg

   Grouped objects

There can be many objects in a scene: A typical stage scene consists of furniture, props,
lights, and backdrops.
Blender helps you keep everything organized by allowing you to group like objects together.

Group objects together without any kind of transformation relationship.
Use groups to just logically organize your scene,
or to facilitate one-step appending or linking between files or across scenes.
Objects that are part of a group always shows as light green when selected; see image
(*Grouped objects*).


Options
=======

Creating a Group
   :kbd:`Ctrl-G` creates a new group and adds the selected object(s) to it.


.. figure:: /images/Modeling-Objects-Grouping-ObjProp.jpg

   Naming a Group


Naming a Group
   All groups that an object has been assigned to are listed in the *Object Properties Panel* 's *Relations* panel.
   To rename a group, simply click in the groups name field.
   To name groups in the *Outliner* window, select *Groups* as the outliner display from the header combo box,
   and :kbd:`Ctrl-LMB` click on the group name.
   The name will change to an editable field; make your changes and press :kbd:`Return`.
Restricting Group Contents via Layers
   The cluster of layer buttons attached to each group determines from
   which layers the group objects will be included when duplicated.
   If your group contains objects on layers 10, 11 and 12, but you disable the layer 12 button in the group controls,
   duplicates of that group (using the :doc:`Dupligroup </editors/3dview/transform/duplication/dupligroup>` feature)
   will only show the portions of the group that reside in layers 10 and 11.
Appending or Linking Groups
   To append a group from another ``.blend`` file,
   consult :doc:`this page </data_system/linked_libraries>`.
   In summary, :menuselection:`File --> Link / Append Link` Select a ``.blend`` file and, and then the group.
Removing Groups
   To remove a object from a group, under the object context button, open the "Groups" pane.
   Find the name of the group from which you wish to remove the object,
   and click the x to the right of the group name.


Select Grouped
==============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object mode*
   | Menu:     *Select* --> *Grouped*
   | Hotkey:   :kbd:`Shift-G`


Select objects by parenting and grouping characteristics.
See :doc:`Select Grouped </editors/3dview/selecting>` for more information.
