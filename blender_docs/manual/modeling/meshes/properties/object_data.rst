
***********
Object Data
***********

Meshes
   The mesh :ref:`Data-Block Menu <ui-data-block>` can be used to link the data between objects.


Normals
=======

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Properties editor --> Object Data --> Normals`

.. figure:: /images/modeling_meshes_properties_object-data_normals-panel.png

   Normals panel.

.. _auto-smooth:

Auto Smooth
   Edges where an angle between the faces is smaller than specified in the *Angle* button will be smoothed,
   when shading of these parts of the mesh is set to smooth. This is an easier way to combine smooth and sharp edges.

   Angle
      Angle number button.

Double Sided
   Lighting with positive normals on back-faces of the mesh in the viewport (OpenGL).


Example
-------

.. figure:: /images/modeling_meshes_properties_object-data_example-auto-smooth.png
   :width: 250px

   Example mesh with *Auto Smooth* enabled.

.. seealso:: Edge Split Modifier

   With the :doc:`Edge Split Modifier </modeling/modifiers/generate/edge_split>` a result
   similar to *Auto Smooth* can be achieved with the ability to choose which edges should be split,
   based on angle.


.. _properties-texture-space:

Texture Space
=============

.. (todo) object --> transform --> tex space

These are settings of the texture space used by the generated texture mapping.
The visualization of the texture space can be activated in the :doc:`/editors/3dview/object/properties/display`.

Texture Mesh
   .. Au: too buggy to doc? transformation in vertex leads to distortion.

Auto Texture Space
   Location, Size


Vertex Groups
=============

See :doc:`/modeling/meshes/properties/vertex_groups/vertex_groups`.

TODO add.


Shape Keys
==========

See :doc:`/animation/shape_keys/shape_keys_panel`.

TODO add.


UV Maps
=======

See :ref:`uv-maps-panel`.

TODO add.


Vertex Colors
=============

TODO add.


Geometry Data
=============

TODO add.
