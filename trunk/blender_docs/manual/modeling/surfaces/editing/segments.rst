
********
Segments
********

Subdivision
===========

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Surface tools --> Modeling: Subdivide`
   :Menu:      :menuselection:`Surface --> Segments --> Subdivide`, :menuselection:`Specials --> Subdivide`

Surface subdivision is most simple:
using either the *Subdivide* entry in the *Specials* menu
:kbd:`W`, or the *Subdivide* button of the *Curve Tools1* panel,
you will subdivide once all *completely* selected grids by subdividing each "quad" into four
smaller ones.

If you apply it to a 1D surface (a "surface curve"),
this tool works exactly as with :ref:`curves <modeling-curves-subdivision>`.


.. _modeling_surfaces_editing_segments_switch-direction:

Switch Direction
================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Panel:     :menuselection:`Toolbar --> Tools --> Surface tools --> Curve: Switch Direction`
   :Menu:      :menuselection:`Surface --> Segments --> Switch Direction`

This tool will "reverse" the direction of any curve with at least one selected element
(i.e. the start point will become the end one, and *vice versa*).
Mainly useful when using a curve as path, or the bevel and taper options...
