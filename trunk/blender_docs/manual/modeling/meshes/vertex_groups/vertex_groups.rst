
*************
Vertex Groups
*************

.. figure:: /images/modeling_meshes_vgroups_01.jpg
   :align: right

   The Vertex Group Panel.

Vertex Groups are mainly used to tag the vertices belonging
to parts of a Mesh Object or :term:`Lattice`. Think of the legs of a chair or
the hinges of a door, or hands, arms, limbs, head, feet, etc. of a character.
In addition you can assign different *weight values*
(in the range [ 0.0, 1.0 ] ) to the vertices within a Vertex Group.
Hence Vertex Groups are sometimes also named *Weight Groups*.

Vertex Groups are most commonly used for Armatures
(See also :doc:`Skinning Mesh Objects </rigging/skinning/obdata>`).
But they are also used in many other areas of Blender, like for example:

- Shape keys
- Modifiers
- Particle Generators
- Physics Simulations

Many more usage scenarios are possible.
Actually you can use Vertex Groups for whatever makes sense to you.
In some contexts Vertex Groups can also be automatically generated
(i.e. for rigged objects). However, in this section we will focus
on manually created (user-defined) Vertex Groups.

.. note:: Vertex groups only apply to Mesh and Lattice Objects

   Any other Object type has no vertices, hence it cannot have Vertex Groups.


Typical usage scenarios for Vertex groups
=========================================

Skinning an armature
   If you want to animate your mesh and make it move, you will
   define an armature which consists of a bunch of bones.
   Vertex Groups are used to associate parts of the Mesh
   to Bones of the Armature, where you can specify an influence
   *weight* in the range (0.0 - 1.0) for each vertex
   in the Vertex Group.

Working with Modifiers
   Many modifiers contain the ability to control the modifier
   influence on each vertex separately.
   This is also done via Vertex Groups and the weight values
   associated to the vertices.

Quickly select/edit/hide parts of a mesh
   By defining mesh regions with Vertex Groups you can easily
   select entire parts of your mesh with three clicks and work
   on them in isolation without having to create separate objects.
   With the hide function you can even remove a vertex
   group from the view (for later unhide).

Cull out and duplicate parts of a mesh
   Consider modeling a Lego block. The most simple brick consists
   of a base and a stud (the bump to connect the bricks together).
   To create a four-stud block, you would want to be able to
   easily select the stud vertices, and, still in
   *Edit Mode*, duplicate them and position them
   where you want them.


Creating Vertex Groups
======================

.. figure:: /images/modeling-meshes-vertex-group-panel-empty.png
   :align: right

   Empty Vertex Group Panel.


Vertex Groups are maintained within the *Object Data* Properties Editor (1),
and there in the *Vertex Groups* panel.
As long as no Vertex groups are defined (the default for new Mesh Objects),
the Panel is empty (2).

You create a vertex group by :kbd:`LMB` *+* on the right Panel
border (3). Initially the group is named *Group*
(or *Group.nnn* when the name already exists) and gets displayed in the Panel (2)
(see next image).

Vertex Groups Panel Controls
----------------------------

.. figure:: /images/modeling-meshes-vertex-group-panel-one.jpg
   :align: right

   One Vertex Group.

Once a new Vertex Group has been added, the new Group appears in the
vertex Groups panel. There you find three clickable elements:


Group Name
   The Groupname can be changed by double clicking :kbd:`LMB` on the name itself.
   Then you can edit the name as you like.

Plus Icon
   When the little icon in the left lower corner can be clicked, a new
   row opens up where you can enter a search term. This becomes handy when
   the number of vertex groups gets big.

Drag Handle
   If you have a large number of vertex groups and you want to see more
   then a few Groups, you can :kbd:`LMB` on the small drag handle to tear
   the vertex groups list larger or smaller.

Active Group
   When a Vertex Group is created,
   then it is also automatically marked as the *Active Group*.
   This is indicated by setting the background of the panel entry
   to a light blue color. If you have two or more groups in the list,
   then you can change the active group by :kbd:`LMB` on the
   corresponding entry in the Vertex Group panel.


Deleting vertex Groups
======================

.. figure:: /images/modeling-meshes-vertex-group-panel-dg.png
   :align: right

   Delete a Vertex Group.

You delete a Vertex Group by first making it the active group
(select it in the panel) and then :kbd:`LMB`
the *-* button at the right Panel border.

Deleting a Vertex Group only deletes the vertex assignments to the Group.
The vertices themselves are not deleted.


Locking Vertex Groups
=====================

.. figure:: /images/modeling-meshes-vertex-group-panel-lg.png
   :align: right

   Lock a Vertex Group.


Right after creation of a Vertex Group,
an open lock icon shows up on the right side of the Vertex Group List entry.
This icon indicates that the Vertex Group can be edited.
You can add vertex assignments to the group or remove assignments from the group.
And you can change it with the weight paint brushes, etc.

When you click on the icon,
it changes to a closed lock icon and all vertex group modifications get disabled.
You can only rename or delete the group, and unlock it again.
No other operations are allowed on locked Vertex Groups,
thus all corresponding function buttons become disabled for locked Vertex Groups.


Working with Content of Vertex Groups
=====================================

.. figure:: /images/modeling-meshes-vertex-group-panel-one.jpg
   :align: right

   Vertex Group Panel in Edit Mode.


When you switch either to *Edit Mode* or to *Weight Paint Mode* Vertex
Selection Mode, then the Vertex Group panel expands and displays two more rows:

