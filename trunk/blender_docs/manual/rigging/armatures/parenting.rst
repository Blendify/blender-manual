
**********************
Armature Deform Parent
**********************

An Armature in Blender can be thought of as similar to the armature of a real skeleton,
and just like a real skeleton an Armature can consist of many bones. These bones can be moved
around and anything that they are attached to or associated with will move and deform in a
similar way.

In Blender Armature Object Types are usually used to associate certain bones of an Armature to
certain parts of a Mesh Object Types Mesh Geometry.
You are then able to move the Armature Bones and the Mesh Object will deform.

.. figure:: /images/sq-3dvieweditorheader-objectmenu-parent-armature_deform.png

   Bone associated with Mesh Object.


Armature Deform Parenting is one of the most flexible ways of associating Bones in an Armature
to another Object, it gives a lot of freedom but that comes at the price of a little complexity,
as there are multiple steps involved in setting up *Armature Deform Parenting*
such that deformations are actually carried out.

Blender has several different ways of Parenting an Armature to an object,
most of them can automate several of the steps involved,
but all of them ultimately do all the steps we describe for Armature Deform Parenting.

Using the Armature Deform Parenting operator is the first step in setting up the relationship
between an Armature Object and its Child Objects.

To use Armature Deform Parenting you must first select all the Child Objects that will be
influenced by the Armature and then lastly, select the Armature Object itself. Once all the
Child Objects and the Armature Object are selected press :kbd:`Ctrl-P` and select
Armature Deform in the Set Parent To pop-up menu.

.. figure:: /images/sr-3dvieweditorheader-objectmenu-parent-armature_deform.png

   Set Parent To menu with Armature Deform Parenting option highlighted.


Once this is done the Armature Object will be the Parent Object of all the other Child
Objects, also we have informed Blender that the Bones of the Armature Object can be associated
with specific parts of the Child Objects so that they can be directly manipulated by the Bones.

At this point however, all Blender knows is that the Bones of the Armature could be used to
alter the Child Objects,
we have not yet told Blender which Bones can alter which Child Objects or by how much.

To do that we must individually select each Child Object individually and toggle into Edit
Mode on that Child Object. Once in Edit Mode we can then select the vertices we want to be
influenced by the Bones in the Armature. Then with the vertices still selected navigate to
:menuselection:`Properties Editor --> Object Data --> Vertex Groups` and create a new Vertex Group
with the same name as the Bone that you want the selected vertices to be influenced by.

Once the Vertex Group has been created we then assign the selected vertices to the Vertex
Group by clicking the Assign Button. By default when selected vertices are assigned to a
Vertex Group they will have an Influence Weight of 1.0
This means that they are fully influenced when a Bone they are associated with is moved,
if the Influence Weight had been 0.5 then when the bone moves the vertices would only move half as much.

.. figure:: /images/ss-3dvieweditorheader-objectmenu-parent-armature_deform.jpg

   Vertex groups panel with Assign Button and influence Weight Slider highlighted.


Once all these steps have been carried out, the Bones of the Armature Object should be
associated with the Vertex Groups with the same names as the Bones. You can then select the
Armature Object and switch to Pose Mode in the :menuselection:`3D View Editor Header --> Mode Select` menu.

.. figure:: /images/st-3dvieweditorheader-objectmenu-parent-armature_deform.jpg

   Armature Bone in Pose Mode affecting the Mesh Object.

   The bone is highlighted in Cyan.


Once in Pose Mode transforming one of the Bones of the Armature that has been associated with
vertices of an object will result in those vertices also being transformed.


Armature Deform Parent With Empty Groups
========================================

The Armature Deform With Empty Groups parenting method works in almost the same way as
Armature Deform parenting with one difference. That difference is that when you parent a
Child Object to an Armature Object the names of the bones in the armature are copied to the
Child Objects in the form of newly created Vertex Groups,
one for each different deforming armature bone name. The newly created Vertex Groups will be
empty this means they will not have any vertices assigned to those Vertex Groups. You still
must manually select the vertices and assign them to a particular Vertex Group of your
choosing to have bones in the armature influence them.

