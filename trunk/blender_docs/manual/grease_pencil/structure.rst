
*********
Structure
*********

Grease Pencil Object has three main basic components: *points*, *edit lines* and *strokes*.

.. figure:: /images/grease_pencil_structure_example.png

   Example of Grease Pencil structure.


Points
======

The main element used in editing Grease Pencil Object are points.
Points represent a single point in 3D space.


Edit Lines
==========

Points are always connected by a straight line, the line you see when you are editing in Edit Mode.
They are invisible on the rendered image and used to construct the final stroke.


Strokes
=======

The stroke is the rendered image of the edit line, using a particular brush and material.


.. _layers:

2D Layers
=========

Strokes can be grouped in 2D layers, a special *Grease Pencil* layers
that help to organize the drawing order and visibility of the strokes.
Further details on working with *Grease Pencil* layers can be found
in :doc:`2D Layers </grease_pencil/properties/layers>`.
