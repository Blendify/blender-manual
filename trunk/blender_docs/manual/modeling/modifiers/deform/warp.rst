..    TODO/Review: {{Review|im= Requires image to show function.}}.

*************
Warp Modifier
*************

This deformation modifier can be used to warp parts of a mesh to a new location in a very
flexible way by using two objects to select the "from" and "to" regions,
with options for using a curve falloff, texture and vertex group.

.. figure:: /images/modifier-warp-example02.png

   Warp modifier applied to a grid.


The Warp Modifier is a bit tricky at first, but it helps to understand how it works.
The modifier requires two points, specified by object centers.
The "from" point designates a point in space that is pulled toward the "to" point.
It is akin to using the
:doc:`Proportional Editing </editors/3dview/transform/transform_control/proportional_edit>`
in Edit Mode.


Options
=======

.. figure:: /images/modifier-warp-example01.png

   Warp modifier.


From
   Specify the origin object transformation of the warp.
To
   Specify the destination object transformation of the warp.
Preserve Volume
   Enables volume preservation when rotating one of the transforms.
Vertex Group
   Limit the deformation to a specific vertex group.

Strength
   Sets how strong the effect is.
Radius
   Sets the distance from the transforms that can be warped by the transform handles.
Falloff Type
   Sets the way the strength of the warp change as it goes from the center of the transform to the Radius value.
   See :doc:`Proportional Editing </editors/3dview/transform/transform_control/proportional_edit>`
   for descriptions of the falloff types.
Texture
   Specify a texture the strength is offset by to create variations in the displacement.
Texture Coordinates
   Set the way textures are applied to the mesh when using a textured warp.

   Object
      Specify an object to use when set to Object.
   UV Layer
      Specify a UV layer when set to UV.


Usage
=====

The *Warp Modifier* can be awkward to use sometimes and the use case is rather small however,
there are a couple of uses. For example, The *Warp Modifier* can be used to have a interactive
:doc:`Proportional Editing </editors/3dview/transform/transform_control/proportional_edit>`
that can be used for animation.

Another way to use the *Warp Modifier* is to use it similar to the
:doc:`Deform Modifier </modeling/modifiers/deform/mesh_deform>`.
This allows you to deform parts of the mesh without having to make a vertex group.
