
*********
Attribute
*********

.. figure:: /images/cycles_nodes_attribute.png
   :align: right

   Attribute Node.


The *Attribute* node allows you to retrieve attributes attached to an object or mesh.


Inputs
======

This node has no inputs.


Properties
==========

Name
   Name of the attribute. Currently, the following are the most important ones that you will need to know:

   Vertex Color Layers
      These can be retrieved this by their names.
   density
      Gives a scalar defining the density of any smoke inside the
      :doc:`Smoke Domain </physics/smoke/types/domain>`.
   flame
      Gives a scalar defining the density of any fire inside the :doc:`Smoke Domain </physics/smoke/types/domain>`.
      All three outputs are the same.
   color
      Gives the color of the smoke inside the :doc:`Smoke Domain </physics/smoke/types/domain>`.
      The color and vector outputs are the same. The fac output is an average of the channels.
   Ocean Foam
      Gives a scalar define where foam might apear when using an
      :doc:`Ocean Modifier </modeling/modifiers/simulate/ocean>`.
      This depends on the name you give this property.

   .. seealso::

      For a full list of options see `This Tread <https://blender.stackexchange.com/questions/14262#14267>`__
      on the Blender Stack Exchange.


Outputs
=======

Color
   RGB color interpolated from the attribute.
Vector
   XYZ vector interpolated from the attribute.
Fac
   Scalar value interpolated from the attribute.
