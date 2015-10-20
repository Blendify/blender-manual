
************
Introduction
************

The creation of a 3D scene needs at least three key components: Models, Materials and Lights.
In this part, we will delve deeper into the creation of the first of these: modeling.
Modeling is the art and science of creating a surface that either mimics the shape
of a real-world object or expresses your imagination of abstract objects.

There are three primary types of modeling - mesh modeling, curve/surface modeling, and meta modeling.

:doc:`Mesh Modeling </modeling/meshes/introduction>`
   is done within the *3D View* and typically begins with a primitive shape (e.g. circle, cube, cylinder...).

   This :doc:`Mesh Primitive </modeling/meshes/primitives>`
   is defined by an array of points in 3D space called vertices (singular form is :term:`Vertex`).
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
      *Object mode* also provides the means to Join and Group multiple mesh primitives.

      More detailed editing of the mesh model shape is done in *Edit Mode*, and *Sculpt Mode*.
      The nature of these three modes determines the tools that are available
      within the various panels of the 3D View.
      Switching between modes while modeling is common.
      Some tools may be available in more than one mode while others may be unique to a particular mode.
:doc:`Curve modeling</modeling/curves/index>`
   Uses control points to define the shape of the curve.
:doc:`Surface modeling</modeling/surfaces/index>`
   Similar to curve modeling,
   but instead of being limited to simple linear paths,
   they allow the creation of three dimensional surfaces, potentially with volume.
:doc:`Meta Object (Metaball) Modeling </modeling/metas/index>`
   begins similarly to mesh modeling,
   with a base shape like a cube or sphere, but instead of extruding these base shapes,
   these objects are clumped together to form a larger object.
   In order to accomplish this, the metaballs have a liquid-like quality,
   when two or more are brought together they merge by smoothly rounding out the point of connection,
   appearing as one unified object.

   This can also be a quick way to get started with a rough shape which can be converted to a mesh later.
:doc:`Text Modeling </modeling/texts/introduction>` -
   inserting text is quite common for the creation of logos,
   and can be seen as a special case of neither curve nor mesh modeling.

   You may define the text, font, bevel, extruded width and several other parameters that control generated object.
Scripted Modeling
   Since Blender functionality is :ref:`extensible via Python scripting <scripting-index>`,
   there are a number of very useful scripts that assist you in modeling.
   They may give you new mesh primitives to work with,
   or apply some fancy manipulation of the meshes that you are already working with.

   Modeling scripts are an advanced topic,
   while not essential automating some tasks can be a huge time saver in certain cases.

