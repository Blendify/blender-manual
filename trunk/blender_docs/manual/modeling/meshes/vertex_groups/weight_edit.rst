
**************
Weight Editing
**************

.. figure:: /images/modeling-meshes-vertex-weights-panel-overview.jpg
   :width: 235px

   Vertex Weights Panel.


As mentioned before in :doc:`Vertex Groups </modeling/meshes/vertex_groups/index>` each entry
in a Vertex Group also contains a weight value in the range of [0.0,1.0].
Blender provides a *Vertex Weights* panel from where you can get (and edit)
information about the weight values of each Vertex of a mesh.
That is: to which Vertex Groups the vertex is assigned with which weight value.

The Vertex Weights panel can be found in the right Properties region of the 3D View.
It is available in Edit Mode and in Weight Paint Mode
(when Vertex Selection masking is enabled as well). The panel is separated into the sections

- Vertex Group Categories (1)
- Weight Table (2)
- Function bar (3)


Vertex Group Categories
=======================

Actually we do not have any strict categories of Vertex Groups in Blender.
Technically they all behave the same way.
However, we can identify two implicit categories of Vertex Groups:


Deform Groups
-------------

These Vertex Groups are sometimes also named *Weight Groups* or *Weight Maps*.
They are used for defining the weight tables of Armature bones.
All Deform Groups of an Object are strictly related to each other via their weight values.

Strictly speaking, the sum of all deform weights for any vertex of a mesh should be exactly 1.
0. In Blender this constraint is a bit relaxed (see below). Nevertheless,
Deform Groups should always be seen as related to each other. Hence we have provided a filter
that allows restricting the Vertex Weight panel to display only the Deform bones of an Object.


Other Groups
------------

All other usages of Vertex Groups are summarized into the *Other* category.
These vertex groups can be found within Shape keys, Modifiers, etc...
There is really no good name for this category,
so we kept it simple and named it *Other*.


Weight Table
============

The Weight Table shows all weights associated to the *active vertex*.
Note that a vertex does not necessarily have to be associated to any vertex groups.
In that case the Vertex Weights Panel is not displayed.

.. tip:: The active Vertex

   That is the most recently selected vertex.
   This vertex is always highlighted so that you can see it easily in the mesh.
   If the active Vertex does not have weights, or there is no active vertex selected at the moment,
   then the Vertex Weights Panel disappears.


Each row in the Weight table contains four active elements:

.. figure:: /images/modeling-mesh_vertex-weight-editor-name.jpg
   :width: 335px

   Change Active Group.


Set the Active Group
--------------------

As soon as you select any of the Vertex Group Names in the Weight table,
the referenced Vertex Group becomes the new Active group.

.. figure:: /images/modeling-meshes-vertex-weights-show.jpg
   :width: 235px

   Enable display of Weights in Edit Mode.


Display Weights in Edit Mode
----------------------------

When you are in edit mode, you can make the Weights of the active Group visible on the mesh:

Search the *Mesh Display* panel in the Properties region.
And there enable the *Show Weights* option.
Now you can see the weights of the active Vertex Group displayed on the mesh surface.

.. figure:: /images/modeling-meshes-weights-in-edit-mode.jpg
   :width: 235px

   Weights in Edit Mode.


Edit Weights in Edit Mode
-------------------------

It is now very easy to work with Vertex Groups in Edit Mode. All edit options of the mesh are
available and you have direct visual control over how your Weights change when you edit the
weight values.

.. figure:: /images/modeling_mesh_vertex-weight-editor-weight.jpg
   :width: 235px

   Change Weight Value.


Change a weight
---------------

You can either enter a new weight value manually (click on the number and edit the value),
or you can change the weight by :kbd:`LMB` and while holding down the mouse button,
drag right or left to increase/decrease the weight value. You also can use the right/left
arrows displayed around the weight value to change the weight in steps.

.. figure:: /images/modeling_mesh_vertex-weight-editor-paste.jpg
   :width: 235px

   Paste weights.


Paste a weight to other verts
-----------------------------

:kbd:`LMB` the Paste Icon allows you to forward a single weight of the active Vertex to all selected vertices.
But note that weights are only pasted to verts which already have a weight value in the affected Vertex Group.

.. figure:: /images/modeling-meshes-vertex-weight-editor-delete.jpg
   :width: 235px

   Delete weights.


Delete a weight from a Group
----------------------------

:kbd:`LMB` the Delete Icon will instantly remove the weight from the active vertex.
Thus the entire row disappears when you click on the delete icon.


Function bar
============

.. figure:: /images/modeling-meshes-vertex-weight-editor-functions.jpg
   :width: 235px

   Vertex Weights panel.


The function bar contains two functions:

Normalize
   Normalizes the weights of the active Vertex.
   That is all weights of the active vertex are recalculated
   such that their relative weight is maintained and the weight sum is 1.0.
Copy
   Copies all weights defined for the active Vertex to all selected Verts.
   Thus all previously defined weights are overwritten.


.. tip:: The filter setting is respected

   Note that both functions only work on the Vertex Groups currently displayed in the Weights Table.
   So if for example only the *Deform weights* are displayed,
   then Normalize and Copy only affect the Deform bones.


About locked Vertex Groups
==========================

.. figure:: /images/modeling-meshes-vertex-weight-editor-locked.jpg
   :width: 235px

   Vertex Weights panel Locked.


Whenever a Weight Group is locked, all data changing functions get disabled:

- Normalize the vertex Weights.
- Copy the Vertex weights.
- Change the Weight of the active vert.
- Paste to selected verts.


.. tip:: The filter setting is respected

   If you have for example all deform weight groups unlocked and all other vertex groups locked,
   then you can safely select *Deform* from the Filter row
   and use all available functions from the Weight table again.
