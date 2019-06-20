.. _bpy.types.VertexWeightEditModifier:

***************************
Vertex Weight Edit Modifier
***************************

This modifier is intended to edit the weights of a vertex group.

The general process is the following, for each vertex:

- (Optional) It does the mapping, either through one of the predefined functions, or a custom mapping curve.
- It applies the influence factor, and optionally the vertex group or texture mask
  (0.0 means original weight, 1.0 means fully mapped weight).
- It applies back the weight to the vertex, and/or it might optionally remove the vertex
  from the group if its weight is below a given threshold, or add it if it is above a given threshold.

.. important::

   This modifier does implicit clamping of weight values in the standard (0.0 to 1.0) range.
   All values below 0.0 will be set to 0.0, and all values above 1.0 will be set to 1.0.

.. note::

   You can view the modified weights in Weight Paint Mode.
   This also implies that you will have to disable the *Vertex Weight Edit* modifier
   if you want to see the original weights of the vertex group you are editing.


Options
=======

.. figure:: /images/modeling_modifiers_modify_weight-edit_panel.png
   :align: right

   The Vertex Weight Edit modifier panel.

Vertex Group
   The vertex group to affect.
Default Weight
   The default weight to assign to all vertices not in the given vertex group.

Group Add
   Adds vertices with a final weight over *Add Threshold* to the vertex group.
Group Remove
   Removes vertices with a final weight below *Remove Threshold* from the vertex group.

Falloff Type
   Type of mapping:

   Linear
      No mapping.
   Custom Curve
      Allows the user to manually define the mapping using a curve.
   Sharp, Smooth, Root and Sphere
      These are classical mapping functions, from spikiest to roundest.
   Random
      Uses a random value for each vertex.
   Median Step
      Creates binary weights (0.0 or 1.0), with 0.5 as cutting value.


.. _modeling-modifiers-weight-edit-influence-mask-options:

Influence/Mask Options
----------------------

Those settings are the same for the three *Vertex Weight* modifiers.

Global Influence
   The overall influence of the modifier
   (0.0 will leave the vertex group's weights untouched, 1.0 is standard influence).

   .. important::

      Influence only affects weights, adding/removing of vertices
      to/from vertex group is not prevented by setting this value to 0.0.


Vertex Group Mask
^^^^^^^^^^^^^^^^^

Vertex Group Mask
   An additional vertex group, which weights will be
   multiplied with the global influence value for each vertex.
   If a vertex is not in the masking vertex group, its weight will be not be affected.


Texture Mask
^^^^^^^^^^^^

Texture Mask
   An additional texture, which values will be multiplied with the global influence value for each vertex.

   This is a standard texture :doc:`data-block </files/data_blocks>` control.
   When set, it reveals other settings:

Texture Coordinates
   How the texture is mapped to the mesh.

   Local
      Use local vertex coordinates.
   Global
      Use vertex coordinates in global space.
   Object
      Use vertex coordinates in another object's space.

      Object
         The object to be used as reference for *Object* mapping.
   UV
      Use a UV map's coordinates.

      UV Map
         The UV map to be used for *UV* mapping.

Use Channel
   Which channel to use as weight factor source.

   Red/Green/Blue/Alpha
      One of the color channels' values.
   Intensity
      The average of the RGB channels (if RGB(1.0, 0.0, 0.0) value is 0.33).
   Value
      The highest value of the RGB channels (if RGB(1.0, 0.0, 0.0) value is 1.0).
   Hue
      Uses the hue value from the standard color wheel (e.g. blue has a higher hue value than yellow).
   Saturation
      Uses the saturation value (e.g. pure red's value is 1.0, gray is 0.0).

   .. note::

      All of the channels above are gamma corrected, except for *Intensity*.


Example
=======

Here is an example of various effects achieved using *Vertex Weight Edit* modifier
(together with the :doc:`Vertex Weight Proximity </modeling/modifiers/modify/weight_proximity>` modifier)
to generate weights used by the :doc:`Displace </modeling/modifiers/deform/displace>` modifier.

.. list-table::
   *Curve Map* variations.

   * - .. figure:: /images/modeling_modifiers_modify_weight-edit_mapping-concave.jpg
          :width: 400px

          Concave-type mapping curve.

   * - .. figure:: /images/modeling_modifiers_modify_weight-edit_distance-edge.jpg
          :width: 400px

          No mapping curve (linear).

   *  - .. figure:: /images/modeling_modifiers_modify_weight-edit_mapping-convex.jpg
          :width: 400px

          Convex-type mapping curve.

.. figure:: /images/modeling_modifiers_modify_weight-edit_exrem-vertices.jpg
   :width: 400px

   Vertices with a computed weight below 0.1 removed from the vertex group.

.. vimeo:: 30188564

`The blend-file <https://wiki.blender.org/wiki/File:ManModifiersWeightVGroupEx.blend>`__, TEST_2 scene.
