
************
Output Nodes
************

Output nodes are the final node in every node tree.
Although you can add more than one, only one will be used (indicated by a colored or darkened header).
Output nodes are always preceded by :doc:`Shaders </render/cycles/nodes/shaders>`
except in the case of the :doc:`Displacement </render/cycles/materials/displacement>` of a Material Output.


:doc:`Material Output </render/cycles/materials/index>`
=======================================================

Surface
   The surface output of the material
Volume
   *Currently under independent development, does nothing*
Displacement
   Used to create bump mapping or actual subdivided :doc:`Displacement </render/cycles/materials/displacement>`


:doc:`Lamp Output </render/cycles/lamps>`
=========================================

Surface
   Not an actual surface, but the final output of a :doc:`Lamp </render/cycles/lamps>` Object


:doc:`World Output </render/cycles/world>`
==========================================

Surface
   The appearance of the environment,
   usually preceded by a :ref:`cycles_shader_background` shader
Volume
   *Currently under independent development, does nothing*