The first row contains four buttons for maintaining the Assign- and
Select- status of vertices of the active Vertex Group:

Assign
   To assign the Selected vertices to the Group with the weight as defined in the "Weight:" input field (see below)
Remove
   To Remove the selected vertices from the Group (and thus also delete their weight values)
Select
   To Select all vertices contained in the Group
Deselect
   To deselect all verts contained in the group

Below this row of buttons you see a numeric "Weight:" input field where you specify the weight
value that gets assigned to the selected verts when you press the Assign Button.


Assigning verts to a Group
--------------------------

.. figure:: /images/modeling-meshes-vertex-group-panel-assign.png
   :align: right

   Assign weights to active group.


You add vertices to a group as follows:

- Select the group from the group list, thus make it the Active Group (1).
- From the 3D View select :kbd:`Shift-RMB` all vertices that you want to add to the group.
- Set the weight value that shall be assigned to all selected verts (2).
- :kbd:`LMB` the *Assign* button to assign the selected verts to the active group using the given weight (3).

Note that weight Assignment is not available for locked Vertex Groups.
The Assign button is grayed out in that case.

.. note:: Assign is additive

   The *Assign* button only adds the currently
   selected vertices to the active group. Vertices already
   assigned to the group are not removed from the group.

   Also keep in mind that a vertex can be assigned to multiple groups.


Checking Assignments
--------------------

To be sure the selected verts are in the desired Vertex Group,
you can try press the deselect button.
If the vertices remain selected then they are not yet in the current Vertex Group.

At this point you may assign then, but take care since all selected vertices
will have their weight set to the value in the *Weight:* field.


Removing assignments from a Group
---------------------------------

You remove vertices from a group as follows:

- Select the group from the group list (make it the active group).
- Select all vertices that you want to remove from the group.
- Press the *Remove* button.

Note that Removing weight Assignments is not available for locked Vertex Groups.
The Remove button is grayed out in that case.


Using groups for Selecting/Deselecting
--------------------------------------

You can quickly select all assigned vertices of a group:

- (optionally) press :kbd:`A` once or twice to unselect all vertices.
- Select the group from the group list (make it the active group).
- When you now :kbd:`LMB` click the *Select* button,
  then the vertices assigned to the active group will be selected and highlighted in the 3D View.
- When you :kbd:`LMB` click the *Deselect* button instead,
  then the vertices assigned to the active group will be deselected in the 3D View.

.. note:: Selecting/Deselecting is additive

   If you already have verts selected in the 3D View,
   then selecting the verts of a group will add the verts
   but also keep the already-selected verts selected.
   Vice versa, deselecting the verts of a vertex group
   will only deselect the verts assigned to the group
   and keep all other verts selected.


Finding ungrouped verts
-----------------------

You can find ungrouped vertices as follows:

- Press :kbd:`A` once or twice to unselect all vertices.
- In the header of the 3D View: Navigate to :menuselection:`Select --> Ungrouped verts`


Keyboard Shortcuts
------------------

.. figure:: /images/modeling-meshes-vertex-group-pop-up.png
   :align: right

   Vertex Groups pop-up menu.


In Edit Mode you can press :kbd:`Ctrl-G` to a shortcut Menu for adding/removing verts to/from groups.
The pop-up menu provides the following functions with obvious functionality:
(also available via :menuselection:`Mesh --> Vertices --> Vertex Groups`)

- Assign to New Group
- Assign to Active Group
- Remove from Active Group
- Remove from All


Vertex Group Management
=======================

.. container:: lead

   .. clear

.. figure:: /images/modeling-meshes-vertex-group-list-popup.png
   :align: right

   Vertex groups panel's pop-up menu.


Vertex Groups provide a more complex set of functions
inside a pop-up menu. This menu is accessible
from the Vertex Group Panel by clicking on the
dark gray *arrow down* icon on the right panel border.

The following functions of the pop-up menu operate on the assigned vertices:

Sort Vertex Groups
   Sorts Vertex Groups alphabetically.

Copy Vertex Group
   Add a Copy of the active Vertex Group as a new Group.
   The new group will be named like the original group with "_copy" appended at the end of its name.
   And it will contain associations to exactly the same verts
   with the exact same weights as in the source vertex group.

Copy Vertex Groups to Linked
   Copy Vertex Groups of this Mesh to all linked Objects which use the same mesh data (all users of the data).

Copy Vertex Group to Selected
   Copy all Vertex Groups to other Selected Objects provided they have matching indices
   (typically this is true for copies of the mesh which are only deformed and not otherwise edited).

Mirror Vertex Group
   Mirror all Vertex Groups, flip weights and/or names, editing only selected vertices,
   flipping when both sides are selected; otherwise copy from unselected.
   Note this function will be reworked (and fully documented) in a future release.

Remove from All Groups
   (not available for locked groups) Unassigns the selected Vertices from all groups.
   After this operation has been performed, the verts will no longer be contained in any vertex group.

Clear Active Group
   Remove all assigned vertices from the active Group. The group is made empty.
   Note that the vertices may still be assigned to other Vertex Groups of the Object.
   (not available for locked groups).

Delete All Groups
   Remove all Vertex Groups from the Object.

The following functions operate only on the lock state settings:

Lock All
   Lock all groups

Unlock All
   Unlock all groups

Lock_Invert All
   Invert Group Locks


.. hint::

   Multiple objects sharing the same mesh data have the
   peculiar property that the group names are stored on the object,
   but the weights in the mesh. This allows you to name groups
   differently on each object, but take care because removing a
   vertex group will remove the group from all objects sharing this mesh.
