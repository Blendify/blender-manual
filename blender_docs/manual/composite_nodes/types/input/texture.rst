
************
Texture Node
************

.. figure:: /images/Tutorials-NTR-Tex.jpg
   :align: right
   :width: 150px

   Texture node


The *Texture* node makes 3D textures available to the compositor.

The Texture node makes 3D textures available to the compositor. A texture,
from the list of textures available in the current blend file,
is selected and introduced through the value and/or color socket.


.. note::

   Please read up on the Blender Library system for help on importing and linking to textures in other blender files.


.. note::

   **You cannot edit the textures themselves in the node window**.
   To use this node, create and edit the texture in the normal texture buttons,
   then select the texture from the menu button on the node.


You can change the *Offset* and a *Scale*
(which is called Offs XYZ and Size XYZ in the Materials Texture Map Input panel)
for the texture by clicking on the label and setting the sliders,
thus affecting how the texture is applied to the image. For animation,
note that this is a vector input socket, because the XYZ values are needed.

Texture nodes can output a straight black-and-white *Value* image
(don't mistake this for alpha) and an image (*Color*).


Example
=======

.. figure:: /images/Compositing-Input-Texture.jpg

In the example above, we want to simulate some red plasma gas out there in space. So, we fog
up an image taken from the Hubble telecscope of Orion and take the ever-so-useful Cloud
texture and use it to mix in red with the image.

