
************
Pose Library
************

Introduction
============

The *Pose Library* panel is used to save, apply, and manage different armature poses.

*Pose Libraries* are saved to *Actions*. They are not generally used as actions, but can be converted to and from.


Pose Library Panel
==================

.. figure:: /images/Pose_Library.jpg

   Properties > Armature > Pose Library.


#. Browse *Action / Pose Library* to be linked.

#. Name of the *Pose Library*.

#. Set Fake User.
   This will make blender save the *Pose Library* for if it has no users.

#. Add new *Pose Library* to the active object.

#. Remove the *Pose Library* from the active object.

#. A list of *Poses* for the active *Pose Library*.

#. Add Pose.

   Add New.
      Add a new *Pose* to the active *Pose Library* with the currect pose of the armature.

   Add New (Current Frame).
      *Add New* and *Replace Existing* automatically allocate a *Pose* to an *Action* frame.
      *Add New (Currect Frame)*
      will add a *Pose* to the *Pose Library* based on the current frame of the *Time Cursor*.
      Its not a well supported feature.

   Replace Existing.
      Replace an existing *Pose* in the active *Pose Library* with the currect pose of the armature.

#. Remove the active *Pose* from the *Pose Library*.

#. Apply the active *Pose* to the selected *Pose Bones*.

#. Sanitize Action. Make *Action* suitable for use as a *Pose Library*.
   This is used to convert an *Action* to a *Pose Library*.
   A *Pose* is added to the *Pose Library* for each frame with keyframes.


Editing
=======

3D View, Pose Mode.

   Browse Poses. :kbd:`Ctrl-L`.

   Add Pose. :kbd:`Shift-L`.

   Rename Pose. :kbd:`Shift-Ctrl-L`.

   Remove Pose. :kbd:`Alt-L`.
