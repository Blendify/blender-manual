
**************
Static Physics
**************

Static objects in the :doc:`Blender Game Engine </game_engine/index>` do not automatically react to physics,
including gravity and collisions.
Even if hit by the force of a speeding 18-wheeler truck,
it will remain unresponsive in terms of location, rotation, or deformation.

It will, however, give collision reactions. Objects will bounce off of Static Objects,
and rotational inertia will transfer to objects capable of rotating (that is,
Rigid Body Objects will spin in response, though Dynamic Objects will not).

Note that none of this prevents you from transforming the Static Objects with
:doc:`Logic Bricks </game_engine/logic/index>` or Python code.
The visual objects will correctly move and their physics representation will update in the engine as well.

Another important note is that the default
`Collision Bounds`_
is a Triangle Mesh, meaning it is higher in computational requirements but also in detail.
This in turn means the "Radius" option has no effect by default.

For more documentation, see the :doc:`Top BGE Physics page </game_engine/physics/index>`.


Options
=======

.. note::  bpy Access

   	Note that most of these properties are accessible through the non-
   	BGE scripting API via ``bpy.data.objects["ObjectName"].game``,
   	which is of type ``bpy.types.GameObjectSetting``. This is useful so you can,
   	for example, set a range of objects to have gradated values via a for-loop.

- Actor - Enables detection by Near and Radar Sensors.
  - Default: On.
  - Python property: ``obj.game.use_actor``
- Ghost - Disables collisions completely, similar to No Collision.
  - Default: Off.
  - Python property: ``obj.game.use_ghost``
- Invisible - Does not display, the same as setting the object to unrendered (
  such as unchecking the "Camera" icon in the Outliner).
  - Default: Off.
  - Python property: ``obj.use_render``

Radius
   If you have the "Collision Bounds: Sphere"
   set explicitly (or implicitly through having the Collision Bounds subpanel unchecked),
   this will multiply with the Object's (unapplied) Scale. Note that none of the other bounds types are affected.
   Also note that in the 3D View the display will show this for all types,
   even though it is only actually used with Sphere. Python property: ``obj.game.radius``

.. list-table::

   * - **Basic**

     - **Radius= 1.5**

     - **Unapplied Scale**

     - **Applied Scale**

     - **Collision Bounds**

   * - Rolls, radius of 1 BU

     - Rolls, radius of 1.5 BU (after "popping" upward)

     - Rolls, radius of 1.5 BU

     - Rolls, radius of 1 BU (!)

     - Default (which is Sphere)

   * - Slides, extent of 1 BU

     - Slides, extent of 1 BU

     - Slides, extent of 1 BU

     - Slides, extent of 1 BU

     - Box

   * - ""

     - ""

     - ""

     - ""

     - Convex Hull

   * - Slides, extent of 1 BU (but with more friction than above)

     - Slides, extent of 1 BU (but with more friction than above)

     - Acts insane

     - Slides extent of 1.5 BU

     - Triangle Mesh

Anisotropic Friction
   Isotropic friction is identical at all angles. Anisotropic is directionally-dependant.
   Here you can vary the coefficients for the three axes individually, or disable friction entirely.
   Python properties: ``obj.game.use_anisotropic_friction``
   (boolean) and ``obj.game.friction_coefficients`` (a 3-element array).

Collision Bounds
================

.. note::

   The Static type differs from the others in that it defaults to a Triangle Mesh bounds,
   instead of a simple sphere.

The first thing you must understand is the idea of the 3d Bounding Box.
If you run through all the vertices of a mesh and record the lowest and highest x values,
you have found the `x min/max` the complete boundary for all x values within the mesh.
Do this again for y and z, then make a rectangular prism out of these values, and you have a `Bounding Box`.
This box could be oriented relative globally to the world or locally to the object's rotation.

.. figure:: /images/BGE-Physics-BoundingBox.png

   Demonstration of a Local Bounding Box (left) and a Global Bounding Box (right).

