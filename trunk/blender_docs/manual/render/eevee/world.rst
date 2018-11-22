
*****
World
*****

The world environment can emit light, ranging from a single solid color,
to arbitrary textures. It works the same as in Cycles.

.. seealso::

   :doc:`Material </render/cycles/world>`.

In Eevee, the world lighting contribution is first rendered and
stored into smaller resolution textures before being applied to the objects.
This makes the lighting less precise than Cycles.

.. seealso::

   :doc:`Indirect Lighting </render/eevee/indirect_lighting>`.
