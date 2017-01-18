
***********
Object Data
***********

Meshes
   The mesh :ref:`Data-Block Menu <ui-data-block>` can be used to link the data between objects.


.. _mesh-data-normals:

Normals
=======

.. figure:: /images/modeling_meshes_properties_object-data_normals-panel.png

   Normals panel


Auto Smooth
   Edges where an angle between the faces is smaller than specified in the *Angle* button will be smoothed,
   when shading of these parts of the mesh is set to smooth.

   Angle
      Angle number button.

Double Sided
   Lighting with positive normals on the backside of the mesh in the viewport (OpenGL).


Example
-------

.. figure:: /images/modeling_meshes_editing_smoothing_example-03-auto-smooth.png
   :width: 250px

   Example mesh with *Auto Smooth* enabled.


.. _properties-texture-space:

Texture Space
=============

.. (todo) object --> transform --> tex space

This are settings of the texture space used by the generated texture mapping.
The visualization of the texture space can be activated in the :doc:`/editors/3dview/object/properties/display`.

Texture Mesh
   .. Au: too buggy to doc? transformation in vertex leads to distortion.

Auto Texture Space
   Location, Size


Vertex Groups
=============

See :doc:`/modeling/meshes/properties/vertex_groups/vertex_groups`.

TODO.


Shape Keys
==========

See :doc:`/animation/shape_keys/shape_keys_panel`.

TODO.


UV Maps
=======

See :ref:`uv-maps-panel`.

TODO.


Vertex Colors
=============

TODO.


Geometry Data
=============

TODO.
