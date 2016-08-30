..    TODO/Review: {{review|im=update}}.

*******************
Child Of Constraint
*******************

*Child Of* is the constraint version of the standard parent/children relationship between objects
(the one established through the :kbd:`Ctrl-P` shortcut, in the 3D Views).

Parenting with a constraint has several advantages and enhancements,
compared to the traditional method:

- You can have several different parents for the same object
  (weighting their respective influence with the *Influence* slider).
- As with any constraint, you can key (i.e. animate) its Influence setting.
  This allows the object which has a Child Of constraint upon it to change over time which
  target object will be considered the parent, and therefore have influence over the Child Of constrained object.

 .. warning::

   Do not confuse this "basic" object parenting with the one that defines the
   :ref:`chains of bones <armature-bone-chain>`
   inside of an armature. This constraint is used to parent an object to a
   bone (the so-called :doc:`object skinning </rigging/skinning/objects>`),
   or even bones to bones. But do not try to use it to define chains of bones.


Options
=======

.. figure:: /images/constraints-relationship-childof.png
   :width: 307px

   Child Of panel.


Target
   The target object that this object will act as a child of.
   This constraint uses one target, and is not functional (red state) when it has none.
   If *Target* is an armature or a mesh,
   a new name field appears where a name of a *Bone* or a *Vertex Group* can be selected.

Location X, Y, Z
   Each of these buttons will make the parent affect or not affect the location along the corresponding axis.
Rotation X, Y, Z
   Each of these buttons will make the parent affect or not affect the rotation around the corresponding axis.
Scale X, Y, Z
   Each of these buttons will make the parent affect or not affect the scale along the corresponding axis.

Set Inverse
   By default, when you parent your owner to your target, the target becomes the origin of the owner's space.
   This means that the location, rotation and scale of the owner are offset by the same properties of the target.
   In other words, the owner is transformed when you parent it to your target.
   This might not be desired!
   So, if you want to restore your owner to its before-parenting state, click on the *Set Inverse* button.
Clear Inverse
   This button reverses (cancels) the effects of the above one,
   restoring the owner/child to its default state regarding its target/parent.


Tips
----

When creating a new parent relationship using this constraint, it is usually necessary to
click on the *Set Inverse* button after assigning the parent. As noted above,
this cancels out any unwanted transform from the parent, so that the owner returns to the
location/rotation/scale it was in before the constraint was applied.
Note that you should apply *Set Inverse* with all other constraints disabled
(their *Influence* set to 0.0) for a particular *Child Of* constraint,
and before transforming the target/parent (see example below).

About the toggle buttons that control which target's (i.e. parent's)
individual transform properties affect the owner,
it is usually best to leave them all enabled, or to disable all three of the given Location,
Rotation or Scale transforms.


Technical Note
==============

If you use this constraint with all channels on,
it will use a straight matrix multiplication for the parent relationship,
not decomposing the parent matrix into loc/rot/size.
This ensures any transformation correctly gets applied,
also for combinations of rotated and non-uniform scaled parents.


Examples
========

.. list-table::

   * - .. figure:: /images/constraintschildofobjectsex01nocst.png

          No constraint.

          Note the position of Owner empty 1.0 BU along X- and Y-Axis.

     - .. figure:: /images/constraintschildofobjectsex02cstadded.png

          Child Of just added.

          Here you can see that Owner empty is now 1.0 BU away
          from Target_1 empty along X- and Y-Axis.

   * - .. figure:: /images/constraintschildofobjectsex03cstsetoffset.png

          Offset set.

          Set Inverse has been clicked, and Owner is back to its original position.

     - .. figure:: /images/constraintschildofobjectsex04csttargettransformed.png

          Target/parent transformed.

          Target_1 has been translated in the XY plane, rotated around the Z-Axis,
          and scaled along its local X-Axis.

   * - .. figure:: /images/constraintschildofobjectsex05cstclearoffset.png

          Offset cleared.

          Clear Inverse has been clicked. Owner is fully again controlled by Target_1.

     - .. figure:: /images/constraintschildofobjectsex06cstsetoffset.png

          Offset set again.

          Set Offset has been clicked again.
          As you can see, it does not gives the same result as in (Target/parent transformed).
          As noted above, use Set Inverse only once, before transforming your target/parent.

.. vimeo:: 171554131
