
************
Introduction
************

.. figure:: /images/editors_dope-sheet_introduction_overview.png
   :width: 620px

   The Dope Sheet.

The Dope Sheet gives the animator a birds-eye-view of the keyframes inside the scene.

The Dope Sheet is inspired by classical hand-drawn animation process, in which animatots will make use of a chart, showing exactly when each drawing,
sound and camera move will occur, and for how long. This is called an exposure-sheet or 'dope sheet'.
While CG foundations dramatically differ from classical hand-drawn animation,
Blender's *Dope Sheet* inherits a similar directive.


Dope Sheet Modes
================

.. figure:: /images/editors_dope-sheet_introduction_modes.png

   Dope Sheet modes.

While the Dope Sheet Mode allow you to edit multiple actions at once,
the other ones are dedicated to view and edit specific data-blocks used in different context of animation.

- Dope Sheet
- :doc:`Action Editor </editors/dope_sheet/action>`
- :ref:`Shape Key Editor <dope-sheet-shape-key>`
- :doc:`Grease Pencil </editors/dope_sheet/grease_pencil>`
- :ref:`Mask <dope-sheet-mask>`
- Cache File: Alembic Todo 2.78.


Interface
=========

The *Dope Sheet Editor* interface is somewhat similar to the *Graph Editor*
one, it is divided in three regions:

.. figure:: /images/editors_dope-sheet_action_editor.png
   :width: 670px

   The Action Editor with object channels.


Header
------

Here you find the menus, a first block of controls related to the editor "mode",
a second one concerning the action data-blocks, and a few other tools
(like the copy/paste buttons, and snapping type).

Summary
   Toggles the "Dope Sheet Summary" channel at the top of the `Channels Region`_.
   This is used to give an overview of all the channels by combining all the actions into one channel.


.. _dope-sheet-view-menu:

View Menu
^^^^^^^^^

Sync Markers
   Sync Markers with keyframe edits.

.. figure:: /images/animation_keyframes_introduction_interpolation.png
   :align: right

   Handle types.

Show Handles and Interpolation
   Instead of drawing all keyframes as diamonds, different icons are used to show the Bézier handle type.
   When curves use a different interpolation type, a line is drawn between keys to highlight that.

   See :ref:`Handles & Interpolation Display <keyframe-handle-display>`.

.. figure:: /images/editors_dope-sheet_introduction_extremes.png
   :align: right

   Extreme markers.

Show Extremes
   Detect keys where the curve changes direction based on comparing with the adjacent key values,
   and display that by changing the keyframe icons to resemble an arrow.
   A muted version of the icon is used if the curve overshoots the extreme,
   or for groups with different results for contained curves.

See Graph editor's :ref:`graph-view-menu`.


Markers Menu
^^^^^^^^^^^^

:doc:`Markers </animation/markers>` are used to denote frames with key points or significant events
within an animation. Like with most animation editors, markers are shown at the bottom of the editor.

.. figure:: /images/editors_graph-editor_introduction_markers.png

   Markers in animation editor.

For descriptions of the different marker tools see :ref:`Editing Markers <animation-markers-editing>`.


Key Menu
^^^^^^^^

Keyframe Type :kbd:`R`
   Sets the :ref:`keyframe-type` of the selected keyframes.

See :doc:`F-Curve </editors/graph_editor/fcurves/index>`.


Main Region
-----------

.. figure:: /images/editors_dope-sheet_keyframe_types.png

This area contains keyframes for all visible action channels.
As with the other time-based editors, the X axis represents time.
The Y axis siplmply represents a stack of action channels.

On these channels lay the keyframes, which can show different information:


.. list-table::
   :widths: 20 80

   * - Grey
     - Unselected
   * - Yellow
     - Selected
   * - Diamond
     - Free Keyframe Handle
   * - Round
     - Auto-Clamped Keyframe Handle
   * - Circle
     - Automatic Keyframe Handle
   * - Square
     - Vector Keyframe Handle
   * - Rhombus
     - Aligned Keyframe Handle
   * - Various colors
     - These represent custom keyframe tags set by the user (Key > Keyframe Type)
   * - Grey bar between keys
     - Held key (the two keyframes are identical)
   * - Green line between keys
     - Fixed keyframe interpolation (set in Key > Interpolation Mode)
   * - Up-arrow
     - Maximum Extreme keyframe (visible if View > Show Curve Extremes are enabled)
   * - Down-arrow
     - Minimum Extreme keyframe (visible if View > Show Curve Extremes are enabled)



Channels Region
---------------

.. _fig-dope-sheet-action:

.. figure:: /images/editors_dope-sheet_introduction_action-editor-sliders.png

   The Action editor's channels region.

See :doc:`/editors/graph_editor/channels`.
