
************
Introduction
************

The creation of a 3D scene needs at least three key components: Models, Materials and Lights.
In this part, we will delve deeper into the creation of the first of these: modeling.
Modeling is the art and science of creating a surface that either mimics the shape
of a real-world object or expresses your imagination of abstract objects.

There are three primary types of modeling - mesh modeling, curve/surface modeling, and meta modeling.

:doc:`Mesh Modeling </modeling/meshes/introduction>`
====================================================

Mesh modeling typically begins with a primitive shape (e.g. circle, cube, cylinder...).
This :doc:`Mesh Primitive </modeling/meshes/primitives>` is defined by an array of points in 3D space called vertices
(singular form is :term:`Vertex`). From there you might begin extruding faces and moving vertices to create a larger,
more complex shape.

:doc:`Curve </modeling/curves/introduction>` and :doc:`Surface </modeling/surfaces/introduction>` Modeling
==========================================================================================================

:doc:`Curve modeling</modeling/curves/index>` uses control points to define the shape of the curve.

:doc:`Surface modeling</modeling/surfaces/index>` is similar to curve modeling,
but instead of being limited to simple linear paths, they allow the creation of three dimensional surfaces,
potentially with volume.

:doc:`Meta Object (Metaball) Modeling</modeling/metas/index>`
=============================================================

Metaball modeling begins similarly to mesh modeling, with a base shape like a cube or sphere, but instead of
extruding these base shapes, these objects are clumped together to form a larger object. In order to accomplish this,
the metaballs have a liquid-like quality, when two or more are brought together they merge by smoothly rounding
out the point of connection, appearing as one unified object.

This is one of the quickest ways to get started roughly modeling an object.
The resulting figure can then be converted into a mesh for further detailing using :kbd:`Alt-C`.

:doc:`Text Modeling </modeling/texts/introduction>`
===================================================

Inserting text is quite common for the creation of logos, and can be seen as a special case of neither curve nor mesh
modeling. You may define the text, font, bevel, extruded width and several other parameters
that control generated object.

Scripted Modeling
=================

Since Blender functionality is :doc:`extensible via Python scripting </advanced/scripting/index>`,
there are a number of very useful scripts that assist you in modeling.
They may give you new mesh primitives to work with,
or apply some fancy manipulation of the meshes that you are already working with.

Modeling scripts are generally more advanced, but also less frequently used
programmatic effects that can be a huge time saver in certain cases.

The included :doc:`spin </modeling/meshes/editing/duplicating/spin>`
and :doc:`screw </modeling/meshes/editing/duplicating/screw>` functions are examples of a modeling scripts that
might otherwise take significantly more work to replicate by hand through mesh or curve modeling.
