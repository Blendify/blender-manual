
****
Hair
****

These are extra settings for :doc:`Hair Particles </physics/particles/hair/index>` used by Cycles.


Textures
========

TODO.


Cycles Hair Rendering
=====================

These are global settings that apply to all instances of hair systems.

Primitive
   Triangles
      Todo.
   Line Segments
      Todo.
   Curve Segments
      Todo.

Shape
   Todo.
Cull back-faces
   Todo.

Min Pixels
   Todo.
Max Ext.
   Todo.

Cycles Hair Settings
====================

Shape
   Controls how the hair primitives are curved.
   Negative values make the primitive rounded more towards the top,
   the value of zero gives makes the primitive linear,
   and positive values makes the primitive rounded more towards the bottom.


Thickness
---------

Root
   The size of the hair primitive at its root.
Tip
   The size of the hair primitive at its tip.
Scaling
   Multiplier for the *Root* and *Tip* values. This can be used to change the thickness of the hair.
Close tip
   Sets the radius of the tip to zero.
