
..    TODO/Review: {{review|copy=X}} .


***********************
Editing Bone Properties
***********************

In this page, you will learn how to edit and control most of the properties for Blender bones -
For editing bones in an armature, you should read the :doc:`previous page </rigging/armatures/editing/bones>` first!
We will see how to manage the bones' relationships (`Chain Editing`_), rename them (`Naming Bones`_), etc.


Transforming Bones
==================

We won't detail here the various transformations of bones, nor things like axis locking, pivot points, and so on,
as they are common to most object editing, and already described
:doc:`here </editors/3dview/transform/transform_control/index>`
(note however that some options, like snapping, do not seem to work, even though they are available...).
The same goes for mirroring,
as it's nearly the same as with :doc:`mesh editing </modeling/meshes/tools/transform_deform#mirror>`.
Just keep in mind that bones' roots and tips behave more or less like meshes' vertices,
and bones themselves act like edges in a mesh.

As you know, bones can have two types of relationships: They can be parented,
and in addition connected. Parented bones behave in *Edit* mode exactly as if they
had no relations - you can grab, rotate, scale, etc.
a parent bone without affecting its descendants. However,
connected bones must always have parent's tips connected to child's roots,
so by transforming a bone, you will affect all its connected parent/children/siblings.


.. figure:: /images/RiggingTransformPropertiesPanelEditMode.jpg
   :width: 200px

   The Transform Properties panel for armatures in Edit mode.


Finally, you can edit in the *Transform Properties* panel (:kbd:`N`)
the positions and radius of both ends of the active selected bone,
as well as its :ref:`roll rotation <armature-bone_roll>`.


Radius and Scaling in Envelope Visualization
--------------------------------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit mode*, *Envelope* visualization
   | Menu:     :menuselection:`Armature --> Transform --> Scale`
   | Hotkey:   :kbd:`S`


When bones are displayed using *Octahedron*, *Stick* or *B-Bone* visualizations,
scaling will behave as expected, similar to scaling mesh objects.
When bones are displayed using *Envelope* visualization, scaling will have a different effect:
it will scale the radius of the selected bones's ends. (see: :doc:`skinning part </rigging/skinning>`).
As you control only one value (the radius), there is no axis locking here. And as usual, with connected bones,
you scale at the same time the radius of the parent's tip and of the children's roots.


.. list-table::
   Scaling of a bone in** *Octahedron* and *Envelope* visualizations.

   * - .. figure:: /images/RiggingBoneSelectExEditModeWholeBone.jpg
          :width: 300px

          A single selected bone...

     - .. figure:: /images/RiggingBoneScalingExEditModeOctahedron.jpg
          :width: 300px

          ...Scaled in Octahedron visualization.

   * - .. figure:: /images/RiggingBoneScalingExEditModeEnvelope1.jpg
          :width: 300px

          A single selected bone...

     - .. figure:: /images/RiggingBoneScalingExEditModeEnvelope2.jpg
          :width: 300px

          ...Scaled in Envelope visualization - its length remains the same, but its ends' radius are bigger.


Note that when you resize a bone (either by directly scaling it,
or by moving one of its ends), Blender automatically adjusts the end-radii of its envelope
proportionally to the size of the modification. Therefore,
it is advisable to place all the bones first, and only then edit these properties.


ScaleB and Envelope
-------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit mode*
   | Hotkey:   :kbd:`Ctrl-Alt-S`


:kbd:`Ctrl-Alt-S` activates a transform tool that is specific to armatures.
It has different behavior depending on the active visualization, as explained below:

In *Envelope* visualization, it allows you to edit the influence of the selected bones
(their *Dist* property, see the :doc:`skinning part </rigging/skinning>`) -
as with the "standard" scaling with this visualization (see the previous section),
this is a one-value property, so there is no axis locking and such.


.. list-table::
   Envelope scaling example

   * - .. figure:: /images/RiggingBoneScalingExEditModeEnvelope1.jpg
          :width: 300px

          A single bone selected in Envelope visualization.

     - .. figure:: /images/RiggingBoneAltScalingExEditModeEnvelope.jpg
          :width: 300px

          Its envelope scaled with [ctrl][alt][S].


