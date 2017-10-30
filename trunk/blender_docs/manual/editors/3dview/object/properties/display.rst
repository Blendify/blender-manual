.. _bpy.types.Object.show:
.. _bpy.types.Object.draw_type:
.. _bpy.types.Object.color:

*******
Display
*******

.. figure:: /images/editors_3dview_object_properties_display_panel.png

   Display panel.

The *Display* panel is used to enable extra drawing or viewing options for the 3D View.

Name
   Displays the name of the object in the 3D View.
Axis
   Displays an object similar to an *Empty* that shows the object's axis.
Wire
   Draws an object's wire frame on top of the solid drawing.
Draw All Edges
   Displays all edges for mesh objects.
Bounds
   Displays a bounding box around an object.

   Draw Bounds Type
      TODO.

Texture Space
   Displays the objects :term:`Texture Space`.
X-Ray
   Makes the object draw in front of others. (Unsupported for duplicator drawing).
Transparency
   Displays material transparency in the object. (Unsupported for duplicator drawing).

Maximum Draw Type
   The Maximum shading mode to display in the 3D View.
   This can be useful if you have a high poly object that is slowing down performance.

.. _objects-display-object-color:

Object Color
   Allows to specify the color used when the *Object Color* in
   :doc:`Material Options </render/blender_render/materials/properties/options>`
   is enabled.
