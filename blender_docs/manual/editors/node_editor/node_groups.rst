***********
Node Groups
***********

Both material and composite nodes can be grouped. Grouping nodes can simplify the node network layout in the node
editor, making your material or composite 'noodle' (node network) easier to work with. Grouping nodes also creates
what are called NodeGroups (inside a .blend file) or NodeTrees (when appending).

Conceptually, "grouping" allows you to specify a *set* of nodes that you can treat as though it were "just one node".
You can then re-use it one or more times in this or some other .blend file(s).

As an example:  If you have created a material using nodes that you would like to use in another .blend file, you
*could* simply append the material from one .blend file to another. However, what if you would like to create a
new material, and use a branch from an existing material node network? You could re-create the branch. Or you could
append the material to the new .blend file, then cut and paste the branch that you want into the new material. Both
of these options work, but are not very efficient when working across different .blend files. A better method of
re-use, for either material node branches or composite node networks, would be to create groups of nodes.

Once a group has been defined, it becomes an opaque object; a reusable software component. You can (if you choose)
ignore exactly how it is *defined,* and simply use it as many times as you like.

Grouping Nodes
==============

To create a node group, in the node editor, select the nodes you want to include, then press :kbd:`Ctrl-G` or
:menuselection:`Group --> Make Group` (:kbd:`Shift-A`). A node group will have a green title bar. All of the
selected nodes will now be contained within the group node. Default naming for the node group is
*NodeGroup,* *NodeGroup.001* etc. There is a name field in the node group you can click into to change the name
of the group. Change the name of the node group to something meaningful. When appending node groups from one .blend
file to another, Blender does not make a distinction between material node groups or composite node groups, so it's
recommended some naming convention that will allow you to easily distinguish between the two types.

.. note::
   **What not to include in your groups (all types of Node editors)**

   Remember that the essential idea is that a group should be an easily-reusable,
   self-contained software component. Material node groups should **not include**:

   Input nodes
       if you include a source node in your group,
       you'll end up having the source node appearing *twice:* once inside the group,
       and once outside the group in the new material node-network.

   Output node
        if you include an output node in the group, there won't be an output socket available *from* the group!


Editing Node Groups
===================

With a group node selected, :kbd:`Tab` expands the node to a window frame, and the individual nodes within
it are shown. You can move them around, play with their individual controls, re-thread them internally, etc.
just like you can if they were a normal part of your editor window. You will not be able, though, to thread them to a
node outside the group; you have to use the external sockets on the side of the group node. To add or
remove nodes from the group, you need to ungroup them.


Ungrouping Nodes
================

The :kbd:`Alt-G` command removes the group and places the individual nodes into your editor workspace. No internal
connections are lost, and now you can thread internal nodes to other nodes in your workspace.


Appending Node Groups
=====================

Once you have appended a NodeTree to your .blend file, you can make use of it in the node editor by pressing
:kbd:`Shift-A`: :menuselection:`Add --> Group`, then select the appended group.
The "control panel" of the Group is the individual controls for the grouped nodes.
You can change them by working with the Group node like any other node.