The `x extent`, then, is half of the distance between the x min/max.

Throughout all of this you must be cognizant of the Object Origin. For the Game engine,
the default :kbd:`Ctrl-Alt-Shift-C`, :kbd:`3` (:menuselection:`Set Origin --> Origin to Geometry`)
is unlikely to get the desired placement of the Collision Bounds that you want.
Instead, you should generally set the origin by looking at the :kbd:`T`-toolshelf after you do the `Set Origin`,
and changing the `Center` from `Median Center` to `Bounds Center`.
Blender will remember this change for future :kbd:`Ctrl-Alt-Shift-C` executions.

All Collision Bounds are centered on this origin. All boxes are oriented locally, so object rotation matters.

.. figure:: /images/BGE-Physics-OriginToBoxBounds.png

   Setting the origin to Bounds Center instead of Median Center.

A final introductory comment: When you set the Collision Bounds on an object,
Blender will attempt to display a visualization of the bounds in the form of a dotted outline.
Currently, there is a bug: `The 3D View`
does not display this bounds preview where it actually will be during the game.
To see it, go to :menuselection:`Game --> Show Physics Visualization`
and look for the white (or green, if sleeping) geometry.

Now we can explain the various options for the `Collision Bounds` settings:

Default
   For Dynamic and Static objects, it is a Triangle Mesh (see below).
   For everything else, it is a Sphere (see below). 
Capsule - A cylinder with hemispherical caps, like a pill.
   Radius of the hemispheres is the greater of the x or y extent.
   Height is the z bounds 
Box
   The x,y,z bounding box, as defined above.
Sphere
   Radius is defined by the object's scale (visible in the N properties panel) times the physics radius
   (can be found in Physics » Attributes » Radius.
   Note: This is the only bounds that respects the Radius option. 
Cylinder
   Radius is the greater of the x or y extent.
   Height is the z bounds. 
Cone
   Base radius is the greater of the x or y extent.
   Height is the z bounds. 
Convex Hull
   Forms a shrink-wrapped, simplified geometry around the object.

.. figure:: /images/BGE-Physics-ConvexHull.png

   A convex hull sketch

Triangle mesh
   Most expensive, but most precise. Collision will happen with all of triangulated polygons,
   instead of using a virtual mesh to approximate that collision.
By Hand
   This is not an option in the Physics tab's Collision Bounds settings, but a different approach, entirely.
   You create a second mesh, which is invisible, to be the physics representation.
   This becomes the parent for your display object. Then,
   your display object is set to ghost so it doesn't fight with the parent object.
   This method allows you to strike a balance between the accuracy of `Triangle Mesh`
   with the efficiency of some of the others. See the demo of this in the dune buggy to the right.

.. figure:: /images/BGE-Physics-ManualHull.png

   Another way to create Collision Bounds -- By hand.

Options
-------

There are only two options in the Collision Bounds subpanel.

Margin
   "Add extra margin around object for collision detection, small amount required for stability."
   If you find your objects are getting stuck in places they shouldn't, try increasing this to, say, 0.06.

   Sometimes 0.06 is the default (such as on the Default Cube), but sometimes it is not.
   You have to keep an eye on the setting, or else learn the symptoms so you can respond when it gives you trouble.
   If you're lazy/paranoid/unsure/diligent/bored,
   you can always run this on the Python Console to bump all 0.0 margins to 0.06: for
   `obj` in ``bpy.data.objects``: ``obj.game.collision_margin = obj.game.collision_margin`` or 0.06 
Compound
   "Add children to form compound collision object." Basically,
   if you have a child object and do not have this enabled,
   the child's collisions will not have an effect on that object "family"
   (though it will still push other objects around). If you do have it checked,
   the parent's physics will respond to the child's collision (thus updating the whole family).
   Python property: ``obj.game.use_collision_compound``

Create Obstacle
===============

Todo
