
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

Points are always connected by a straight line,
the line you see when you are editing in Edit Mode or when you look at a stroke in wire-frame view.
They are invisible on the rendered image and used to construct the final stroke.


Strokes
=======

The stroke is the rendered image of the edit line, using a particular brush and material.
