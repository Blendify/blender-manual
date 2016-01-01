
**********
Gamma Node
**********

.. figure:: /images/compositing_nodes_gamma.png
   :align: right
   :width: 150px

   Gamma Node

A reason for applying gamma correction to the final render is to correct lighting issues.
Lighting issues that can be corrected by a gamma correction node are light attenuation with
distance, light falloff at terminators, and light and shadow superpositions.
Simply think about the renderer as a virtual camera.
By applying a gamma correction to your render,
you are just replicating what digital camera do with photos.
Digital cameras gamma correct their photos, so you do the same thing. The gamma correction is,
indeed, 0.45, not 2.2.

But reverse gamma correction on textures and colors have another very important consequence
when you are using rendering techniques such as radiosity or GI.
When doing the GI calculations, all textures and colors are taken to mean reflectance.
If you do not reverse gamma correct your textures and colors, then the GI render will look way
too bright because the reflected colors are all way too high and thus a lot more light is
bouncing around than it should.

Gamma correction in Blender enters in a few places.
The first is in this section with the nodes, both this node and the Tonemap node,
and the second is in calculating Radiosity. In the noodle to the left,
the split viewer shows the before and after effect of applying a gamma correction.

.. figure:: /images/Nodes-Gamma.jpg
   :width: 320px
