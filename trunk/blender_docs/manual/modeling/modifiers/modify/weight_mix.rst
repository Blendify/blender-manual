.. _bpy.types.VertexWeightMixModifier:

**************************
Vertex Weight Mix Modifier
**************************

This modifier mixes a second vertex group (or a simple value) into the affected vertex group,
using different operations.

.. important::

   This modifier does implicit clamping of weight values in the standard (0.0 to 1.0) range.
   All values below 0.0 will be set to 0.0, and all values above 1.0 will be set to 1.0.

.. note::

   You can view the modified weights in Weight Paint Mode.
   This also implies that you will have to disable the *Vertex Weight Mix* modifier
   if you want to see the original weights of the vertex group you are editing.


Options
=======

.. figure:: /images/modeling_modifiers_modify_weight-mix_panel.png
   :align: right

   The Vertex Weight Mix modifier panel.

Vertex Group A
   The vertex group to affect.
Default Weight A
   The default weight to assign to all vertices not in the given vertex group.

Vertex Group B
   The second vertex group to mix into the affected one. Leave it empty if you only want to mix in a simple value.
Default Weight B
   The default weight to assign to all vertices not in the given second vertex group.

Mix Mode
   How the vertex group weights are affected by the other vertex group's weights.

   Replace weights
      Replaces affected weights with the second group's weights.
   Add to weights
      Adds the values of *Group B* to *Group A*.
   Subtract from weights
      Subtracts the values of *Group B* from *Group A*.
   Multiply weights
      Multiplies the values of *Group B* with *Group A*.
   Divide weights
      Divides the values of *Group A* by *Group B*.
   Difference
      Subtracts the smaller of the two values from the larger.
   Average
      Adds the values together, then divides by 2.

Mix Set
   Choose which vertices will be affected.

   All vertices
      Affects all vertices, disregarding the vertex groups content.
   Vertices from group A
      Affects only vertices belonging to the affected vertex group.
   Vertices from group B
      Affects only vertices belonging to the second vertex group.
   Vertices from one group
      Affects only vertices belonging to at least one of the vertex groups.
   Vertices from both groups
      Affects only vertices belonging to both vertex groups.

   .. important::

      When using *All vertices*, *Vertices from group B* or *Vertices from one group*,
      vertices might be added to the affected vertex group.


Influence/Mask Options
----------------------

Those settings are the same for the three *Vertex Weight* modifiers,
see the :ref:`Vertex Weight Edit modifier <modeling-modifiers-weight-edit-influence-mask-options>` page.


Example
=======

Here is and example of using a texture and the mapping curve to generate weights used by
the :doc:`Wave </modeling/modifiers/deform/wave>` modifier.

.. list-table:: Texture channel variations.

   * - .. figure:: /images/modeling_modifiers_modify_weight-mix_intensity.jpg
          :width: 200px

          Using intensity.

     - .. figure:: /images/modeling_modifiers_modify_weight-mix_red.jpg
          :width: 200px

          Using Red.

     - .. figure:: /images/modeling_modifiers_modify_weight-mix_saturation.jpg
          :width: 200px

          Using Saturation.


.. _fig-modifier-vertex-weight-custom:

.. list-table:: Custom mapping curve with a Vertex Weight Edit modifier.

   * - .. figure:: /images/modeling_modifiers_modify_weight-mix_map-curve.png
          :width: 200px

          A customized mapping curve.

     - .. figure:: /images/modeling_modifiers_modify_weight-mix_red.jpg
          :width: 200px

          Custom Mapping disabled.

     - .. figure:: /images/modeling_modifiers_modify_weight-mix_red-map.jpg
          :width: 200px

          Custom Mapping enabled.

.. vimeo:: 30188814

`The blend-file <https://wiki.blender.org/wiki/File:ManModifiersWeightVGroupEx.blend>`__, TEST_4 scene.
