
************
Introduction
************

The creation of a 3D scene needs at least three key components: Models, Materials and Lights.
In this part, the first of these is covered, that being modeling.
Modeling is simply the art and science of creating a surface that either mimics the shape
of a real-world object or expresses your imagination of abstract objects.

Modeling can take many forms in Blender depending on the type of
:doc:`object </editors/3dview/object/types/index>` you are trying to model.
Some objects for example are not able to be modeled, these being:

- Speakers
- Cameras
- Lamps


Modes
=====

Depending on the type of object you are trying to model there are different types
of modeling :doc:`mode </editors/3dview/object/modes>`.
Because modes are not specifec to modeling the are covered in different parts of the manual.


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

:doc:`Mesh Modeling </modeling/meshes/introduction>`
   Typically begins with a :doc:`Mesh Primitive </editors/3dview/object/types/primitives>`
   shape (e.g. circle, cube, cylinder...).

   This mesh primitive is defined by an array of points in 3D space called vertices (singular form is :term:`Vertex`).
   From there you might begin extruding faces and moving vertices to create a larger, more complex shape.

   Mesh Modeling Modes
      The 3D View has three principal modes that allow for the creation of,
      editing and manipulation of the mesh models.
      Each of the three modes have a variety of tools. Some tools may be found in one or more of the modes.

      Modes that used for modeling:

      - Object Mode
      - Edit Mode
      - Sculpt Mode

      Creation of a mesh primitive typically starts by adding a mesh object in *Object Mode*.
      Limited types of editing such as size, location, and orientation can be accomplished in *Object Mode*.
      *Object Mode* also provides the means to Join and Group multiple mesh primitives.

      More detailed editing of the mesh model shape is done in *Edit Mode*, and *Sculpt Mode*.
      The nature of these three modes determines the tools that are available
      within the various panels of the 3D View. Switching between modes while modeling is common.
      Some tools may be available in more than one mode while others may be unique to a particular mode.
:doc:`Curve modeling </modeling/curves/index>`
   Uses control points to define the shape of the curve.
:doc:`Surface modeling </modeling/surfaces/index>`
   Similar to curve modeling,
   but instead of being limited to simple linear paths,
   they allow the creation of three dimensional surfaces, potentially with volume.
:doc:`Meta Object (Metaball) Modeling </modeling/metas/index>`
   Begins similarly to mesh modeling (see above), with a base shape like a cube or sphere,
   but instead of extruding these base shapes, these objects are clumped together to form a larger object.
   In order to accomplish this, the metaballs have a liquid-like quality, when two or more are brought
   together they merge by smoothly rounding out the point of connection, appearing as one unified object.

   This can also be a quick way to get started with a rough shape which can be converted to a mesh later.
:doc:`Text Modeling </modeling/texts/introduction>`
   Text modeling is an easy way to create logos and to simply add text to a scene.
