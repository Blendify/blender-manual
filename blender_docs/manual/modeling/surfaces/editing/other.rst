
*****
Other
*****

Other Specials Options
======================

.. admonition:: Reference
   :class: refbox

   :Mode:      Edit Mode
   :Menu:      Specials
   :Hotkey:    :kbd:`W`

The *Specials* menu contains exactly the same additional options as for
curves, except for *Set Radius* and *Smooth Radius*.


Conversion
----------

As there are only NURBS surfaces, there is no "internal" conversion here.

However, there is an "external" conversion available, from surface to mesh,
that only works in *Object Mode*.
It transforms a *Surface* object into a *Mesh* one,
using the surface resolutions in both directions to create faces, edges and vertices.


Misc Editing
------------

You have some of the same options as with meshes, or in *Object Mode*.
You can :ref:`separate <object-separate>` a given surface :kbd:`P`,
make other selected objects :ref:`children <object-parenting>`
of one or three control points :kbd:`Ctrl-P`,
or :doc:`add hooks </modeling/modifiers/deform/hooks>` to control some points with other objects.

The *Mirror* tool is also available, behaving exactly as with
:doc:`mesh objects </modeling/meshes/editing/transform/mirror>`.
