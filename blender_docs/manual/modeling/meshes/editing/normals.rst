
*******
Normals
*******

Introduction
============

In geometry, a normal is a direction or line that is perpendicular to something, like another line, 
a tangent line for a point on a curve, or a tangent plane for a point on a surface.

.. figure:: /images/modeling_meshes_editing_normals_viewport.png

   A visualization of the normals of the vertices and faces of a torus.

In the figure above, each blue line represents the normal for a face on the torus. The lines are each perpendicular to the face on which they lie.

Visualizing
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:     :menuselection:`Properties Region --> Mesh Display --> Normals`

Shading
=======

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Panel:     :menuselection:`Tool Shelf --> Tools --> Edit --> Shading:`

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:     :menuselection:`Tool Shelf --> Shading/ UVs --> Shading`
   | Menu:     :menuselection:`Mesh --> Faces --> Shade Smooth / Shade Flat`


.. _bpy.ops.object.shade_flat:

Flat 
----

.. list-table:: Example mesh flat (left) and smooth shaded (right).
   `Sample blend-file <https://wiki.blender.org/index.php/:File:25-manual-meshsmooth-example.blend>`__.

   * - .. figure:: /images/modeling_meshes_editing_smoothing_example-01-flat.png
          :width: 200px

     - .. figure:: /images/modeling_meshes_editing_smoothing_example-02-smooth.png
          :width: 200px

As seen in the previous sections, polygons are central to Blender.
Most objects are represented by polygons and truly curved objects
are often approximated by polygon meshes. When rendering images,
you may notice that these polygons appear as a series of small, flat faces.
Sometimes this is a desirable effect, but usually we want our objects to look nice and smooth.


.. _bpy.ops.object.shade_smooth:

Smooth
------

.. figure:: /images/modeling_meshes_editing_smoothing_shading-smooth-flat.png
   :align: right

   Shading buttons in Tool Shelf.

The easiest way is to set an entire object as smooth or faceted by selecting a mesh object,
and in *Object Mode*, click *Smooth* in the *Tool Shelf*.
This button does not stay pressed;
it forces the assignment of the "smoothing" attribute to each face in the mesh,
including when you add or delete geometry.

Notice that the outline of the object is still strongly faceted.
Activating the smoothing features does not actually modify the object's geometry;
it changes the way the shading is calculated across the surfaces (normals will be interpolated),
giving the illusion of a smooth surface.

Click the *Flat* button in the
*Tool Shelf*\ 's *Shading panel* to revert the shading back (normals will be constant)
to that shown in the first image above.


Smoothing Parts of a Mesh
^^^^^^^^^^^^^^^^^^^^^^^^^

Alternatively, you can choose which edges to smooth by entering *Edit Mode*,
then selecting some faces and clicking the *Smooth* button.
The selected edges are marked in yellow.

When the mesh is in *Edit Mode*,
only the selected edges will receive the "smoothing" attribute. You can set edges as flat
(removing the "smoothing" attribute)
in the same way by selecting edges and clicking the *Flat* button.

.. seealso::

   The :ref:`Auto Smooth <auto-smooth>` filter is an quick and easy way to combine smooth and
   faceted faces in the same object.


.. _modeling-meshes-editing-normals-editing:

Editing
=======

Flip Direction
--------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Shading/UVs --> Shading --> Normals: Flip Direction`
   | Menu:     :menuselection:`Mesh --> Normals --> Flip` or :menuselection:`Specials --> Flip Normals`

Well, it will just reverse the normals direction of all selected faces.
Note that this allows you to precisely control the direction (**not** the orientation,
which is always perpendicular to the face) of your normals, as only selected ones are flipped.


Recalculate Normals
-------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Shading/UVs --> Shading --> Normals: Recalculate`
   | Menu:     :menuselection:`Mesh --> Normals --> Recalculate Outside` and
     :menuselection:`Mesh --> Normals --> Recalculate Inside`
   | Hotkey:   :kbd:`Ctrl-N` and :kbd:`Ctrl-Shift-N`

These tools will recalculate the normals of selected faces so that they point outside
(respectively inside) the volume that the face belongs to.
This volume do not need to be closed. In fact, this means that the face of interest must be
adjacent with at least one non-coplanar other face.
For example, with a *Grid* primitive, recalculating normals does not have a meaningful result.

.. tip::

   For Visualization in *Edit Mode* see :ref:`mesh-display-normals`.


Set from Face
-------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Shading/UVs --> Shading --> Normals: Set from Face`

ToDo 2.79.
