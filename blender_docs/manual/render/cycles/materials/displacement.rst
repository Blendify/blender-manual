.. _render-cycles-materials-displacement:

************
Displacement
************

The shape of the surface and the volume inside its mesh may be altered by the displacement shaders.
This way, textures can then be used to make the mesh surface more detailed.

There are two types of displacement methods that can be used: *True Displacement* and *Bump Mapping*.
Depending on the settings, the displacement may be virtual,
only modifying the surface normals to give the impression of displacement,
known as bump mapping, or a combination of real and virtual displacement.

.. tip::

   It is also possible to use the both method by choosing *Displacement + Bump*
   in the :ref:`Material Setttings <cycles-materials-settings-displace>`.

.. figure:: /images/cycles_materials_displacement_example.png

   Subdivision Rate 2, Bump, True, Both


Bump
====

TODO.


.. _render-cycles-materials-displacement-true:

True Displacement
=================

.. note::

   Implementation not finished yet, marked as an :ref:`Experimental Feature Set <cycles-experimental-features>`

TODO.
