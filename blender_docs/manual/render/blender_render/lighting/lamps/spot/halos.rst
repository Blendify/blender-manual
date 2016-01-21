
..    TODO/Review: {{review|}} .


***********************
Spot Volumetric Effects
***********************

.. figure:: /images/lighting-lamps-spot-halo_options.jpg
   :width: 310px

   Spot lamps's Halo options


*Spot* lights also can produce "volumetric" effects.
See :doc:`Volumetric Light </render/blender_render/lighting/volumetric_lights>`
for more information about what it means.

Halo
   The *Halo* button allows a *Spot* lamp to have a volumetric effect applied to it.
   This button must be active if the volumetric effect is to be visible.
   Note that if you are using buffered shadows, you have extra options described in the
   :doc:`Spot Buffered Shadows </render/blender_render/lighting/lamps/spot/buffered_shadows>` page.

Intensity
   The *Intensity* slider controls how intense/dense the volumetric effect is that is generated
   from the light source. The lower the value of the *Intensity* slider,
   the less visible the volumetric effect is,
   while higher *Intensity* values give a much more noticeable and dense volumetric effect.
Step
   This field can have a value between ``0`` and ``12``.
   It is used to determine whether this *Spot* will cast volumetric shadows,
   and what quality those volumetric shadows will have.
   If *Step* is set to a value of ``0``, then no volumetric shadow will be generated.
   Unlike most other controls, as the *Step* value increases,
   the quality of volumetric shadows decreases (but take less time to render), and *vice versa*.

.. tip:: *Step* values

   A value of ``8`` for *Halo Step* is usually a good compromise between speed and accuracy.


   Blender only simulates volumetric lighting in *Spot* lamps when using its internal renderer.
   This can lead to some strange results for certain combinations of settings for the light's
   *Energy* and the halo's *Intensity*.
   For example, having a *Spot* light with null or very low light *Energy* settings but a very
   high halo *Intensity* setting can result in a dark/black halo, which would not happen in the real world.
   Just be aware of this possibility when using halos with the internal renderer.


.. note::

   The halo effect can be greatly enhanced when using buffered shadows: when the halo's *Step* is not null,
   they can create "volumetric shadows".
   See the page about *Spot*
   :doc:`Buffered Shadows </render/blender_render/lighting/lamps/spot/buffered_shadows>` for more information.


See Also
========

- :doc:`Shadows </render/blender_render/lighting/shadows/introduction>`
- :doc:`Spot Lamp </render/blender_render/lighting/lamps/spot/introduction>`
- :doc:`Spot Buffered Shadows </render/blender_render/lighting/lamps/spot/buffered_shadows>`


