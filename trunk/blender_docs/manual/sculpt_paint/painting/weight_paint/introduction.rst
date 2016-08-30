.. TODO. Split this page,
   it currently contains more information then just introductory material.

************
Introduction
************

Vertex Groups can potentially have a very large number of associated vertices and thus a large
number of weights (one weight per assigned vertex). *Weight Painting* is a method to
maintain large amounts of weight information in a very intuitive way.
It is primarily used for rigging meshes,
where the vertex groups are used to define the relative bone influences on the mesh.
But we use it also for controlling particle emission, hair density, many modifiers,
shape keys, etc.

The basic principle of the method is: the weight information is literally *painted*
on top of the Mesh body by using a set of Weight brushes.
And since painting is always associated with color, we also need to define ...


Weight Paint in a nutshell
==========================

.. figure:: /images/modeling-meshes-weight-paint-example.jpg

   Weight Painted Vertex Group.


- You enter *Weight Paint Mode* from the Mode Menu :kbd:`Ctrl-Tab`.
  The selected Mesh Object is displayed slightly shaded with a rainbow color spectrum.
- The color visualizes the weights associated to each vertex in the active Vertex Group.
  Blue means unweighted; Red means fully weighted.
- You can customize the colors in the weight gradient by enabling *Custom Weight Paint Range*
  in the *System* tab of the *User Preferences*.
- You assign weights to the vertices of the Object by painting on it with weight brushes.
  Starting to paint on a mesh automatically adds weights to the active Vertex Group
  (a new Vertex Group is created if needed).

.. tip:: Useful Keyboard Shortcuts

   The shortcuts can speed up your weight painting:

   Weight color picker
      :kbd:`Ctrl-LMB` change current weight value to the weight value of clicked vertex
   Resize the brush
      :kbd:`F` then drag to new brush size
   Create linear gradient
      :kbd:`Alt-LMB` then drag
   Create radial gradient
      :kbd:`Alt-Ctrl-LMB` then drag
   Draw a *Clipping Border*
      :kbd:`Alt-B` then drag the clipping border to select the part of the 3D View which shall be kept visible.
      You can then draw only in this part. Press :kbd:`Alt-B` again to remove the *clipping border*.


The weighting Color Code
========================

Weights are visualized by using a cold/hot color system, such that areas of low influence
(with weights close to 0.0) are drawn in blue (cold) and areas of high influence
(with weights close to 1.0) are drawn in red (hot).
And all in-between influences are drawn in rainbow colors, depending on their value (blue,
green, yellow, orange, red).

.. figure:: /images/weight_spec.png
   :width: 610px

   The color spectrum and their respective weights.


In addition to the above described color code, Blender has added (as an option)
a special visual notation for unreferenced vertices: They are drawn in black.
Thus you can see the referenced areas (drawn in cold/hot colors) and the unreferenced areas
(in black) at the same time. This is most practical when you look for weighting errors
(we will get back to this later).

.. note::

   The color spectrum can be changed in the :ref:`User Preferences <prefs-system-weight>`.


Selection Masking
=================

If you have a complex mesh,
it is sometimes not easy to paint on all vertices in Weight Paint Mode.
Suppose you only want to paint on a small area of the Mesh and keep the rest untouched.
This is where *selection masking* comes into play. When this mode is enabled,
a brush will only paint on the selected verts or faces.
The option is available from the header of the 3D View
(see icons surrounded by the yellow frame):

.. figure:: /images/modeling-meshes-weight-paint-select.png

   You can choose between *Face Selection masking* (left icon)
   and *Vertex selection masking* (right icon).


*Select* mode has some advantages over the default *Weight Paint Mode*:

- The original mesh edges are drawn, even when modifiers are active.
- You can select faces to restrict painting to the vertices of the selected faces.
- Selecting tools include:


Details about selecting
-----------------------

The following standard selection operations are supported:

- :kbd:`RMB` - Single faces. Use :kbd:`Shift-RMB` to select multiple.
- :kbd:`A` - All faces, also to de-select.
- :kbd:`B` - Block/Box selection.
- :kbd:`C` - Select with brush.
- :kbd:`L` - Pick linked (under the mouse cursor).
- :kbd:`Ctrl-L` - Select linked.
- :kbd:`Ctrl-I` - Invert selection *Inverse*.

.. tip:: Selecting Deform Groups

   When you are doing weight painting for deform bones (with an Armature),
   you can select a deform group by selecting the corresponding bone.
   However, this Vertex Group selection mode is disabled when Selection Masking is active!


