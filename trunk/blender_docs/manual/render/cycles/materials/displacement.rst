.. _render-cycles-materials-displacement:

************
Displacement
************

.. figure:: /images/cycles_materials_displacement_bump.jpg
   :align: right

   Bump Mapped Displacement.


The shape of the surface and the volume inside its mesh may be altered by the displacement shaders.
This way, textures can then be used to make the mesh surface more detailed.

There are two types of displacement meathods that can be used: *True Displacement* and *Bump Mapping*.
Depending on the settings, the displacement may be virtual,
only modifying the surface normals to give the impression of displacement,
known as bump mapping, or a combination of real and virtual displacement.

.. tip::

   It is also possible to use both meathod by choosing *Displacement + Bump*
   in the :ref:`Material Setttings <cycles-materials-settings-displace>`.


.. _render-cycles-materials-displacement-true:

True Displacement
=================

Subdivision
-----------

.. note::

   Implementation not finished yet, marked as an ref:`Experimental Feature Set <cycles-experimental-features>`


When using *True Displacement* or *Displacement + Bump* and enabling *Use Subdivision*
you can reduce the *Dicing Rate* to subdivide the mesh.
This only affects the render and does not show in the viewport (but does show in *Rendered Shading Mode*).
Displacement can also be done manually by use of the :doc:`Displace Modifier </modifiers/deform/displace>`.

.. figure:: /images/cycles-displacement-dicing.jpg

   Subdivision Off - On, Dicing Rate 1.0 - 0.3 - 0.05 (Monkeys look identical in viewport, no modifiers).
