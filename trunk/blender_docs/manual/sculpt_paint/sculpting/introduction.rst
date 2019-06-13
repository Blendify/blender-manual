
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
Sculpt Mode manipulates geometry in the brush region of influence.


Sculpt Mode
===========

Sculpt mode is selected from the mode menu of the *3D View* header.
Once sculpt mode is activated, the Tool Shelf of the *3D View* will change
to sculpt mode specific panels. The panels will be *Brush*, *Texture*, *Stroke*,
*Falloff*, *Display*, *Dyntopo*, *Symmetry*, and *Options*.
A red circle will appear and follow the location of the cursor in the 3D View.

.. note::

   To have a predictable brush behavior, apply the scale of your mesh.

.. figure:: /images/sculpt-paint_sculpting_introduction_mode-selector.png

   3D View Mode selector: Sculpt Mode.

.. figure:: /images/sculpt-paint_sculpting_introduction_brush-circle.png

   The cursor in Sculpt Mode.


Keyboard Shortcuts
==================

- Smooth stroke toggle :kbd:`Shift`
- Invert stroke toggle :kbd:`Ctrl`

Cancel Stroke in Progress :kbd:`Esc`
   By pressing :kbd:`Esc` while in the middle of a sculpt stroke,
   the stroke will be canceled and any changes will be undone.
