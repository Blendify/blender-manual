
..    TODO/Review: {{review|}} .

**************
Mirror Editing
**************

X-Mirror
========

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    :menuselection:`Mesh Options --> X-mirror`


The *X-mirror* option of the *Mesh Options* panel allows you edit both
"sides" of your mesh in a single action. When you transform an element (vertex, edge or face),
if there is its *exact X-mirrored counterpart* (in local space),
it will be transformed accordingly, *through a symmetry along the local X axis*.


Topology Mirror
===============

The *Topology Mirror* option is available in the
:menuselection:`3D View Editor --> Toolshelf Region --> Mesh Options Panel` whilst in *Edit Mode*

For *Topology Mirror* to work the *X Mirror* option must be enabled.

When using the *X Mirror* option to work on mirrored Mesh Geometry the vertices that
are mirrored must be perfectly placed. If they are not exactly positioned in their mirror
locations then *X Mirror* will not treat those vertices as mirrored. This can be
annoying because often the out of position vertices are only very slightly out of position.

*Topology Mirror* tries to solve this problem by determining which vertices are mirrored vertices not only by
using their positions but also by looking at how those vertices are related to others in the Mesh Geometry.
It looks at the overall Mesh Geometry topology to determine if particular vertices will be treated as mirrored.
The effect of this is that mirrored vertices can be non-symetrical and yet still be treated as mirrored when
*X Mirror* and *Topology Mirror* are both active.

Note that *Topology Mirror* functionality will work more reliably on Mesh Geometry
which is more detailed. If you use very simple Mesh Geometry such as a Cube or UV Sphere for
example the *Topology Mirror* option will often not work.

For an example of how to use *Topology Mirror* open up a new Blender scene,
then delete Blender's default cube and add a Monkey Object to the 3D Viewport.

Press the TAB Key to put the Monkey Object into *Edit Mode*.

With the *X Mirror* option disabled move one of the Monkey Object's vertices
slightly.

Then Turn *X Mirror* option on again but leave *Topology Mirror* disabled

If you now move that vertice again *X Mirror* will not work and the mirrored
vertices will not be altered.

If you then enable *Topology Mirror* and move the same vertices again,
then *X Mirror* should still mirror the other vertice,
even though they are not perfectly positioned.


Mirror Modifier
===============

The conditions for X-mirror to work are quite strict, which can make it difficult to use.
To have an exact mirrored version of a (half) mesh,
its easier and simpler to use the :doc:`Mirror modifier </modifiers/generate/mirror>`


Snap to Symmetry
================

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Snap to Symmetry`


The *Snap to Symmetry* tool works on meshes which are mostly symmetrical but have
vertices which have been moved enough that Blender does not detect then as mirrored
(when x-mirror option is enable for example).

This can be caused by accident when editing without x-mirror enabled. Sometimes models
imported from other applications are asymmetrical enough that mirror fails too.


Direction
   Specify the axis and direction to snap. Can be any of the 3 axes,
   and either positive to negative, or negative to positive.
Threshold
   Specify the search radius to use when finding matching vertices.
Factor
   Support for blending mirrored locations from one side to the other (0.5 is an equal mix of both).
Center
   Snap vertices in the center axis to zero.


.. figure:: /images/Mesh_Snap_to_Symmetry.jpg
   :width: 300px

   Before Snap to Symmetry


.. figure:: /images/Mesh_Snap_to_Symmetry_After.jpg
   :width: 300px

   After Snap to Symmetry


Symmetrize Mesh
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Menu:     :menuselection:`Mesh --> Symmetrize`


The *Symmetrize* tool is a quick way to make a mesh symmetrical.
*Symmetrize* works by cutting the mesh at the pivot point of the object,
and mirroring over the geometry in the specified axis, and merges the two halves together
(if they are connected)

Direction
   Specify the axis and direction of the effect. Can be any of the 3 axes,
   and either positive to negative, or negative to positive.


.. figure:: /images/Symmetrize1.jpg
   :width: 300px

   Mesh before Symmetrize


.. figure:: /images/Symmetrize2.jpg
   :width: 300px

   Mesh after Symmetrize


Mirroring Geometry
==================

See :doc:`Mirror </modeling/meshes/editing/deforming/mirror>` for information on mirroring,
which allows you to flip geometry across an axis
