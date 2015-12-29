
********
Multiply
********

.. figure:: /images/VSE-Multiply.jpg
   :width: 300px

   Multiply Effect.


The *Multiply* effect multiplies two colors.
Blender uses values between **0.0** and **1.0** for the colors,
he doesn't have to normalise this operation, the multiplication of two terms between **0.0**
and **1.0** always gives a result between **0.0** and **1.0**
(with the 'traditional' representation with three bytes - like RGB(**124**, **255**, **56**) -,
the multiplications give far too high results - like RGB(**7316**, **46410**, **1848**) -,
that have to be 'brought back', normalised - just by dividing them by **256** ! -
to 'go back' to range of **0** to **255** ...).
**256** ! - to 'go back' to range of **0** to **255** ...).

This effect has two main usages:

With a mask
   A mask is a B&W picture witch, after multiplication with a 'normal' image,
   only show this one in the white areas of the mask (everything else is black).
   The opening title sequence to James Bond movies,
   where the camera is looking down the barrel of a gun at James, is a good example of this effect.

With uniform colors
   Multiplying a color with a 'normal' image allows you to soften some hues of this one
   (and so - symmetrically - to enhance the others). For example, if you have a brown pixel RGB(**0.50**,
   **0.29**, **0.05**), and you multiply it with a cyan filter (uniform color RGB(**0.0**, **1.0**,
   **1.0**), you'll get a color RGB(**0.0**, **0.29**, **0.5**). Visually,
   the result is to kill the reds and bring up (by 'symmetry' - the real values remain unchanged!)
   the blues an greens. Physically, it is the same effect as shining a cyan light onto a chocolate bar. Emotionally,
   vegetation becomes more lush, water becomes more Caribbean and inviting, skies become friendlier.


.. note::

   This effect reduces the global luminosity of the picture
   (the result will always be smaller than the smallest operand).
   If one of the image is all white, the result is the other picture;
   if one of the image is all black, the result is all black!