For example, if you have an Armature Object which consists of three bones named "BoneA",
"BoneB" and "BoneC" and Cube Mesh Object type called "Cube". If you parent the Cube Child Object to
the Armature Parent Object the Cube will get three new Vertex Groups created on it called "BoneA",
"BoneB" and "BoneC". Notice that each Vertex Group is empty.

.. figure:: /images/editors_3dview_header-objectmenu-parent-armature_deform_with_empty_groups-blend.png

   Cube in Edit Mode using Armature Deform with empty groups.


Bones in an Armature can be generally classified into two different types:

- Deforming Bones
- Control Bones

Deforming Bones - Are bones which when transformed will result in vertices associated with
them also transforming in a similar way. Deforming Bones are directly involved in altering
the positions of vertices associated with their bones.

Control Bones - Are Bones which act in a similar way to switches,
in that, they control how other bones or objects react when they are transformed.
A Control Bone could for example act as a sliding switch control when the bone is in one
position to the left it could indicate to other bones that they react in a particular way when
transformed, when the Control Bone is positioned to the right,
transforming other bones or objects could do something completely different.
Control Bones are not directly used to alter the positions of vertices,
in fact, Control Bones often have no vertices directly associated with themselves.

When using the Armature Deform With Empty Groups parenting method Vertex Groups on the Child
Object will only be created for Armature Bones which are setup as Deforming Bone types.
If a Bone is a Control Bone no Vertex Group will be created on the Child Object for that bone.

To check whether a particular bone in an armature is a Deforming Bone simply switch to Pose or Edit Mode
on the armature and select the bone you are interested in by :kbd:`RMB` it.
Once the bone of interest is selected navigate to
:menuselection:`Properties Editor --> Bone --> Deform Panel`
and check if the Deform tickable option is ticked or not. If it is the selected bone is a Deforming Bone,
otherwise, it is a Control Bone.

.. figure:: /images/editors_3dview_parenting_bone-check.png

   Three Bone Armature in *Pose* Mode with 1st bone selected.


Armature Deform With Automatic Weights
======================================

Armature Deform With Automatic Weights parenting feature does everything Armature Deform With Empty Groups does with
one extra thing. That extra thing is that unlike Armature Deform With Empty Groups which leaves the automatically
created Vertex Groups empty with no vertices assigned to them; Armature Deform With Automatic Weight will try to
calculate how much Influence Weight a particular Armature Bone would have on a certain collection of vertices based
on the distance from those vertices to a particular Armature Bone.

Once Blender has calculated the Influence Weight vertices should have it will assign that Influence Weight to the
Vertex Groups that were previously created automatically by Blender on the Child Object when Armature Deform With
Automatic Weights parenting command was carried out.

If all went well it should be possible to select the Armature Object switch it into Pose Mode and transform the bones
of the Armature and the Child Object should deform in response.
Unlike Armature Deform parenting you will not have to create Vertex Groups on the Child Object,
neither will you have to assign Influences Weights to those Vertex Groups, Blender will try to do it for you.

To activate Armature Deform With Automatic Weights you must be in Object Mode or Pose Mode,
then select all the Child Objects (usually Mesh Object Types) and lastly select the Armature Object;
Once done press :kbd:`Ctrl-P` and select the Armature Deform With Automatic Weights from the
Set Parent To pop-up menu.

This method of parenting is certainly easier setup but it can often lead to Armatures which do not deform Child
Objects in ways you would want as Blender can get a little confused when it comes to determining which Bones should
influence certain vertices when calculating Influence Weights for more complex armatures and Child Objects. Symptoms
of this confusion are that when transforming the Armature Object in Pose Mode parts of the Child Objects do not deform
as you expect; If Blender does not give you the results you require you will have to manually alter the Influence
Weights of vertices in relation to the Vertex Groups they belong to and have influence in.


.. TODO - Move this to armature modifier?

Armature Deform With Envelope Weights
=====================================

