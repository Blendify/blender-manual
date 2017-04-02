
*****************************
Alpha Over, Under & Over Drop
*****************************

.. figure:: /images/editors_sequencer_strips_alpha.png
   :width: 300px

   Alpha Over Effect.

Using the alpha (transparency channel), this effect composites a
result based on transparent areas of the dominant image.
If you use a Scene strip, the areas of the image where there is not anything solid are transparent;
they have an alpha value of 0. If you use a movie strip, that movie has an alpha value of 1 (completely opaque).

So, you can use the *Alpha Over* / *Alpha Under* effect to composite the CGI Scene on top of your movie.
The result is your model doing whatever as if it was part of the movie.
The :menuselection:`Edit Strip --> Opacity` controls how much the foreground is mixed over the background,
fading in the foreground on top of the background. The colors of transparent foreground image
areas is ignored and does not change the color of the background.

Select two strips :kbd:`Shift-RMB`:


Alpha Over
==========


With *Alpha Over*, the strips are layered up in the order selected; the first strip selected is the background,
and the second one goes *over* the first one selected.
The *Opacity* controls the transparency of the *foreground*, i.e. *Opacity* of 0.0;
will only show the background, and a *Opacity* of 1.0 will completely override the background with the foreground
(except in the transparent areas of this one, of course!)


Alpha Under
===========

With *Alpha Under*, this is the contrary: the first strip selected is the
foreground, and the second one, the background.
Moreover, the *Opacity* controls the transparency of the *background*, i.e. a *Opacity* of 0.0;
will only show the foreground (the background is completely transparent),
and a *Opacity* of 1.0 will give the same results as with *Alpha Over*.


Alpha Over Drop
===============

*Alpha Over Drop* is between the two others:
as with *Alpha Under*, the first strip selected will be the foreground, but as with *Alpha Over*,
the *Opacity* controls the transparency of this foreground.


.. Todo, update text for new image.

Example
=======

The example shows layering of Alpha Over effects. The very bottom channel is red,
and an arrow is on top of that. Those two are Alpha Over to Channel 3.
My favorite toucan is Channel 4, and Channel 5 alpha over composes the toucan on top of the composited red arrow.
The last effect added is tied to Channel 0 which will be rendered.

..    Comment: Not (more) true, I think!
      Alpha Channel Needed for Alpha Over|The foreground strip must have an alpha channel,
      such as Scene or a .PNG image sequence, for Alpha Over to work properly; .avi and .mov
      files do not have an alpha channel so they can only be used as a background.

By clicking the Premultiply Alpha button in the properties panel of the foreground strip,
the Alpha values of the two strips are not multiplied or added together.
Use this effect when adding a foreground strip that has a variable alpha channel
(some opaque areas, some transparent, some in between) over a strip that has a flat opaque
(Alpha=1.0 or greater) channel. If you notice a glow around your foreground objects,
or strange transparent areas of your foreground object when using Alpha Over,
enable *Premultiply*.

The Alpha Over Drop effect is much like the Cross,
but puts preference to the top or second image,
giving more of a gradual overlay effect than a blend like the Cross does. Of course,
all of the Alpha effects respect the alpha (transparency) channel, whereas Cross does not.

The degree of Alpha applied, and thus color mixing, can be controlled by an F-Curve.
Creating a Sine wave could have the effect of the foreground fading in and out.
