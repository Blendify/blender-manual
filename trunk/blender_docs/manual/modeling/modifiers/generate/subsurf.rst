
****************************
Subdivision Surface Modifier
****************************

Subdivision Surface (*Subsurf* in short) is a method of subdividing the faces of a mesh to give a smooth appearance,
to enable modeling of complex smooth surfaces with simple, low-vertex meshes.
This allows high resolution mesh modeling without the need to save and maintain huge amounts of data and gives
a smooth *organic* look to the object.

This process creates virtual geometry that is generated non-destructively without modifying the original mesh,
but it can be converted to real geometry that you could edit with the *Apply* button.

Also, like the rest of the Modifiers, order of execution has an important bearing on the results.
For this, see the documentation on the :ref:`Modifier Stack <modifier-stack>`.

Keep in mind that this is a different operation than its companion,
:doc:`Smooth Shading </modeling/meshes/smoothing>`.
You can see the difference between the two in the grid image below.

.. figure:: /images/modeling_modifiers_subsurf_grid.png

   Subsurfs levels 0 to 3, without and with Smooth Shading.

.. tip::

   The Subsurf modifier does not allow you to edit the new subdivided geometry without applying it,
   but the :doc:`Multires </modeling/modifiers/generate/multiresolution>` modifier does (in sculpt mode).


Modifier Settings
=================

.. figure:: /images/modifier-subsurf.png

   Modifier's Panel.


Type
   This toggle button allows you to choose the subdivision algorithm:

   Catmull-Clark
      The default option, subdivides and smooths the surfaces.
      According to `its Wikipedia page <https://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface>`__,
      the "arbitrary-looking formula was chosen by Catmull and Clark based on the aesthetic appearance of the
      resulting surfaces rather than on a mathematical derivation."
   Simple
      Only subdivides the surfaces, without any smoothing
      (the same as :kbd:`W` :menuselection:`--> Subdivide`, in Edit Mode).
      Can be used, for example, to increase base mesh resolution when using displacement maps.

Subdivisions
   Recursively adds more geometry. For details on polygon counts, see the :ref:`subsurf-performance` section.

   View
      The number of subdivision levels shown in the 3D View.
   Render
      The number of subdivision levels shown in renders.

The right combination of these settings will allow you to keep a fast and lightweight
approximation of your model when interacting with it in 3D, but use a higher quality version when rendering.


.. warning::

   Be careful not to set the *View* subdivisions higher than the *Render* subdivisions,
   this would mean the 3D View will be higher quality than the render.


Options
   Subdivide UVs
      When enabled, the UV maps will also be subsurfed
      (i.e. Blender will add "virtual" coordinates for all sub-faces created by this modifier).

   .. figure:: /images/modifier-generate-subsurf-subdivideuvs.png

      Subdivide UVs on and off.

   Optimal Display
      When drawing the wireframe of this object, the wires of the new subdivided edges will be skipped
      (only draws the edges of the original geometry)
   Opensubdiv
      See the :ref:`modeling-modifiers-opensubdiv` section.


.. _modeling-modifiers-opensubdiv:

OpenSubdiv
==========

OpenSubdiv is a option of Subsurf modifier.
When this option is enabled for Subsurf modifier from the very top of the modifier stack,
evaluation will happen on the compute device selected in the User Preferences.
Best performance will be achieved when using GLSL evaluation.
As a result performance of the modifier will be much higher which is great for animations.

To enable OpenSubdiv you must first choose the fastest compute device.
To do this see the :ref:`prefs-system-opensubdiv` section. To find more on OpenSubdiv read the
`Release Notes <https://wiki.blender.org/index.php/Dev:Ref/Release_Notes/2.76/OpenSubdiv>`__.

Improving Performance
---------------------

In order to utilize maximum performance form OpenSubdiv the following things are required:

- Subsurf modifier must be last in the :ref:`Modifier Stack <modifier-stack>`.
- There should be no modifiers prior to Subsurf which changes mesh topology across the time.
- Other objects should not use geometry of OpenSubdiv mesh


Control
=======

Subsurf rounds off edges, and often this is not what you want. There are several solutions.


.. _modifiers-generate-subsurf-creases:

Weighted Edge Creases
---------------------

Weighted edge creases for subdivision surfaces allows you to change the way
Subsurf subdivides the geometry to give the edges a smooth or sharp appearance.

.. figure:: /images/subsurfwithcrease.png

   A Subsurfed Cube with Creased Edges.

The crease weight of selected edges can be changed in the *Transform* panel of the properties region
:kbd:`N`, or by using the shortcut :kbd:`Shift-E` and moving the mouse closer
or further from the selected edges to adjust the crease weight.
A higher value makes the edge "stronger" and more resistant to the smoothing effect of subdivision surfaces.


Edge Loops
----------

.. figure:: /images/cubewithedgeloops.jpg

   A Subsurf Level 2 Cube, the same with an extra Edge Loop, and the same with six extra Edge Loops.

The Subsurf modifier demonstrates why good, clean topology is so important.
As you can see in the figure, the Subsurf modifier has a drastic effect on a default Cube.
Until you add in additional Loops (with :kbd:`Ctrl-R`), the shape is almost unrecognizable as a cube.

A mesh with deliberate topology has good placement of Edge Loops,
which allow the placement of more Loops (or removal of Loops,
with :kbd:`X` :menuselection:`--> Edge Loop`) to control the sharpness/smoothness of the resultant mesh.


.. _subsurf-performance:

Performance Considerations
==========================

Higher levels of subdivisions mean more vertices, and more vertices means more memory will be used
(both video memory for display, and system RAM for rendering).
Blender could potentially crash or hang if you do not have enough memory.

When using high levels of subdivision with a graphics card that has a low total amount
of Vram, some parts of the geometry will disappear visually. Your mesh will actually be intact,
because the render is generated using your Object Data,
(even though it cannot be shown by your graphics card).


Keyboard Shortcuts
==================

To quickly add a subsurf modifier to one or more objects, select it/them and press :kbd:`Ctrl-1`.
That will add a subsurf modifier with *View Subdivisions* on 1.

You can use other numbers too, such as :kbd:`Ctrl-2`, :kbd:`Ctrl-3`, etc, to add a subsurf with that number of
subdivisions. The *Render Subdivisions* will always be on 2 when added like this.

If an object already has a subsurf modifier, doing this will simply change its subdivision level instead of adding
another modifier.


Known Limitations
=================

Non Contiguous Normals
----------------------

Blender's subdivision system produces nice smooth subsurfed meshes, but any subsurfed face
(that is, any small face created by the algorithm from a single face of the original mesh),
shares the overall normal orientation of that original face.

.. list-table::

   * - .. figure:: /images/subsurf05b.png
          :width: 320px

          Comparison of good normals and bad normals.

     - .. figure:: /images/subsurf05a.png
          :width: 320px

          Side view of image on left.

Abrupt normal changes can produce ugly black gouges even though
these flipped normals are not an issue for the shape itself.

A quick way to fix this is to use Blender's
:doc:`Recalculate Normals </modeling/meshes/editing/normals>` operation in Edit Mode.

If you still have some ugly black gouges you will have to
:doc:`Manually Flip the Normals </modeling/meshes/editing/normals>`.

Concave NGons
-------------

While NGons are supported,
concave ngons may give ugly overlapping results.

.. figure:: /images/modifier-subsurf_ngon_concave.png
   :width: 300px

   The ngons on the right show overlapping subsurf result.
