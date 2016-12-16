..    TODO/Review: {{review|}}.

****************************
Translation, Rotation, Scale
****************************

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool Shelf --> Tools --> Transform`
   | Menu:     :menuselection:`Mesh --> Transform --> Grab/Move, Rotate, Scale, ...`
   | Hotkey:   :kbd:`G`, :kbd:`R`, :kbd:`S`


Once you have a selection of one or more elements, you can grab/move :kbd:`G`,
rotate :kbd:`R` or scale :kbd:`S` them, like many other things in Blender,
as described in the :doc:`Manipulation in 3D Space </editors/3dview/object/transform/introduction>` section.

To move, rotate and scale selected components, either use the *Translate*, *Rotate*, and *Scale* buttons,
the :doc:`transform manipulators </editors/3dview/object/transform/transform_control/manipulators>`,
or the shortcuts:

:kbd:`G`, :kbd:`R`, and :kbd:`S` respectively.
After moving a selection, the options in the Tool Shelf allow you to fine-tune your changes,
limit the effect to certain axes, turn proportional editing on and off, etc.

Of course, when you move an element of a given type (e.g. an edge),
you also modify the implicitly related elements of other kinds (e.g. vertices and faces).

You also have in *Edit Mode* an extra option when using these basic manipulations:
the :doc:`proportional editing </editors/3dview/object/transform/transform_control/proportional_edit>`.


Transform Panel
===============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Properties region --> Transform`

When nothing is selected, the panel is empty.
When more than one vertex is selected, the median values is edited
and "Median" is added in front of the labels.

Vertex
   The first controls (X, Y, Z) show the coordinates of the selected vertex or the median point.
Space
   The Space radio buttons let you choose if those coordinates are relative to the object origin (local) or
   the global origin (global).

   Global, Local


Vertex Data
-----------

Bevel Weight
   ToDo.


Edge Data
---------

When an edge is selected, the following options are available. more buttons appear:

Bevel Weight
   See :ref:`Edge bevel weight <modeling-edges-bevel-weight>`.
Crease
   The :ref:`crease <modeling-edges-crease-subdivision>` value of the edge.
