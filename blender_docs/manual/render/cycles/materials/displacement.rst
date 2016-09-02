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


.. _render-cycles-materials-displacement-true:

True Displacement
=================

.. note::

   Implementation not finished yet, marked as an :ref:`Experimental Feature Set <cycles-experimental-features>`


When using *True Displacement* the :doc:`Subdivision Modifier </modeling/modifiers/generate/subsurf>`
gets changed to control the subdivision of *True Displacement*.
For this, all the other settings are the same except the *View* and *Render* settings.
These setting get removed and the following settings are added:

.. figure:: /images/cycles_materials_displacement_mod.png
   :align: right

   Subdivision Surface modifier.

.. rubric:: Preview


Levels
   The levels of subdivision to see in the 3D View,
   this works the same as the *View* setting on the original *Subdivision Modifier*.

.. rubric:: Render

Adaptive
   Use OpenSubdiv to give different subdivision levels to near and far objects automatically.
   This allows nearer object to get more subdivisions and far objects to get less.

   Dicing Rate
      When using *Adaptive* the *Render Levels* property gets changed to *Dicing Rate*,
      this property is used to multiply the :ref:`scene dicing rate <cycles-subdivision-rate>`.

      .. figure:: /images/cycles-displacement-dicing.jpg

         Subdivision Off/On, Dicing Rate: 1.0 - 0.3 - 0.05 (Monkeys look identical in viewport, no modifiers).

Levels
   The levels of subdivision to see in the final render,
   this works the same as the *Render* setting on the original *Subdivision Modifier*.

.. figure:: /images/cycles_materials_displacement_example.png

   Subdivision Rate 2, Bump, True, Both

.. seealso::

   Displacement can also be done manually by use of the
   :doc:`Displace Modifier </modeling/modifiers/deform/displace>`.


Known limitations
-----------------

- Missing support for UV subdivision.
- Creases do not match Blender creases currently.
- Instanced are currently uninstanced, leading to increased memory usage.
  For those it is better to use non-adaptive subdivision still.
- Multi-view renders can have some inconsistencies between views.
- Editing displacement shaders does not update the viewport.
