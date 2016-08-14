..    TODO/Review

*************
Mesh Skinning
*************

There are some settings necessary for an armature to deform a mesh:

- The meshobject needs to be assigned to the armatureobject or vice versa
- The bones of the armature have to be assigned to parts of the mesh or vice versa


Object Assignment
=================

An object is assigned to an armature by either:

- adding an *Armature Modifier* to the object and selecting the appropriate armature
- parenting the object to the armature (not as flexible but still working)


Bone Influences
===============

The transformation of the mesh can either be done by:

- using the *bone envelopes*
- making *vertex groups* for each bone

The first option is default and should work automatically.
The second option has to be set for each bone and vertexgroup individually,
even though those setting can be mirrored in symmertrical meshes.

For the second option to work the vertexgroup must have the same name as the bone that controls it.
