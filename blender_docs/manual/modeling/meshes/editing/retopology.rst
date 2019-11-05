
**********
Retopology
**********

Retopology is the process of simplifying the topology of a mesh to make it cleaner and easier to work with.
Retopology is need for mangled topology resulting from sculpting or generated topology, for example from a 3D scan.
Meshes often need to be retopologized if the mesh is going to be deformed in some way.
Deformations can include rigging or physics simulations such as cloth or softbody.
Retopology can be done by hand by manipulating geometry in Edit mode or through automated methods.


Using the Poly Build Tool
=========================

Todo.



.. _bpy.types.Mesh.remesh:
.. _bpy.ops.object.voxel_remesh:
.. _bpy.ops.object.quadriflow_remesh:

Remeshing
=========

.. admonition:: Reference
   :class: refbox

   :Mode:      Object Mode, Sculpt Mode
   :Panel:     :menuselection:`Properties --> Object Data --> Remesh`

Remeshing is a technique that automatically rebuilds the geometry with a more uniform topology.
Remeshing can either add or remove the amount of topology depending on a defined resolution.
This technique is especially useful for :doc:`sculpting </sculpt_paint/sculpting/index>`,
to generate better topology after blocking out the initial shape.

.. seealso::

   :doc:`Remesh modifier </modeling/modifiers/generate/remesh>`


Voxel
-----

The Voxel Remesher uses an OpenVDB to generate a new manifold mesh from the current geometry.
It produces a mesh with perfectly even distributed topology and it
does not have any performance penalty once the new mesh is calculated.
This makes the voxel remesher great for sculpting has it is possible
to sculpt at a much higher level of detail than using other features
like dyntopo which often adds more performance overhead.


Voxel Size
   The resolution or the amount of detail the remeshed mesh will have.
   The value is used to define the the size, in object space, of the :term:`Voxel`.
   These voxels are assembled around the mesh and are used to determine the new geometry.
   For example a value of 0.5m will create topographical patches that are about 0.5m (assuming *Preserve Volume* is enabled).
   Lower values preserve finer details but will result in a mesh with a much more dense topology.
Adaptivity

Fix Poles
Smooth Normals
   Applies the :ref:`Smooth Normals <bpy.ops.object.shade_smooth>` operator to the resulting mesh.
Preserve Volume
Preserve Paint Mask
Voxel Remesh
   Todo.


Quad
----

Quadriflow Remesh
   TODO.

Use Paint Symmetry
Preserve Sharp
Preserve Mesh Boundary
Use Mesh Curvature
Preserve Paint Mask
Smooth Normals
   Applies the :ref:`Smooth Normals <bpy.ops.object.shade_smooth>` operator to the resulting mesh.
Modes
Number of Faces
   Todo
