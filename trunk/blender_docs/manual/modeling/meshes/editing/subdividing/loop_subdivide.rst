..    TODO/Review: {{review|}}.

**************
Loop Subdivide
**************

Loop Cut and Slide
==================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Mesh Tools --> Add: Loop Cut and Slide`
   | Hotkey:   :kbd:`Ctrl-R`


*Loop Cut* splits a loop of faces by inserting a new edge loop intersecting the chosen edge.
The tool is interactive and has two steps:


Usage
-----

Pre-visualizing the Cut
^^^^^^^^^^^^^^^^^^^^^^^

After the tool is activated, move the cursor over a desired edge.
The cut to be made is marked with a magenta colored line as you move the mouse over the various edges.
The to-be-created edge loop stops at the poles (tris and n-gons) where the existing face loop terminates.


Sliding the new Edge Loop
^^^^^^^^^^^^^^^^^^^^^^^^^

Once an edge is chosen via :kbd:`LMB`,
you can move the mouse along the edge to determine where the new edge loop will be placed.
This is identical to the :ref:`Edge Slide tool <modeling-meshes-editing-edge-slide>`.
Clicking :kbd:`LMB` again confirms and makes the cut at the pre-visualized location,
or clicking :kbd:`RMB` forces the cut to exactly 50%.
This step is skipped when using multiple edge loops (see below)

.. list-table::

   * - .. figure:: /images/loopcut-before.png
          :width: 200px

          Mesh before inserting edge loop.

     - .. figure:: /images/loopcut-preview.png
          :width: 200px

          Preview of edge loop location.

     - .. figure:: /images/loopcut-placement.png
          :width: 200px

          Interactive placement of edge loop between adjacent loops.


Options
-------

The options are available while the tool is in use, and later in the Operator panel.


Loop Cut
^^^^^^^^

Number of Cuts :kbd:`Wheel` or :kbd:`NumpadPlus` / :kbd:`NumpadMinus`
   After activating the tool, but before confirming initial loop location,
   you can increase and decrease the number of cuts to create,
   by entering a number with the keyboard, scrolling :kbd:`Wheel` or using :kbd:`NumpadPlus` and :kbd:`NumpadMinus`.

   .. note::

      When creating multiple loops, these cuts are uniformly distributed in the original face loop,
      and you will *not* be able to control their positions.

   .. list-table::

      * - .. figure:: /images/loopcut-multicut.png
             :width: 250px

             Preview of multiple edge loops.

        - .. figure:: /images/loopcut-multicut-after.png
             :width: 250px

             Result of using multiple cuts.

Smoothing :kbd:`Alt-Wheel`
   Smoothing causes edge loops to be placed in an interpolated position, relative to the face it is added to,
   causing them to be shifted outwards or inwards by a given percentage,
   similar to the *Subdivide Smooth* command. When not using smoothing,
   new vertices for the new edge loop are placed exactly on the pre-existing edges.
   This keeps subdivided faces flat, but can distort geometry,
   particularly when using :doc:`Subdivision Surfaces </modeling/modifiers/generate/subsurf>`.
   Smoothing can help maintain the curvature of a surface once it is subdivided.

   .. list-table::

      * - .. figure:: /images/loopcut-unsmooth.png
             :width: 250px

             Added edge loops without smoothing.

        - .. figure:: /images/loopcut-smooth.png
             :width: 250px

             Same edge loops, but with smoothing value.

Falloff
   ToDo.


Edge Slide
^^^^^^^^^^

Even :kbd:`E`
   Only available for single edge loops.
   This matches the shape of the edge loop to one of the adjacent edge loops.
   (See :ref:`Edge Slide tool <modeling-meshes-editing-edge-slide>` for details).
Flip :kbd:`F`
   When Even is enabled, this flips the target edge loop to match.
   (See :ref:`Edge Slide tool <modeling-meshes-editing-edge-slide>` for details).


Offset Edge Slide
=================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Mesh Tools --> Add: Offset Edge Slide`

ToDo.
