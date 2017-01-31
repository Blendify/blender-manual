..    TODO/Review: {{review|partial=X}}.

************
Introduction
************

.. figure:: /images/editors_dopesheet_overview.jpg
   :width: 400px

   The Dope Sheet.


Classical hand-drawn animators often made a chart, showing exactly when each drawing,
sound and camera move would occur, and for how long. They nicknamed this the "dope sheet".
While CG foundations dramatically differ from classical hand-drawn animation,
Blender's *Dope Sheet* inherits a similar directive.
It gives the animator a "birds-eye-view" of every thing occurring within a scene.


Dope Sheet Modes
================

.. figure:: /images/editors_dopesheet_modes.jpg

   Dope Sheet Modes.


There are four basic views for the Dope Sheet. These all view different contexts of animation:

Dope Sheet
   The Dope Sheet Mode allow you to edit multiple actions at once.
Action Editor
   :doc:`Action Editor </editors/dope_sheet/action>` is where you can define and control actions.
Shape Key Editor
   :doc:`ShapeKey Editor </editors/dope_sheet/shapekey>` is dedicated to the *Shapekey* data-blocks.
Grease Pencil
   :doc:`Grease Pencil </editors/dope_sheet/grease_pencil>` is dedicated to
   the :doc:`grease pencil tool's </interface/grease_pencil/index>`
   keyframes for each :doc:`grease pencil layer </interface/grease_pencil/drawing/layers>`,
   you have a strip along which you can grab its keys,
   and hence easily re-time your animated sketches.

   .. note::

      Note that you will have as much top-level grease pencil channels as you have sketched areas
      (3D Views, *UV/Image Editor*, etc.)


Interface
=========

The *Dope Sheet Editor* interface is somewhat similar to the *Graph Editor*
one, it is divided in three regions:

.. _fig-dope-sheet-action:

.. figure:: /images/editors_dopesheet_action-editor.png
   :width: 600px

   The Action Editor with object channels.


Header
------

Here you find the menus, a first block of controls related to the editor "mode",
a second one concerning the action data-blocks, and a few other tools
(like the copy/paste buttons, and snapping type).

Summary
   ToDo.


View Menu
^^^^^^^^^

Realtime Updates
   When transforming keyframes, changes to the animation data are flushed to other views.
Show Frame Number Indicator
   Show frame number beside the current frame indicator line.
Show Sliders
   A toggle option that shows the value sliders for the channels.
   See the Fig. :ref:`fig-dope-sheet-action`.
Use Group Colors
   Draw groups and channels with colors matching their corresponding groups.
AutoMerge Keyframes
   Automatically merge nearby keyframes.
Sync Markers
   Sync Markers with keyframe edits.
Show Seconds
   Whether to show the time in the X-axis as frames or as seconds.

Preview Range :kbd:`P`, :kbd:`Alt-P`
   See :ref:`graph-preview-range`.


Marker Menu
^^^^^^^^^^^

See the :doc:`Markers page </animation/markers>`.


Main Region
-----------

It contains the keyframes for all visible action channels.
As with the other "time" editor, the X-axis represents time.
The Y-axis has no mean in itself, unlike with the *Graph Editor*, it is a "stack" of action channels.

Each one being shown as an horizontal colored strip (of a darker shade "during" the animated/keyed period).
On these channel strips lay the keyframes, visualized as light-gray (unselected) or yellow (selected) diamonds.

One of the key feature of this editor is that it allow you to visualize immediately which channel (i.e. F-Curve)
is *really* affected. When the value of a given channel does not change at all between two neighboring keyframes
("long keyframes"), a gray (unselected) or yellow (selected) bar is drawn between them.
Similar bars are drawn between keyframes tagged as moving hold.


Channels Region
---------------

.. figure:: /images/editors_dopesheet_action-editor-sliders.png

   The action editor showing sliders.

See :doc:`/editors/graph_editor/channels`.


Editing
^^^^^^^

On channels you can have another column with value-sliders,
allowing you to change the value of current keyframes, or to add new ones.
See `View Menu`_ above for how to show these sliders.
