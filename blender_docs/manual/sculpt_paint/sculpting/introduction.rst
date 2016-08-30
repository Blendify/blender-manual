
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

.. figure:: /images/sculpt_mode_drop_down.png

   Sculpt Mode Dropdown.

.. figure:: /images/sculpt_brush_circle.png

   The cursor in Sculpt Mode.


Sculpt Menus
============

Tool Menu
---------

Here you can select the type of brush preset to use.
*Reset Brush* will return the settings of a brush to its defaults.
You can also set Blender to use the current brush for *Vertex Paint Mode*,
*Weight Paint Mode*, and *Texture Paint Mode* using the toggle buttons.


Hiding and Masking Mesh
=======================

It is sometimes useful to isolate parts of a mesh to sculpt on. To hide a part of a mesh,
press :kbd:`H` then click & drag around the part you want to hide.
To reveal a hidden part of a mesh,
press :kbd:`Shift-H` then click & drag around the part you want to reveal.
To reveal all hidden parts, just press :kbd:`Alt-H`.
With the mask brush we can paint a part of the mesh and hide it.

.. figure:: /images/sculpt_hide_mask.png
   :width: 610px

   Black part is masked, down in the picture mask/hide menu.


Keyboard Shortcuts
==================

These shortcuts may be customized under
:menuselection:`File --> User Preferences --> Input --> 3D View --> Sculpt Mode`.


.. list-table:: Brush Selection Shortcuts.

   * - *Draw* brush
     - :kbd:`X`
   * - *Smooth* brush
     - :kbd:`S`
   * - *Pinch/Magnify* brush
     - :kbd:`P`
   * - *Inflate/Deflate* brush
     - :kbd:`I`
   * - *Grab* brush
     - :kbd:`G`
   * - *Layer* brush
     - :kbd:`L`
   * - *Flatten/Contrast* brush
     - :kbd:`Shift-T`
   * - *Clay* brush
     - :kbd:`C`
   * - *Crease* brush
     - :kbd:`Shift-C`
   * - *Snake Hook* brush
     - :kbd:`K`
   * - *Mask* brush
     - :kbd:`M`
   * - Set brush by number
     - :kbd:`0` - :kbd:`9` and :kbd:`Shift-0` to :kbd:`Shift-9`

.. list-table:: Brush Option Shortcuts.

   * - Interactively set brush size
     - :kbd:`F`
   * - Increase/decrease brush size
     - :kbd:`[` and :kbd:`]`
   * - Interactively set brush strength
     - :kbd:`Shift-F`
   * - Interactively rotate brush texture
     - :kbd:`Ctrl-F`
   * - Brush direction toggle (*Add* / *Sub*)
     - :kbd:`Ctrl` pressed while sculpting
   * - Brush normal weight toggle
     - :kbd:`Ctrl` toggle *Normal Weight*.

       (for *Grab* and *Snake Hook* brushes).
   * - Set stroke method (airbrush, anchored, ..)
     - :kbd:`E`
   * - Toggle Smooth Stroke
     - :kbd:`Shift-S`
   * - Smooth stroke toggle
     - :kbd:`Shift`
   * - Set texture angle type
     - :kbd:`R`
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
