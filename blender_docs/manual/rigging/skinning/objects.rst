..    TODO/Review

*************
Mesh Skinning
*************

There are some settings necessary for an armature to deform a mesh:

- The mesh object needs to be assigned to the armature object or vice versa.
- The bones of the armature have to be assigned to parts of the mesh or vice versa.


Object Assignment
=================

An object is assigned to an armature by either:

- Adding an *Armature Modifier* to the object and selecting the appropriate armature.
- Parenting the object to the armature (not as flexible but still working).


Bone Influences
===============

The transformation of the mesh can either be done by:

- Using the *bone envelopes*.
- Making *vertex groups* for each bone.

The first option is default and should work automatically.
The second option has to be set for each bone and vertex group individually,
even though those setting can be mirrored in symmetrical meshes.

For the second option to work the vertex group must have the same name as the bone that controls it.
