
******************
Adaptive Sculpting
******************

Dynamic Topology
================

Dynamic topology (aka dyntopo) is a dynamic tessellation sculpting method,
adds and removes details on-the-fly, whereas regular sculpting only affects the shape of a mesh.

This makes it possible to sculpt complex shapes out of a simple mesh,
rather than just adding details onto a modeled base mesh.


Multiresolution Modifier
========================

The Multiresolution Modifier is can be used to sculpt. The modifier will subdivide the mesh.
The more subdivision the more computing will be needed. With the Blender stack
non-destructive data, multi-resolution sculpting will help when you have a clean topology base mesh.

When sculpting with multiple resolutions you have the ability to sculpt in different levels of subdivision,
this mean you can sculpt some details in subdivision level 1 and add more details in
subdivision 2 and go back to subdivision 1 correct some mistakes. While this workflow is
often used, the Multiresolution Modifier has some limitations. You may end up with some mesh distortions.
As an advice, add as most details as possible before adding more subdivisions.
Clay brush works better with multi-resolution sculpting to sculpt secondary forms.

- Step up one multires level :kbd:`PageUp`
- Step down one multires level :kbd:`PageDown`
- Set multires level :kbd:`Ctrl-0` to :kbd:`Ctrl-5`

.. seealso::

   Read more about the :doc:`Multiresolution Modifier </modeling/modifiers/generate/multiresolution>`.
