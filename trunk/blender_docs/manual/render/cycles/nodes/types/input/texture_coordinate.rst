.. _bpy.types.ShaderNodeTexCoord:

***********************
Texture Coordinate Node
***********************

.. figure:: /images/render_cycles_nodes_types_input_texture-coordinate_node.png
   :align: right

   Texture Coordinate Node.

The *Texture Coordinate* node is commonly used for the coordinates of textures,
typically used as inputs for the *Vector* input for texture nodes.


Inputs
======

This node has no inputs.


Properties
==========

Object
   Specific object to use for object space coordinates.
   This only affects the *Object* output.

.. _cycles-nodes-input-texture-coordinate-from-dupli:

From Dupli
   If the material is applied to a dupli object, use texture coordinates from the parent object.
   This only affects the *Generated* and *UV* outputs.

   .. figure:: /images/render_cycles_nodes_types_input_texture-coordinate_from-dupli-comparison.png

      From left to right: Sphere with UV mapped texture.
      Small spheres duplicated to the faces of the textured sphere using
      :doc:`duplifaces </editors/3dview/object/properties/duplication/duplifaces>`.
      Small spheres with *From Dupli* enabled, using the UV map of the large sphere.

   .. note::

      *From Dupli* only works with the UV output when the dupli object is instanced from faces,
      either with :doc:`particles </physics/particles/introduction>` or
      :doc:`duplifaces </editors/3dview/object/properties/duplication/duplifaces>`.


Outputs
=======

Generated
   Automatically-generated texture coordinates from the vertex positions of the mesh without deformation,
   keeping them sticking to the surface under animation. Range from 0.0 to 1.
   0 over the bounding box of the undeformed mesh.
Normal
   Object space normal, for texturing objects with the texture staying fixed on the object as it transformed.
   The Normal output can be used on Point and Spot lamps. The coordinates will take
   the rotation of the lamp into account.
UV
   UV texture coordinates from the active render UV map.
Object
   Position coordinate in object space.
Camera
   Position coordinate in camera space.
Window
   Location of shading point on the screen, ranging from 0.0 to 1.
   0 from the left to right side and bottom to top of the render.
Reflection
   Vector in the direction of a sharp reflection, typically used for environment maps.
