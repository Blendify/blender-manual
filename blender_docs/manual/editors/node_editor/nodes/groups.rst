
***********
Node Groups
***********

Grouping nodes can simplify a node tree by allowing instancing and hiding parts of the tree.
Both material and composite nodes can be grouped.

Conceptually, grouping nodes allows you to specify a *set* of nodes that you can treat as
though it were "just one node". Node groups are similar to functions in programming.
You can then re-use it inside, which are then called "NodeGroups",
or in other blend-file(s), when appending called "NodeTrees".

As an example:  If you have created a material that you would like to use with different inputs
e.g. diffuse color: red plastic, green plastic. You could create different materials with *Make Single User*
for each different color with a copy of the tree part describing the plastic material.
If you like to edit the material you would need to redo the edit on all materials.
A better method of re-use is to create node groups, exposing only the variable inputs (e.g. diffuse color).

Also nested node groups are supported. I.e. a node group can be inserted or created inside another node group.

.. note:: Recursion

   Recursive node groups are prohibited for all the current node systems to prevent infinite recursion.
   A node group can never contain itself (or another group that contains it).


Make Group
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Group --> Make Group`
   | Hotkey:   :kbd:`Ctrl-G`

To create a node group, in the Node editor, select the nodes you want to include, then
press :kbd:`Ctrl-G`, :menuselection:`Group --> Make Group`.
A node group will have a green title bar. All of the selected nodes will now be contained within the group node.
Default naming for the node group is "NodeGroup", "NodeGroup.001" etc.
There is a name field in the node group you can click into to change the name of the group.
Change the name of the node group to something meaningful.
When appending node groups from one blend file to another,
Blender does not make a distinction between material node groups or composite node groups,
so it is recommended some naming convention, that will allow you to easily distinguish between the two types.

.. tip::

   What **not** to include in your groups (all modes of Node editors)

   Remember that the essential idea is that a group should be an easily-reusable,
   self-contained software component. Material node groups should **not** include:

   Input nodes
      If you include a source node in your group,
      you will end up having the source node appearing *twice*: once inside the group,
      and once outside the group in the new material node-network.
   Output node
      If you include an output node in the group, there will not be an output socket available *from* the group!


Edit Group
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Group --> Edit Group`
   | Header:   :menuselection:`Go to Parent Node Tree`
   | Hotkey:   :kbd:`Tab`, :kbd:`Ctrl-Tab`

With a group node selected, :kbd:`Tab` expands the node to a frame, and the individual nodes within
it are shown. You can move them around, play with their individual controls, re-thread them internally, etc.
just like you can if they were a normal part of the editor view. You will not be able, though, to thread them to a
node outside the group; you have to use the external sockets on the side of the group node. To add or
remove nodes from the group, you need to ungroup them.
While :kbd:`Tab` can be used to both enter and exit a group, :kbd:`Ctrl-Tab` only exits.


Interface
---------

Interactively
^^^^^^^^^^^^^

The Input/Output sockets are part of the regular nodes Group Input/Group Output.

ToDo.


Panel
^^^^^

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Panel:    :menuselection:`Properties region --> Interface`

Sockets can be added or removed, descriptive names can be added and the details of the input data value defined here.

ToDo.


Ungroup
=======

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Group --> Ungroup`
   | Hotkey:   :kbd:`Alt-G`

The :kbd:`Alt-G` command removes the group and places the individual nodes into your editor workspace.
No internal connections are lost, and now you can thread internal nodes to other nodes in your workspace.


Group Insert
============

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Group --> Group Insert`

ToDo.

.. move node into selected group


Adding a Group Instance
=======================

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Add --> Group`

ToDo.


Appending Node Groups
=====================

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Menu:     :menuselection:`Info Editor --> File --> Link/Append`


Once you have appended a NodeTree to your blend-file, you can make use of it in the Node editor by
pressing :kbd:`Shift-A`, :menuselection:`Add --> Group`, then select the appended group.
The "control panel" of the Group is the individual controls for the grouped nodes.
You can change them by working with the Group node like any other node.
