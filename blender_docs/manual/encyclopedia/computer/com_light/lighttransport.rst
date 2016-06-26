
***************
Light transport
***************

.. glossary::

   Rendering
      "[The] process of synthesizing an image from a given scene description is called rendering." [Geor15]_.

The process of computationally generating a 2D image from 3D geometry.
It applies the simulation of light transport.
Rendering of a image is calculating an equilibrium between emission and absorption.

.. glossary::

   Global illumination
      A superset of radiosity and ray tracing.
      The goal is to compute all possible light interactions in a given scene,
      and thus, obtain a truly photo-realistic image.
      All combinations of diffuse and specular reflections and transmissions must be accounted for.
      Effects such as color bleeding and caustics must be included in a global illumination simulation.

