
****************************
Subdivision Surface Modifier
****************************

.. figure:: /images/SubsurfSmoothingDemoGrid-HiRes.jpg
   :width: 300px

   Click to zoom; Subsurfs levels 0 to 3, without and with Smooth Shading.
   This was rendered from: `SubsurfDemo.blend <http://wiki.blender.org/index.php/Media:SubsurfDemo.blend>`__


Subdivision Surface (*Subsurf* in short) is a method of subdividing the faces of a mesh to give a smooth appearance,
to enable modeling of complex smooth surfaces with simple, low-vertex meshes.
This allows high resolution mesh modeling without the need to save and maintain huge amounts of data and gives
a smooth *organic* look to the object.

This process creates virtual geometry that is generated non-destructively without modifying the original mesh,
but it can be converted to real geometry that you could edit with the *Apply* button.

Also, like the rest of the Modifiers, order of execution has an important bearing on the results.
For this, see the documentation on :doc:`The Stack </modeling/modifiers/the_stack>`.

Keep in mind that this is a different operation than its companion,
:doc:`Smooth Shading </modeling/meshes/smoothing>`.
You can see the difference between the two in the grid image to the right.

.. tip::

   The Subsurf modifier does not allow you to edit the new subdivided geometry without applying it,
   but the :doc:`Multires </modeling/modifiers/generate/multiresolution>` modifier does (in sculpt mode).


Options
=======

.. figure:: /images/Modifiers-Subsurf.jpg

   Modifier's panel


Type
   This toggle button allows you to choose the subdivision algorithm:

   Catmull-Clark
      The default option, subdivides and smooths the surfaces.
      According to `its Wikipedia page <http://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface>`__,
      the "arbitrary-looking formula was chosen by Catmull and Clark based on the aesthetic appearance of the
      resulting surfaces rather than on a mathematical derivation."
   Simple
      Only subdivides the surfaces, without any smoothing
      (the same as :kbd:`W` --> *Subdivide*, in Edit Mode).
      Can be used, for example, to increase base mesh resolution when using displacement maps.

Subdivisions
   Recursively adds more geometry. For details on polygon counts, see the :ref:`subsurf_performance` section.

   View
      The number of subdivision levels shown in the 3D View.
   Render
      The number of subdivision levels shown in renders.

The right combination of these settings will allow you to keep a fast and lightweight
approximation of your model when interacting with it in 3D, but use a higher quality version when rendering.


.. warning::

   Be careful not to set the *View* subdivisions higher than the *Render* subdivisions,
   this would mean the 3D View will be higher quality than the render.


Options:
   Subdivide UVs
      When enabled, the UV maps will also be subsurfed
      (i.e. Blender will add "virtual" coordinates for all sub-faces created by this modifier).
      See this
      `example blend file
      <http://wiki.blender.org/index.php/Media:Manual-Modifiers-Generate-Subsurf-SubdivideUVsExample.blend>`__.


   .. figure:: /images/Modifiers-Generate-Subsurf-SubdivideUVs.jpg

      Subdivide UVs on and off -- see the
      `.blend <http://wiki.blender.org/index.php/Media:Manual-Modifiers-Generate-Subsurf-SubdivideUVsExample.blend>`__
      for the source of this image.


   Optimal Display
      When drawing the wireframe of this object, the wires of the new subdivided edges will be skipped
      (only draws the edges of the original geometry).


Edit Cage
=========

