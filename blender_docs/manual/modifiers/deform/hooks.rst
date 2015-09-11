
*************
Hook Modifier
*************

.. figure:: /images/Modifiers-Hook-example1.jpg

   Two spheres used as Hooks to deform a subdivided cube.


The Hook modifier is used to deform a *Mesh*, *Curve* a *Lattice* using another object
(usually an *Empty* or a *Bone* but it can be any object).

As the hook moves, it pulls vertices from the mesh with it.
You can think of it as animated
:doc:`proportional editing </editors/3dview/transform/transform_control/proportional_edit>`.

While hooks do not give you the fine control over vertices movement that shape keys do,
they have the advantage that you can grab vertices directly for manipulation.


Options
=======

.. figure:: /images/Modifiers-Hook.jpg

   Hook modifier


Object
   The name of the object to hook vertices to.
Vertex Group
   Allows you to define the influence per-vertex.

   *Useful when you don't something other than a spherical field of influence.*
Radius
   The size of the hooks influence.
Strength
   Adjust this hooks influance on the vertices, were ``0.0`` makes no change and ``1.0`` follows the hook.

   Since multiple hooks can work on the same vertices, you can weight the influence of a hook using this property.
Falloff Type
   This can be used to adjust the kind of curve that the hook has on the mesh,
   You can also define a custom-curve to get a much higher level of control.
Uniform Falloff
   This setting is useful when using hooks on scaled objects,
   especially in cases where non-uniform scale would stretch the result of the hook.

   *This is especially useful for lattices, where its common to use non-uniform scaling.*

The following settings are only available in Edit Mode:

Reset
   Recalculate and clear the offset transform of hook.
Recenter
   Set hook center to the 3D cursor position.

Select
   Select the vertices affected by this hook.
Assign
   Assigns selected vertices to this hook.

.. note::

   The hook modifier stores vertex indices from the original mesh to determine what to effect;
   this means that modifiers that generate geometry, like subsurf,
   should always be applied **after** the hook modifier;
   otherwise the generated geometry will be left out of the hook's influence.

