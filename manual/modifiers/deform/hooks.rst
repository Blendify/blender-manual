
*************
Hook Modifier
*************

.. figure:: /images/25-Manual-Modifiers-Hook-example1.jpg

   Two spheres used as Hooks to deform a subdivided cube.


The Hook modifier is used to deform a *Mesh* or a *Lattice* using another object
(usually an *Empty* but it can be any object).

As the hook moves, it pulls vertices from the mesh with it.
You can think of it as animated :doc:`proportional editing </3d_interaction/transform_control/proportional_edit>`.
While hooks do not give you the fine control over vertices movement that shape keys do, they are much simpler to use.


Options
=======

.. figure:: /images/25-Manual-Modifiers-Hook.jpg

   Hook modifier


Object
   The name of the object to hook vertices to.

Falloff
   If not zero, the *falloff* is the distance where the influence of a hook goes to zero.
   It uses a smooth interpolation, comparable to the
   :doc:`proportional editing tool </3d_interaction/transform_control/proportional_edit>`.

Force
   Since multiple hooks can work on the same vertices, you can weight the influence of a hook this way.
   Weighting rules are:

   - If the total of all forces is smaller than ``1.0``, the remainder (``1.0 - (forces sum)``,
     will be the factor the original position has as its force.
   - If the total of all forces is larger than ``1.0``,
     it only uses the hook transformations, averaged by their weights.

The following settings are only available in Edit Mode:

Reset
   Recalculate and clear the offset transform of hook.
Recenter
   Set hook center to the 3D cursor position.

Select
   Select the vertices affected by this hook.
Assign
   Assigns selected vertices to this hook.


Hints
=====

- The hook modifier stores vertex indices from the original mesh to determine what to effect;
  this means that modifiers that generate geometry,
  like subsurf, should always be applied **after** the hook modifier;
  otherwise the generated geometry will be left out of the hook's influence.


