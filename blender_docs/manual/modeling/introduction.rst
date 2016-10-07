
************
Introduction
************

The creation of a 3D scene needs at least three key components: Models, Materials and Lights.
In this part, the first of these is covered, that being modeling.
Modeling is simply the art and science of creating a surface that either mimics the shape
of a real-world object or expresses your imagination of abstract objects.

Modeling can take many forms in Blender depending on the type of
:ref:`object <objects-types>` you are trying to model.
Some objects for example are not able to be modeled, these being:

- Speakers
- Cameras
- Lamps


Modes
=====

Depending on the type of object you are trying to model there are different types
of modeling :doc:`mode </editors/3dview/modes>`.
Because modes are not specific to modeling the are covered in different parts of the manual.


Edit Mode
---------

Edit mode is the main mode that modeling takes place.
Edit mode is used to edit to fallowing types of objects:

- Meshes
- Curves
- Surfaces
- Metaballs
- Text objects
- Lattice

Because each of these are different types of object they have different types of transforms
and therefore have different set of tool. Because of this each has its own section described below.

:doc:`Mesh Modeling </modeling/meshes/index>`
   Typically begins with a :doc:`Mesh Primitive </modeling/meshes/primitives>`
   shape (e.g. circle, cube, cylinder...).
:doc:`Curve Modeling </modeling/curves/index>`
   Uses control points to define the shape of the curve.
:doc:`Surface Modeling </modeling/surfaces/index>`
   Similar to curve modeling,
   but instead of being limited to simple linear paths,
   they allow the creation of three dimensional surfaces, potentially with volume.
:doc:`Metaball Modeling </modeling/metas/index>`
   Begins similarly to mesh modeling (see above), with a base shape like a cube or sphere,
   but instead of extruding these base shapes, these objects are clumped together to form a larger object.
   In order to accomplish this, the metaballs have a liquid-like quality, when two or more are brought
   together they merge by smoothly rounding out the point of connection, appearing as one unified object.

   This can also be a quick way to get started with a rough shape which can be converted to a mesh later.
:doc:`Text Modeling </modeling/texts/index>`
   Text modeling is an easy way to create logos and to simply add text to a scene.

:doc:`Modifiers </modeling/modifiers/introduction>`
   Modifiers are automatic operations that affect an object in a non-destructive way.
   With modifiers, you can perform many effects automatically that would otherwise be tedious to do manually.

