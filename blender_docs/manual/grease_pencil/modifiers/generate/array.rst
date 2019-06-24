
**************
Array Modifier
**************

The *Array* modifier creates an array of copies of the strokes, with each copy being offset from
the previous one in any of a number of possible ways.

Useful for creating complex repetitive drawings.

Multiple Array modifiers may be active for an object at the same time
(e.g. to create complex three-dimensional constructs).


Options
=======

.. figure:: /images/grease_pencil_modifiers_generate_array_panel.png
   :align: right

   The Array modifier.

Count
   Total number of items.

Offset
------

Offset, X, Y, Z
   Distance between items. X, Y and Z distances can be specified.

Objet Offset
    Use the location or rotation of another Object to determine the distance
    and rotational change between arrayed items.

.. note::

   The *Depth Order* used in the *Grease Pencil* Object has influence in the strokes visualization when using the array modifier.
   See :doc:`Depth Order </grease_pencil/properties/strokes>` for more information.

Shift
------

Shift, X, Y, Z
   Shiftteness.
   X, Y and Z shift can be specified.

Rotation
---------

Rotation, X, Y, Z
   Changes in rotation to apply to the duplicated items.
   X, Y and Z rotation can be specified.

Random factor   
   Toggle button and random value to apply for rotation.
   
Scale
------

Scale, X, Y, Z
   Changes in scale to apply to the duplicated items.
   X, Y and Z scale can be specified.

Random factor
   Toggle button and random value to apply for scale.

Material
---------

Material Index
  Index of the material to use on duplicated strokes (0 use strokes original materials)

Keep original stroke on top
  Maintains the original strokes used in the array on top of the duplicated ones.


Influence filters
-----------------

Material
   Restricts the effect only to material that share the same pass index.

Layer
   Restricts the effect only to one layer or to any layers that share the same pass index.
