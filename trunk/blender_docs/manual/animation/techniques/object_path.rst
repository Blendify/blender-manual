
************************
Moving Objects on a Path
************************

To make objects move along a path is a very common animation need.
Think of a complex camera traveling,
a train on his rails and most other vehicles can also use "invisible" tracks,
the links of a bicycle chain, etc.
All these movements could obviously be done with standard F-Curves, but this would be a nightmare!
It is much easier and intuitive to define a path materializing the desired
movement, and make your object(s) follow it.

Blender features you two different constraints to make an object follow a path,
which have different ways to determine/animate the position of their owner along their path.

In Blender, any :doc:`curve object </modeling/curves/introduction>` can become a path.
A curve becomes a path when its *Path Animation* button is enabled in the *Curve* data panel,
but you do not even have to bother about this: once a curve is selected as the target for a "path" constraint,
it automatically is enabled.

You can also directly add a "path" from the :menuselection:`Add --> Curve --> Path` menu entry (in a 3D View).
This will insert in your scene a *three-dimensional* NURBS curve.
This is an important point: by default, Blender's curves are *2D* and will not move on the Z axis.
To turn a standard curve three-dimensional, enable its *3D* button,
in the same *Curve and Surface* editing panel.

One last curve property that is important for a path is its *direction*, which is,
for three-dimensional ones, materialized by its small arrows.
You can switch it with the :menuselection:`Curve --> Segments --> Switch Direction`,
:menuselection:`Specials --> Switch Direction`.

For more on editing path/curves, see the :doc:`modeling chapter </modeling/curves/introduction>`.

.. note:: Shapes on Curves

   If you would rather like to have your object's *shape* follow a path (like e.g.
   a sheet of paper inside a printer),
   you should use the :doc:`Curve Modifier </modeling/modifiers/deform/curve>`


Parenting Method
================

:doc:`Parenting </editors/3dview/object/properties/relations/parents>` menu choose *Follow Path* or *Path Constraint*
for a automatic setup.


The Follow Path Constraint
==========================

The *Follow Path* constraint implements the most "classical" technique. By default,
the owner object will walk the whole path only once, starting at frame one,
and over 100 frames. You can set a different starting frame in the *Offset*
field of the constraint panel, and change the length (in frames)
of the path using its *Frames* property (*Curve and Surface* panel).

But you can have a much more precise control over your object's movement along its path by
keyframing or defining a *Speed* animation curve for the path's *Evaluation Time* attribute.
This curve maps the current frame to a position along the path,
from (0.0 to 1.0) (start point to end point).

For more details and examples,
see the :doc:`Follow Path constraint page </rigging/constraints/relationship/follow_path>`.


The Clamp To Constraint
=======================

Another method of keeping objects on a path is to use the *Clamp To* constraint,
which implements a more advanced technique.
To determine where along the path should lay its owner,
its uses the *location of this owner* along a given axis.
So to animate the movement of your owner along its target path, you have to animate some way
(F-Curves or other indirect animation) its location.

This implies that here, the length of the path have no more any effect -- and that by default,
the object is static somewhere on the path!

For more details and examples, see the :doc:`Clamp To constraint page </rigging/constraints/tracking/clamp_to>`.