Vertex Selection Masking
------------------------

.. figure:: /images/modeling-meshes-weight-paint-vertex-select.png

   Vertex Selection masking.


In this mode you can select one or more vertices and then paint only on the selection.
All unselected vertices are protected from unintentional changes.

.. note::

   This option can also be toggled with :kbd:`V`.


Face Selection Masking
----------------------

.. list-table::

   * - .. figure:: /images/modeling-meshes-weight-paint-face-select.png

          Face Selection masking.

     - .. figure:: /images/modeling-meshes-weight-paint-face-select-hidden.jpg

          Hidden faces.


The *Face Selection masking* allows you to select faces and limit the weight paint
tool to those faces, very similar to Vertex selection masking.


Hide/Unhide Faces
-----------------

You also can hide selected faces as in Edit Mode with the keyboard Shortcut :kbd:`H`,
then paint on the remaining visible faces and finally unhide the hidden faces again by using
:kbd:`Alt-H`


Hide/Unhide Vertices
--------------------

You cannot directly hide selected faces in vertex mask selection mode.
However, you can use a trick:

#. First go to Face selection mask mode.
#. Select the areas you want to hide and then hide the faces (as explained above).
#. Switch back to Vertex Selection mask mode.

Now the verts belonging to the hidden Faces will remain hidden.


The Clipping Border
-------------------

To constrain the paint area further you can use the *Clipping Border*.
Press :kbd:`Alt-B` and :kbd:`LMB` -drag a rectangular area.
The selected area will be "cut out" as the area of interest.
The rest of the 3D View gets hidden.

.. figure:: /images/modeling-meshes-weight-paint-border-select.jpg

   The Clipping Border is used to select interesting parts for local painting.


You make the entire mesh visible again by pressing :kbd:`Alt-B` a second time.

All weight paint tools that use the view respect this clipping, including border select,
weight gradient and of course brush strokes.


Usage
=====

Weight Painting for Bones
-------------------------

This is one of the main uses of weight painting.
When a bone moves, vertices around the joint should move as well,
but just a little, to mimic the stretching of the skin around the joint.
Use a "light" weight (10 - 40%)
paint on the vertices around the joint so that they move a little when the bone rotates.
While there are ways to automatically assign weights to an armature
(see the :doc:`Armature section </rigging/index>`),
you can do this manually. To do this from scratch, refer to the process below.
To modify automatically assigned weights, jump into the middle of the process where noted:

#. Create an armature.
#. Create a mesh that will be deformed when the armature's bone(s) move.
#. With the mesh selected, create an *Armature* modifier for your mesh
   (located in the Properties editor, *Modifiers* tab).
   Enter the name of the armature.

Pick up here for modifying automatically assigned weights.

#. Select the armature in 3D View, and bring the armature to *Pose Mode*
   with :kbd:`Ctrl-Tab`, or the 3D View header mode selector.
#. Select a desired bone in the armature.
#. Select your mesh with :kbd:`RMB` and change immediately to *Weight Paint Mode*.
   The mesh will be colored according to the weight (degree) that the selected bone movement affects the mesh.
   Initially, it will be all blue (no effect).
#. Weight paint to your heart's content.
   The mesh around the bone itself should be red (generally)
   and fade out through the rainbow to blue for vertices farther away from the bone.

You may select a different bone with :kbd:`RMB` while weight painting,
provided the armature was left in *Pose Mode* as described above.
This will activate the vertex group sharing the name with the selected bone,
and display related weights. If the mesh skins the bones,
you will not be able to see the bones because the mesh is painted.
If so, turn on *X-Ray* view (Properties Editor, *Armature* tab).

If you paint on the mesh, a vertex group is created for the bone.
If you paint on vertices outside the group,
the painted vertices are automatically added to the vertex group.

If you have a symmetrical mesh and a symmetrical armature you can use the option
*X-Mirror*.
Then the mirrored groups with the mirrored weights are automatically created.


Weight Painting for Particles
-----------------------------

.. figure:: /images/weightpaint-particles.jpg

   Weight painted particle emission.

Faces or vertices with zero weight generate no particles. A weight of 0.
1 will result in 10% of the amounts of particles.
This option "conserves" the total indicated number of particles, adjusting the distributions
so that the proper weights are achieved while using the actual number of particles called for.
Use this to make portions of your mesh hairier than others by weight painting a vertex group,
and then calling out the name of the vertex group in the *VGroup:* field
(*Particles* panel, *Object* tab).
