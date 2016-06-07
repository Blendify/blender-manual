
**********************
Extended Material Node
**********************

.. figure:: /images/Extended-Material-Node.jpg
   :width: 200px

   Extended Material node.


Adds additional input and output channels to the material node.


Input
=====

Color
   Includes a color swatch, allowing you to select the color directly on the node.
Mirror Color
   Color of mirrored reflection.
Ambient
   Amount of global ambient color the material receives.
Emit
   Amount of light to emit.
SpecTra
   Alpha for the specular color.
Ray Mirror
   Amount of reflectiveness of the object.
Alpha
   Transparency of the material by setting all pixels in the alpha channel to the given value.
Translucency
   Amount of diffuse shading on the back side


Output
======

Materials can additionaly output the followings:

Diffuse
   value of the diffuse color, combined by the node.
Spec
   value of the specular color, combined by the node.
AO
   value of the Ambient Occlusion, combined by the node.

