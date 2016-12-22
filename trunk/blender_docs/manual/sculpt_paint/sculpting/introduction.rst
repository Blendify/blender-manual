
************
Introduction
************

Overview
========

*Sculpt Mode* is similar to *Edit Mode* in that it is used to alter the shape of a model,
but Sculpt Mode uses a very different workflow:
instead of dealing with individual elements (vertices, edges, and faces),
an area of the model is altered using a brush.
In other words, instead of selecting a group of vertices,
Sculpt Mode automatically selects vertices based on where the brush is, and modifies them accordingly.


Sculpt Mode
===========

Sculpt mode is selected from the mode menu of the *3D View* header.
Once sculpt mode is activated the Tool Shelf of the *3D View* will change
to sculpt mode specific panels. The panels will be *Brush*,
*Texture*, *Tool*, *Symmetry*, *Stroke*, *Curve*, *Appearance*, and *Options*.
Also a red circle will appear that follows the location of the cursor in the 3D View.

.. note::

   To have a predictable brush behavior, apply the scale of your mesh.

.. figure:: /images/sculpt-paint_sculpting_mode_selector.png

   3D View Mode selector: Sculpt Mode.

.. figure:: /images/sculpt-paint_sculpting_sculpt_brush_circle.png

   The cursor in Sculpt Mode.


Sculpt Menus
============

Tool Menu
---------

Here you can select the type of brush preset to use.
*Reset Brush* will return the settings of a brush to its defaults.
You can also set Blender to use the current brush for *Vertex Paint Mode*,
*Weight Paint Mode*, and *Texture Paint Mode* using the toggle buttons.


Keyboard Shortcuts
==================

These shortcuts may be customized under
:menuselection:`File --> User Preferences --> Input --> 3D View --> Sculpt Mode`.


.. list-table:: Brush Option Shortcuts.

   * - Smooth stroke toggle
     - :kbd:`Shift`
   * - Translate/scale/rotate stencil texture
     - :kbd:`RMB`, :kbd:`Shift-RMB`, :kbd:`Ctrl-RMB`
   * - Translate/scale/rotate stencil mask
     - :kbd:`Alt-RMB`, :kbd:`Alt-Shift-RMB`, :kbd:`Alt-Ctrl-RMB`

.. list-table:: Other Shortcuts.

   * - Hide mesh inside selection
     - :kbd:`H` then click & drag
   * - Reveal mesh inside selection
     - :kbd:`Shift-H` then click & drag
   * - Show entire mesh
     - :kbd:`Alt-H`
   * - Mask clear
     - :kbd:`Alt-M`
   * - Mask invert
     - :kbd:`Ctrl-I`
   * - Step up one multires level
     - :kbd:`PageUp`
   * - Step down one multires level
     - :kbd:`PageDown`
   * - Set multires level
     - :kbd:`Ctrl-0` to :kbd:`Ctrl-5`
   * - Dynamic Topology toggle
     - :kbd:`Ctrl-D`
   * - Dynamic Topology detail
     - :kbd:`Shift-D`
