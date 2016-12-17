
**********
Knife Tool
**********

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Mesh Tools --> Add: Knife/Select`
   | Hotkey:   :kbd:`K` or :kbd:`Shift-K`


The knife tool can be used to interactively subdivides (cuts up) geometry by drawing lines or closed loops to create holes.


Usage
=====

When you press :kbd:`K` (or :kbd:`Shift-K`), the Knife tool becomes active.


Drawing the Cut Line
--------------------

When using *Knife*, the cursor changes to an icon of a scalpel
and the header changes to display options for the tool.
You can draw connected straight lines by clicking :kbd:`LMB`,
marked with small green squares. Red squares are already defined cuts.
Surrounding red squares mean that there is a cut already in that very position,
so no additional vertex will be created (besides the first one).

.. list-table::

   * - .. figure:: /images/knife1.png
          :width: 200px

          Mesh before knife cut.

     - .. figure:: /images/knife2.png
          :width: 200px

          Knife cut active.

     - .. figure:: /images/knife3.png
          :width: 200px

          After confirming knife cut.


Options
=======


Knife selection :kbd:`Shift-K`
   Activates the knife with another set of options so only selected faces are cut and
   *Cut through* is on by default.

New cut :kbd:`E`
   Begins a new cut. This allows you to define multiple distinct cut lines.
   If multiple cuts have been defined, they are recognized as new snapping points.

.. list-table::

   * - .. figure:: /images/knife4.png
          :width: 320px

          Creating multiple cuts.

     - .. figure:: /images/knife5.png
          :width: 320px

          Result of starting new cuts while in the tool.


Midpoint snap :kbd:`Ctrl`
   Hold to snap the cursor to the midpoint of edges,
   meaning that all cuts will be performed at the exact center of each cut edge.
Ignore snap :kbd:`Shift`
   Hold to make the tool ignore snapping,
   unlike the default where mouse cursor snaps to near edges.
Cut through: :kbd:`Z`
   Allow the cut tool to cut through to obscured faces, instead of only the visible ones.
Angle constrain :kbd:`C`
   Constrains the cut to 45 degree increments.
Close loop: Double click :kbd:`LMB`
   This is a quick way to close the loop you are currently cutting.
Draw a continuous line: :kbd:`LMB` drag.
   So you can draw a freehand line over a surface,
   points will be created at edge intersections.

.. list-table::

   * - .. figure:: /images/knife6.png
          :width: 320px

          Constraining cut angle.

     - .. figure:: /images/knife7.png
          :width: 320px

          Result of constraining cut angle.


Confirming and selection
========================

Pressing :kbd:`Esc` or :kbd:`RMB` at any time cancels the tool,
and pressing :kbd:`LMB` or :kbd:`Return` confirms the cut, with the following options:

:kbd:`Return` will leave selected every edge except the new edges created from the cut.


Limitations
===========

Cuts that begin or end in the middle of a face, will be ignored.
This is a limitation of the current geometry that can be modeled in Blender.


Knife Project
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Mesh Tools --> Add: Knife Project`

Knife projection is a non-interactive tool where you can use objects to cookie-cut into the
mesh rather than hand drawing the line.

This works by using the outlines of other selected objects in edit-mode to cut into the mesh,
resulting geometry inside the cutters outline will be selected.

Outlines can be wire or boundary edges.

To use Knife Project,
in 'object' mode select the "cutting object" first then shift select the "object to be cut".
Now tab into edit mode and press "knife project".


Examples
--------

.. list-table::

   * - .. figure:: /images/knife_project_text_before.jpg
          :width: 320px

          Before projecting from a text object.

     - .. figure:: /images/knife_project_text_after.jpg
          :width: 320px

          Resulting knife projection.

   * - .. figure:: /images/knife_project_mesh_before.jpg
          :width: 320px

          Before projecting from a mesh object.

     - .. figure:: /images/knife_project_mesh_after.jpg
          :width: 320px

          Resulting knife projection (extruded after).

   * - .. figure:: /images/knife_project_curve_before.png
          :width: 320px

          Before projecting from a 3D curve object.

     - .. figure:: /images/knife_project_curve_after.jpg
          :width: 320px

          Resulting knife projection (extruded after).


Known Issues
------------

Cutting holes into single faces may fail,
this is the same limitation as with the regular knife tool but more noticeable for text,
this can be avoided by projecting onto more highly subdivided geometry.