Works in a similar way to Armature Deform With Automatic Weights in that it will create Vertex
Groups on the Child Objects that have names matching those of the Parent Object Armature Bones.
The created Vertex Groups will then be assigned Influence Weights.
The major difference is in the way those Influence Weights are calculated.

Influence Weights that are calculated when using Armature Deform With Envelope Weights
parenting are calculated entirely visually using Bone Envelopes.

.. _fig-view3d-parent-envelope:

.. figure:: /images/tn-3dvieweditorheader-objectmenu-parent-armature_deform_with_envelope_weights.png

   Single Armature Bone in Edit Mode with Envelope Weight display enabled.

   The gray volume around the bone is the Bone Envelope.


Fig. :ref:`fig-view3d-parent-envelope` shows a single Armature Bone in Edit Mode with Envelope Weight activated.
The gray semi-transparent volume around the bone is the Bone Envelope.

Any Child Object that has vertices inside the volume of the Bone Envelope will be influenced by
the Parent Object Armature when the Armature Deform With Envelope Weights operator is used.
Any vertices outside the Bone Envelope volume will not be influenced.
When the bones are transformed in Pose Mode the results are very different.

.. figure:: /images/to-3dvieweditorheader-objectmenu-parent-armature_deform_with_envelope_weights.jpg

   Two sets of Armatures each with three bones.


The default size of the Bone Envelope volume does not extend very far from the surface of a bone;
You can alter the size of the Bone Envelope volume by clicking on the body of the bone you want to alter,
switch to Edit Mode or Pose Mode and then pressing
:kbd:`Ctrl-Alt-S` then drag your mouse left or right and the Bone Envelope volume will alter accordingly.

.. figure:: /images/tp-3dvieweditorheader-objectmenu-parent-armature_deform_with_envelope_weights.png

   Single Armature Bone with various different Bone Envelope sizes.


You can also alter the Bone Envelope volume by selecting the Bone you wish to alter and
switching to Edit Mode or Pose Mode,
then navigate to :menuselection:`Properties Editor --> Bone --> Deform --> Envelope --> Distance`
then enter a new value into it.

.. figure:: /images/tq-3dvieweditorheader-objectmenu-parent-armature_deform_with_envelope_weights.jpg

   Envelope distance.


Altering the Bone Envelope volume does not alter the size of the Armature Bone just the range
within which it can influence vertices of Child Objects.

You can alter the radius that a bone has by selecting the head, body or tail parts of a bone while in Edit Mode,
and then press :kbd:`Alt-S` and move the mouse left or right.
This will make the selected bone fatter or thinner without altering the thickness of the Bone Envelope volume.

.. figure:: /images/tr-3dvieweditorheader-objectmenu-parent-armature_deform_with_envelope_weights.jpg

   Four Armature Bones all using Envelope Weight.

   The 1st with a default radius value, the three others with differing Tail, Head, and Body radius values.


You can also alter the bone radius by selecting the tail or head of the bone you wish to alter and switching to Edit
Mode, then navigate to :menuselection:`Properties Editor --> Bone --> Deform --> Radius Section`
and entering new values for the *Tail* and *Head* fields.

.. figure:: /images/ts-3dvieweditorheader-objectmenu-parent-armature_deform_with_envelope_weights.jpg

   Deform Radius Section

   Head and tail fields highlighted.

.. note::

   If you alter the Bone Envelope volume of a bone so that you can have it include/exclude
   certain vertices after you have already used Armature Deform With Envelope Weights,
   by default, the newly included/excluded vertices will not be affected by the change. When using
   Armature Deform With Envelope Weights it only calculates which vertices will be affected by
   the Bone Envelope volume at the time of parenting, at which point it creates the required
   named Vertex Groups and assigns vertices to them as required. If you want any vertices to
   take account of the new Bone Envelope volume size you will have to carry out the Armature Deform
   With Envelope Weights parenting again; In fact, all parenting used in the Set Parent To pop-up
   menu which tries to automatically assign vertices to Vertex Groups works like this.
