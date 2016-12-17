
*********************
Rigid Body Properties
*********************

Type
   Role of the rigid body in the simulation.
   Active objects can be simulated dynamically, passive object remain static.

   Active
      Object is directly controlled by simulation results.
      The possibility to select this type also available with *Add Active*
      button in the *Physics* tab of the *Tool Shelf*.
   Passive
      Object is directly controlled by animation system. Thus, this type is not available for `Rigid Body Dynamics`_.
      The possibility to select this type also available with *Add Passive*
      button in the *Physics* tab of the *Tool Shelf*.

Dynamic
   Enables/disables rigid body simulation for object.
Animated
   Allows the rigid body additionally to be controlled by the animation system.
Mass
   Specifies how heavy the object is and "weights" irrespective of gravity.
   There are predefined mass preset available with the *Calculate Mass*
   button in the *Physics* tab of the *Tool Shelf*.

   Calculate Mass
      Automatically calculate mass values for Rigid Body Objects based on volume.
      There are many useful presets available from the menu, patching real-world objects.

      .. note::

         Also you can have *Custom* mass material type,
         which is achieved by setting a custom density value (kg/m\ :sup:`3`\).


Rigid Body Collisions
=====================

Rigid Body Collisions panel.


General settings
----------------

Surface Response
   Friction
      Resistance of object to movement. Specifies how much velocity is lost when objects collide with each other.
   Bounciness
      Tendency of object to bounce after colliding with another (0 to 1) (rigid to perfectly elastic).
      Specifies how much objects can bounce after collisions.

Collision Groups
   Allows rigid body collisions allocate on different groups (maximum 20).


Collision shapes
----------------

The *Shape* option determines the collision shape of the object. The following Collision Shapes are available:

Primitive shapes
   these are best in terms of memory/performance but do not
   necessarily reflect the actual shape of the object.
   They are calculated based on the object's bounding box.
   The center of gravity is always in the middle for now.

   Box
      Box-like shapes (e.g cubes), including planes (e.g. ground planes).
      The size per axis is calculated from the bounding box.
   Sphere
      Sphere-like shapes. The radius is the largest axis of the bounding box.
   Capsule
      This points up the Z-Axis.
   Cylinder
      This points up the Z-Axis.
      The height is taken from the z-axis, while the radius is the larger of the x/y-axes.
   Cone
      This points up the Z-Axis.
      The height is taken from the z-axis, while the radius is the larger of the x/y-axes.
Mesh based shapes
   these are calculated based on the geometry of the object so they are a better representation of the object.
   The center of gravity for these shapes is the object origin.

   Convex Hull
      A mesh-like surface encompassing (e.g. shrinkwrap over) all vertices (best results with fewer vertices).
      Convex approximation of the object, has good performance and stability.
   Mesh
      :term:`Mesh` consisting of triangles only, allowing for more detailed interactions than convex hulls.
      Allows to simulate concave objects, but is rather slow and unstable.

The changing collision shape is available also with *Change Shape* button in the *Physics* tab of the *Tool Shelf*.


Mesh source
-----------

Users can now specify the mesh *Source* for *Mesh* bases collision shapes:

Base
   The base mesh of the object.
Deform
   Includes any deformations added to the mesh (shape keys, deform modifiers).
Deforming
   Rigid body deforms during simulation.
Final
   Includes all modifiers.


Collision Margin
----------------

Margin
   Threshold of distance near surface where collisions are still considered (best results when non-zero).

The collision margin is used to improve performance and stability of rigid bodies. Depending on the shape, it behaves
differently: some shapes embed it, while others have a visible gap around them.

The margin is *embedded* for these shapes:

- Sphere
- Box
- Capsule
- Cylinder
- Convex Hull: Only allows for uniform scale when embedded.

The margin is *not embedded* for these shapes:

- Cone
- Active Triangle Mesh
- Passive Triangle Mesh: Can be set to 0 most of the time.


Rigid Body Dynamics
===================

Rigid Body Dynamics panel.

This panel is available only for *Active* type of rigid bodies.

Deactivation
   Enable Deactivation
      Enable deactivation of resting rigid bodies. Allows object to be deactivated during the simulation
      (improves performance and stability, but can cause glitches).
   Start Deactivated
      Starts objects deactivated. They are activated on collision with other objects.
   Linear Vel
      Specifies the linear deactivation velocity below which the rigid body is deactivated and simulation stops
      simulating object.
   Angular Vel
      Specifies the angular deactivation velocity below which the rigid body is deactivated and simulation stops
      simulating object.

Damping
   Translation
      Amount of linear velocity that is lost over time.
   Rotation
      Amount of angular velocity that is lost over time.
