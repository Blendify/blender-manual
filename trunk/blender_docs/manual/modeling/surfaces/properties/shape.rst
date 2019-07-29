
*****
Shape
*****

.. figure:: /images/modeling_surfaces_properties_resolution-panel.png
   :align: center

   Shape panel.

.. _bpy.types.Curve.resolution_v:

Resolution Preview U/V
Render U/V
   Just like :ref:`NURBS curves <curve-nurbs>`, *Resolution* controls the detail of the surface.
   The higher the *Resolution* the more detailed and smoother the surface is.
   The lower the *Resolution* the rougher the surface. However, here you have two resolution settings,
   one for each interpolation axis (U and V).

   You can adjust the resolution separately for both preview and render,
   to not slow things down in the viewport, but still get good render results.

   .. list-table::

      * - .. figure:: /images/modeling_surfaces_properties_resolution-1x1-wire.png

        - .. figure:: /images/modeling_surfaces_properties_resolution-3x3-wire.png

      * - .. _fig-surface-intro-resolution1:

          .. figure:: /images/modeling_surfaces_properties_resolution-1x1.png

             Resolution 1×1.

        - .. _fig-surface-intro-resolution2:

          .. figure:: /images/modeling_surfaces_properties_resolution-3x3.png

             Resolution 3×3.

   Fig. :ref:`fig-surface-intro-resolution1` is an example of a surface resolution of 1 for both U and V.
   Fig. :ref:`fig-surface-intro-resolution2` surface is an example of a surface resolution of 3 for both U and V.

.. seealso::

   The panels of the *Curve and Surface* tab are the same as for
   :doc:`curves </modeling/curves/introduction>`, just with fewer options...
