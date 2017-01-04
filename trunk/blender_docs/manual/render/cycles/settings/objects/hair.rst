
**************
Hair Particles
**************

These are extra settings for :doc:`Hair Particles </physics/particles/hair/index>` used by Cycles.


Hair Rendering
==============

These are global settings that apply to all instances of hair systems.
They can be found inside the *Cycles Hair Rendering* panel under the particle tab.

.. Which also can to be deactivated.

The resolution of the strands is controlled by the step values in particle settings.
Each hair system uses the material identified in the particle settings in the same way as Blender Internal. 


Primitive
---------

Triangles
   Uses a triangle mesh.

   Resolution
      ToDo.
Line Segments
   Uses a straight curve primitive.
Curve Segments
   Uses a smooth Cardinal curve primitive. These interpolate a path through the curve keys.
   However, it renders slower than line segments.

   Curve Subdivisions
      The interpolated path is subdivided to give points to connect.
      The parameter subdivisions sets the number of divisions used.


Further Options
---------------

Shape
   Thick
      Cylindrical segments between two points.
   Ribbons
      Are flat planes following the strand direction facing the camera.
Cull back-faces
   Excludes strands emitted from the mesh back facing the camera.
Min Pixels
   Strands that are further away will be made wider, which is compensated with transparency to keep the look similar.
   This effect is only applied for camera rays. It works best with ribbon primitives.
Max Extension
   ToDo.


Hair Settings
=============

The Cycles Hair Settings, under the particle tab, are used to control each hair particle system's strand properties. 

Shape
   A shape parameter that controls the transition in thickness between the root and tip.
   Negative values make the primitive rounded more towards the top,
   the value of zero gives makes the primitive linear,
   and positive values makes the primitive rounded more towards the bottom.


Thickness
---------

Root
   Multiplier of the hair width at the root.
Tip
   Multiplier of the hair width at the tip.
Scaling
   Multiplier for the *Root* and *Tip* values. This can be used to change the thickness of the hair.

   .. Particle width scaling relative to the object scale.

Close tip
   Sets the thickness at the tip to zero, even when using a non-zero tip multiplier.


Texture
=======

ToDo