In the other visualizations, it allows you to edit the "bone size".
This seems to only have a visible effect in *B-Bone* visualization, but is available
also with *Octahedron* and *Stick* ... This tool in this situation has
another specific behavior: While with other transform tools,
the "local axes" means the object's axes, here they are the bone's own axes
(when you lock to a local axis, by pressing the relevant key twice,
the constraint is applied along the selected bone's local axis,
not the armature object's axis).

WARNING! If you have more than one bone selected, using this tool crashes Blender!


.. list-table::
   "Bone size" scaling example

   * - .. figure:: /images/RiggingBoneAltScalingExEditModeBBone1.jpg
          :width: 200px

          A single "default size" bone selected in B-Bone visualization.

     - .. figure:: /images/RiggingBoneAltScalingExEditModeBBone2.jpg
          :width: 200px

          Its size scaled with [ctrl][alt][S].

     - .. figure:: /images/RiggingBoneAltScalingExObjectModeBBone.jpg
          :width: 200px

          The same armature in Object mode and B-Bone visualization, with Bone.004's size scaled up.


Bone Direction
==============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Specials --> Switch Direction`
   | Hotkey:   :kbd:`W-3`


This tool is not available from the *Armature* menu,
but only from the *Specials* pop-up menu(:kbd:`W`).
It allows you to switch the direction of the selected bones (i.e.
their root will become their tip, and vice versa).

*Switching the direction of a bone will generally break the chain(s) it belongs to*.
However, if you switch a whole (part of a) chain, the switched bones will still be parented/connected,
but in "reversed order". See the *Switching example*.


.. list-table::
   Switching example.

   * - .. figure:: /images/RiggingBoneSwitchExEditMode1.jpg
          :width: 300px

          An armature with one selected bone, and one selected chain of three bones, just before switching.

     - .. figure:: /images/RiggingBoneSwitchExEditMode2.jpg
          :width: 300px

          The selected bones have been switched. Bone.005 is no more connected nor parented to anything.
          The chain of switched bones still exists, but reversed (Now Bone.002 is its root, and Bone is its tip).
          Bone.003 is now a free bone.


.. _armature-bone_roll:

Bone Roll
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Armature --> Bone Roll --> ...`
   | Hotkey:   :kbd:`Ctrl-R`, :kbd:`Ctrl-N`


In *Edit* mode, you have options dedicated to the control of the bone roll rotation
(i.e. the rotation around the Y axis of the bone). Each time you add a new bone,
its default roll is so that its Z axis is as perpendicular to the current 3D view as possible.
And each time you transform a bone, Blender tries to determine its best roll...

But this might lead to an unclear armature,
with bones rolled in all angles... nasty! To address this problem, you have three options:

- :menuselection:`Armature --> Bone Roll --> Set Roll`
  (:kbd:`Ctrl-R`) will start a roll-specific rotation, which behaves like any other transform operations
  (i.e. move the mouse and :kbd:`LMB` click to validate, or type a numeric value and press :kbd:`Return`
  or :kbd:`RMB` click or press :kbd:`Esc` to cancel everything).
- :menuselection:`Armature --> Bone Roll --> Clear Roll (Z-Axis Up)`
  (or :kbd:`Ctrl-N-1`:menuselection:`pop-up --> Recalculate Bone Roll Angles --> Clear Roll (Z-Axis Up)`)
  will reset the selected bone roll so that their Z axis is as much as possible aligned with the global Z axis.
- :menuselection:`Armature --> Bone Roll --> Roll to Cursor`
  (or :kbd:`Ctrl-N-2`:menuselection:`pop-up --> Recalculate Bone Roll Angles --> Align Z-Axis to 3D-Cursor`)
  will set the selected bone roll so that their Z axis is as much as possible pointed to the 3D cursor.


Properties
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Armature Bones* (*Editing* context)
   | Menu:     :menuselection:`Armature --> Bone Settings --> ...`
   | Hotkey:   :kbd:`Shift-W`, :kbd:`Ctrl-Shift-W`, :kbd:`Alt-W`


.. figure:: /images/RiggingEditingCxtArmatureBonesPanelEditMode.jpg
   :width: 200px

   The Armature Bones panel in Edit mode.


Most bones' properties (excepted the transform ones) are regrouped in each bone's sub-panel,
in the *Armature Bones* panel (*Editing* context`).
Let's detail them.

Note that some of them are also available in the 3D views,
through the three pop-up menus *Toggle Setting*
(:kbd:`Shift-W` or :menuselection:`Armature --> Bone Settings --> Toggle a Setting`),
*Enable Setting*
(:kbd:`Ctrl-Shift-W` or :menuselection:`Armature --> Bone Settings --> Enable a Setting`),
and *Disable Setting*
(:kbd:`Alt-W` or :menuselection:`Armature --> Bone Settings --> Disable a Setting`)
- all three have the same entries, their respective effect should be obvious...

BO
   The bone name field, see `Naming Bones`_.
child of
   These two settings control the bone relationship, as detailed in
   `Chain Editing`_.
Segm
   This setting controls the number of segments that a bone has; see
   `Bone Rigidity`_.
Dist, Weight, Deform
   (also :menuselection:`[shift][W] --> Deform` & co), Mult (also :menuselection:`[shift][W] --> Mult VG` & co)

   These settings control how the bone influences its geometry - along with the bones' ends radius.
   This will be detailed in the :doc:`skinning part </rigging/skinning>`.
Hinge (also :menuselection:`[shift][W] --> Hinge` & co), S (also :menuselection:`[shift][W] --> No Scale` & co)
   These settings affect the behavior of children bones while transforming their parent in *Pose* mode,
   so this will be detailed in the :doc:`posing part </rigging/posing>` !
Hide
   This will hide the bone (same as pressing :kbd:`H` in the 3D views;
   see :doc:`this page </rigging/armatures/visualization#hiding_bones>`).
Lock (also :menuselection:`[shift][W] --> Locked` & co)
   This will prevent all editing of the bone in *Edit* mode;
   see :doc:`previous page </rigging/armatures/editing/bones>`.
Layers button
   These small buttons allow you to control to which bone layer this bone belongs;
   see :ref:`this page <armature-layers>`.


.. _armature-bone-rigid:

Bone Rigidity
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* and *Pose* modes
   | Panel:    *Armature Bones* (*Editing* context)


.. figure:: /images/RiggingEditingCxtArmatureBonesPanelPoseMode.jpg
   :width: 200px

   The Armature Bones panel in Pose mode.


Even though you have the *Segm* setting available in *Edit* mode
(bones sub-panel, in the *Armature Bones* panel),
you should switch to the *Pose* mode (:kbd:`Ctrl-Tab`) to edit these "smooth"
bones' properties - one explanation to this strange need is that in *Edit* mode,
even in *B-Bone* visualization, bones are drawn as sticks,
so you can't visualize the effects of these settings.


.. figure:: /images/RiggingBBoneSegmentExPoseMode.jpg
   :width: 200px

   An armature in Pose mode, B-Bone visualization: Bone.003 has one segment,
   Bone.004 has four, and Bone.005 has sixteen.


We saw in :doc:`this page </rigging/armatures/bones>` that bones are made
of small rigid segments mapped to a "virtual" Bézier curve.
The *Segm* numeric field allows you to set the number of segments inside a given bone - by default,
it is **1**, which gives a standard rigid bone! The higher this setting (max **32**), the smoother the bone,
but the heavier the pose calculations...

Each bone's ends are mapped to its "virtual" Bezier curve's
:doc:`"auto" </modeling/curves/introduction#editing_bezier_curves>`
handle. Therefore, you can't control their direction,
but you can change their "length" using the *In* and *Out* numeric fields,
to control the "root handle" and "tip handle" of the bone, respectively.
These values are proportional to the default length, which of course automatically varies depending on bone length,
angle with previous/next bones in the chain, and so on.


.. list-table::

   * - **Bone** *In* / *Out* **settings example, with a materialized Bézier curve.**

     - .. figure:: /images/RiggingBBoneInOutEx1.jpg
          :width: 300px

          Look at Bone.004: it has the default In and Out values (1.0).

     - .. figure:: /images/RiggingBBoneInOutEx2.jpg
          :width: 300px

          Bone.004 with In at 2.0, and Out at 0.0.


.. _armature-bone_chain_edit:

Chain Editing
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Armature Bones* (*Editing* context)
   | Menu:     :menuselection:`Armature --> Parent --> ...`
   | Hotkey:   :kbd:`Ctrl-P`, :kbd:`Alt-P`


You can edit the relationships between bones (and hence create/modify the chains of bones)
both from the 3D views and the *Buttons* window. Whatever method you prefer,
it's always a matter of deciding, for each bone, if it has to be parented to another one,
and if so, if it should be connected to it.

To parent and/or connect bones, you can:

- In a 3D view, select the bone and *then* its future parent, and press :kbd:`Ctrl-P`
  (or :menuselection:`Armature --> Parent --> Make Parent...`).
  In the small *Make Parent* menu that pops up, choose *Connected*
  if you want the child to be connected to its parent, else click on *Keep Offset*.
  If you have selected more than two bones, they will all be parented to the last selected one.
  If you only select one already-parented bone, or all selected bones are already parented to the last selected one,
  your only choice is to connect them, if not already done.
  If you select only one non-parented bone, you'll get the *Need selected bone(s)* error message...

  *With this method, the newly-children bones won't be scaled nor rotated -
  they will just be translated if you chose to connect them to their parent's tip.*

- In the *Buttons* window, *Armature Bones* panel, for each selected bone,
  you can select its parent in the *Parent* drop-down list to the upper right corner of its sub-panel.
  If you want them to be connected, just enable the little *Con* button to the right of the list.

  *With this method, the tip of the child bone will never be translated -
  so if* *Con* *is enabled, the child bone will be completely transformed by the operation.*


.. list-table::
   Parenting example.

   * - .. figure:: /images/RiggingBoneRelationshipExEditMode1.jpg
          :width: 300px

          The starting armature, with Bone.005 parented and connected to Bone.004.

     - .. figure:: /images/RiggingBoneRelationshipExEditMode4.jpg
          :width: 300px

          Bone.005 re-parented to Bone.002, but not connected to it
          (same result, using either [ctrl][P][2] in 3D view, or the Armature Bones panel settings).

   * - .. figure:: /images/RiggingBoneRelationshipExEditMode2.jpg
          :width: 300px

          Bone.005 parented and connected to Bone.002, using [ctrl][P][1] in 3D view.

     - .. figure:: /images/RiggingBoneRelationshipExEditMode3.jpg
          :width: 300px

          Bone.005 parented and connected to Bone.002, using the Parent drop-down list of Bone.005 sub-panel.


To disconnect and/or free bones, you can:

- In a 3D view, select the desired bones, and press :kbd:`Alt-P`
  (or :menuselection:`Armature --> Parent --> Clear Parent...`).
  In the small *Clear Parent* menu that pops up, choose *Clear Parent* to completely free all selected bones,
  or *Disconnect Bone* if you just want to break their connections.
- In the *Buttons* window, *Armature Bones* panel, for each selected bone, you can select no parent in the
  *Parent* drop-down list of its sub-panel, to free it completely.
  If you just want to disconnect it from its parent, disable the *Con* button.

Note that relationships with non-selected children are never modified.


Naming Bones
============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Armature Bones* (*Editing* context), *Transform Properties* (3D views, :kbd:`N`)


You can rename your bones, either using the *Bone* field of the *Transform Properties*
panel in the 3D views, for the active bone (:kbd:`N`),
or using the *BO* field in each bone sub-panel of the *Armature Bones* panel
(*Editing* context).

Blender also provides you some tools that take advantage of bones named in a left/right
symmetry fashion, and others that automatically name the bones of an armature.
Let's look at this in detail.


Naming Conventions
------------------

.. figure:: /images/Ie_bonesname.jpg
   :width: 440px

   An example of left/right bone naming in a simple rig.


Naming conventions in Blender are not only useful for you in finding the right bone,
but also to tell Blender when any two of them are counterparts.

In case your armature can be mirrored in half (i.e. it's bilaterally symmetrical),
it's worthwhile to stick to a left/right naming convention.
This will enable you to use some tools that will probably save you time and effort
(like the *X-Axis Mirror* editing tool we saw above...).


- First you should give your bones meaningful base-names, like ``leg``, ``arm``, ``finger``, ``back``, ``foot``, etc.
- If you have a bone that has a copy on the other side (a pair), like an arm,
  give it one of the following separators:

  - Left/right separators can be either the second position
    (``L`` **_** ``calfbone``) or last-but-one (``calfbone`` **.** ``R``)
  - If there is a lower or upper case ``L``, ``R``, ``left`` or ``right``, Blender handles the counterpart correctly.
    See below for a list of valid separators.
    Pick one and stick to it as close as possible when rigging; it will pay off. Examples of **valid saparators**:

    - *(nothing)*: hand ``Left`` --> hand ``Right``
    - ``_`` *(underscore)*: Hand ``_L`` --> Hand ``_R``
    - ``.`` *(point)*: hand ``.l`` --> hand ``.r``
    - ``-`` *(dash)*: Foot ``-l`` --> Foot ``-r``
    - `` `` *(space)*: pelvis ``LEFT`` --> pelvis ``RIGHT``

    Note that all examples above are also valid with the left/right part placed before the name.
    You can only use the short ``L`` / ``R`` code if you use a separator (i.e. ``handL`` / ``handR`` won't work!).

- Before Blender handles an armature for mirroring or flipping,
  it first removes the number extension, if it's there (like ``.001``)
- You can copy a bone named ``bla.L`` and flip it over using :menuselection:`[W] --> Flip Left-Right Names`.
  Blender will name the copy ``bla.L.001`` and flipping the name will give you ``bla.R``.


Bone name flipping
------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Armature --> Flip Left & Right Names`
   | Hotkey:   :kbd:`W-4`


You can flip left/right markers (see above) in selected bone names,
using either :menuselection:`Armature --> Flip Left & Right Names`,
or :menuselection:`Specials --> Flip Left-Right Names` (:kbd:`W-4`).
This can be useful if you have constructed half of a symmetrical rig
(marked for a left or right side) and duplicated and mirrored it,
and want to update the names for the new side.
Blender will swap text in bone names according to the above naming conventions,
and remove number extensions if possible.


Auto bone naming
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Armature --> AutoName Left-Right`,
     :menuselection:`Armature --> AutoName Front-Back`, :menuselection:`Armature --> AutoName Top-Bottom`
   | Hotkey:   :kbd:`W-5`, :kbd:`W-6`, :kbd:`W-7`


The three *AutoName* entries of the *Armature* and *Specials*
(:kbd:`W`) menus allows you to automatically add a suffix to all selected bones, *based
on the position of their root relative to the armature center and its local coordinates* :

AutoName Left-Right
   will add the ``.L`` suffix to all bones *with a positive X-coordinate root*,
   and the ``.R`` suffix to all bones *with a negative X-coordinate root*.
   If the root is exactly at ``0.0`` on the X-axis, the X-coordinate of the tip is used.
   If both ends are at ``0.0`` on the X-axis, the bone will just get a period suffix, with no L/R
   (as Blender cannot decide whether it is a left or right bone...).
AutoName Front-Back
   will add the ``.Bk`` suffix to all bones *with a positive Y-coordinate root*,
   and the ``.Fr`` suffix to all bones *with a negative Y-coordinate root*.
   The same as with *AutoName Left-Right* goes for **0.0** Y-coordinate bones...
AutoName Top-Bottom
   will add the ``.Top`` suffix to all bones *with a positive Z-coordinate root*,
   and the ``.Bot`` suffix to all bones *with a negative Z-coordinate root*.
   The same as with *AutoName Left-Right* goes for **0.0** Z-coordinate bones...