To view and edit the results of the subdivision while you're editing the mesh,
you must enable the *Editing Cage* (the triangle button in the modifier's header).
This lets you grab the vertices as they lie in their new smoothed locations, rather than on the original mesh.

.. list-table::

   * - .. figure:: /images/SubsurfEditCageOff.jpg
          :width: 250px
     - .. figure:: /images/SubsurfEditCageOn.jpg
          :width: 250px
   * - Edit Cage Off (Default)
     - Edit Cage On


With the edit cage off, some vertices are buried under the subsurfed mesh. With dense vertex configurations,
you might even have to temporarily disable the modifier or view
:doc:`wireframe </editors/3dview/shading>` shading so that you can see these vertices.

With the edit cage on, you do not have this problem. It does, however,
have its own disadvantage---it can look *too* nice, hiding irregularities.
Notice the three quads running in the middle of Suzanne's ear:
you can only tell how crooked they are in the "edit cage off" version. When you are modeling, you will more often
want to see your mesh deformities in their full ugliness so that you can apply your skills until it is sheer
prettiness.


Order of the Modifier Stack
===========================

.. figure:: /images/Modifiers-Generate-Subsurf_OrderOfExecution.jpg

   Notice that the Armature Modifier before the Subsurf comes out much better in this case.
   Also, the Mirror before the Subsurf is clearly correct compared to the other way around.


The :doc:`Evaluation order </modeling/modifiers/the_stack>` of Modifiers is often significant,
but especially so in the case of the Subsurf.
The key to deciding your Modifier stack order is to picture the changes at each step,
perhaps by temporarily Apply'ing the Modifiers,
or perhaps by simply tinkering with the order until things come out right. To see the file behind these screenshots,
you can look at `Manual-Modifiers-Generate-Subsurf_OrderOfExecution.blend
<http://wiki.blender.org/index.php/Media:Manual-Modifiers-Generate-Subsurf_OrderOfExecution.blend>`__.


Control
=======

Subsurf rounds off edges, and often this is not what you want. There are several solutions.

.. _modifiers-generate-subsurf-creases:

Weighted Creases
----------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode (Mesh)
   | Panel:    3D View --> *Transform Properties*
   | Menu:     *Mesh* --> *Edges* --> *Crease Subsurf*
   | Hotkey:   :kbd:`N` (*Transform Properties* Panel)


.. figure:: /images/SubsurfWithCrease.jpg

   A Subsurfed Cube with Creased Edges


Weighted edge creases for subdivision surfaces allows you to change the way
Subsurf subdivides the geometry to give the edges a smooth or sharp appearance.

The crease weight of selected edges can be changed in the *Transform* panel of the properties region
(:kbd:`N`), or by using the shortcut :kbd:`Shift-E` and moving the mouse closer
or further from the selected edges to adjust the crease weight.
A higher value makes the edge "stronger" and more resistant to the smoothing effect of subdivision surfaces.

Another way to remember it is that the weight refers to the edge's sharpness;
Edges with a higher weight will be deformed less by subsurf.
Recall that the subsurfed shape is a product of all intersecting edges,
so to make an area sharper, you have to increase the weight of all the surrounding edges.


Edge Loops
----------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode (Mesh)
   | Hotkey:   :kbd:`Ctrl-R`


.. figure:: /images/CubeWithEdgeLoops.jpg

   A Subsurf Level 2 Cube, the same with an extra Edge Loop, and the same with six extra Edge Loops


The Subsurf modifier demonstrates why good, clean topology is so important.
As you can see in the figure, the Subsurf modifier has a drastic effect on a default Cube.
Until you add in additional Loops (with :kbd:`Ctrl-R`),
the shape is almost unrecognizable as a cube.

A mesh with deliberate topology has good placement of Edge Loops,
which allow the placement of more Loops (or removal of Loops,
with :menuselection:`[x] --> Edge Loop`)
to control the sharpness/smoothness of the resultant mesh.


Combination
-----------

.. figure:: /images/Subsurf2x4.jpg

   Purple edges are creased, orange (selected) are intended to be rounded off.
   See: `WoodBlock.blend <http://wiki.blender.org/index.php/File:WoodBlock.blend>`__


It is valuable to know the use of all three tools: Smooth/Flat Shading, Edge Creases and Edge Loops.

Consider the task of modeling a 2"x4" block of wood that has had a notch cut out.
The factory edges are rounded off (a good task for Smooth Shading and some Edge Loops),
but the edges where the saw touched are crisp (a good task for Flat Shading and Edge Crease).

Note that we had to add some extra edge loops near the Creased edges -- this was only to limit
the effects of Smooth Shading, which bleeds over onto the adjacent flat faces.


.. _subsurf_performance:

Performance Considerations
==========================

Higher levels of subdivisions mean more vertices, and more vertices means more memory will be used
(both video memory for display, and system RAM for rendering).
Blender could potentially crash or hang if you do not have enough memory.

When using high levels of subdivision with a graphics card that has a low total amount
of Vram, some parts of the geometry will disappear visually. Your mesh will actually be OK,
because the render is generated using your Object Data,
(even though it cannot be shown by your graphics card).

The total Vertex, Edge, and Face counts from the Modifier's effect on a Cube can be found in this table:


.. list-table::
   :header-rows: 1

   * - Cube Subdivision Level
     - Resulting Verts
     - Resulting Edges
     - Resulting Faces
   * - 0
     - 8
     - 12
     - 6
   * - 1
     - 26
     - 48
     - 24
   * - 2
     - 98
     - 192
     - 96
   * - 3
     - 386
     - 768
     - 384
   * - 4
     - 1538
     - 3072
     - 1536
   * - 5
     - 6146
     - 12288
     - 6144
   * - 6
     - 24578
     - 49152
     - 24576
   * - Formula
     - ``3*2**(2*n)+4)/2``
     - ``3*4**n``
     - ``verts - 2``


While we're at it, here is the pattern for subdividing a single quadrilateral plane:


.. list-table::
   :header-rows: 1

   * - Quad Subdivision Level
     - Resulting Verts
     - Resulting Edges
     - Resulting Faces
   * - 0
     - 4
     - 4
     - 1
   * - 1
     - 9
     - 12
     - 4
   * - 2
     - 25
     - 40
     - 16
   * - 3
     - 81
     - 144
     - 64
   * - 4
     - 289
     - 544
     - 256
   * - 5
     - 1089
     - 2112
     - 1024
   * - 6
     - 4225
     - 8320
     - 4096
   * - Formula
     - ``((2**n+2)**2)/4``
     - ``2**(n-1)*(2**n+2)``
     - ``4**(n-1)``


And, of course, triangles:


.. list-table::
   :header-rows: 1

   * - Tri Subdivision Level
     - Resulting Verts
     - Resulting Edges
     - Resulting Faces
   * - 0
     - 3
     - 3
     - 1
   * - 1
     - 7
     - 9
     - 3
   * - 2
     - 19
     - 30
     - 12
   * - 3
     - 61
     - 108
     - 48
   * - 4
     - 217
     - 408
     - 192
   * - 5
     - 817
     - 1584
     - 768
   * - 6
     - 3169
     - 6240
     - 3072
   * - Formula
     - Do you know it?
     - ``3*(2**(n-3))*(2**n+2)``
     -


Keyboard Shortcuts
==================

To quickly add a subsurf modifier to one or more objects, select it/them and press :kbd:`Ctrl-1`.
That will add a subsurf modifier with *View Subdivisions* on 1.

You can use other numbers too, such as :kbd:`Ctrl-2`, :kbd:`Ctrl-3`, etc, to add a subsurf with that number of
subdivisions. The *Render Subdivisions* will always be on ``2`` when added like this.

If an object already has a subsurf modifier, doing this will simply change its subdivision level instead of adding
another modifier.


Known Limitations
=================


Non Contiguous Normals
----------------------

Blender's subdivision system produces nice smooth subsurfed meshes, but any subsurfed face
(that is, any small face created by the algorithm from a single face of the original mesh),
shares the overall normal orientation of that original face.


.. figure:: /images/SubSurf05b.jpg
   :width: 300px

   Fig. 1: Solid view of subsurfed meshes with inconsistent normals (top) and consistent normals (bottom).
   Note the ugly dark areas that appear.


.. figure:: /images/SubSurf05a.jpg
   :width: 300px

   Fig. 2: Side view of the above meshes' normals, with random normals (top) and with coherent normals (bottom).


Abrupt normal changes can produce ugly black gouges (See:
*Fig. 1*), even though these flipped normals are not an issue for the shape itself (See:
*Fig. 2*).


A quick way to fix this (one which works 90% of the time)
is to use Blender's "Recalculate Normals" operation: In Edit Mode,
select all with :kbd:`A`,
then press :kbd:`Ctrl-N` to recalculate the normals to point outside.
If you still have some ugly black gougesyou will have to manually flip some normals.
To do this (still in Edit Mode),
use the :menuselection:`Specials --> Flip Normals` functionality (shortcut: :kbd:`W`,
:kbd:`N`) to fix them. Smoothing out normals is good for the mesh, and it's good for the soul.


Concave NGons
-------------

While NGons are supported,
concave ngons may give ugly overlapping results.

.. figure:: /images/modifier_subsurf_ngon_concave.png
   :width: 300px

   The ngons on the right show overlapping subsurf result.
