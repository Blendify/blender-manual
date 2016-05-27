
************
Wave Texture
************

.. figure:: /images/cycles_nodes_tex_wave.jpg
   :width: 200px

   Default wave texture


Procedural bands or rings texture with noise distortion.

Type
   *Bands* or *Rings* shaped waves.
Wave Profile
   Controls the look of the wave type.

   Saw
      Uses a sawtooth profile.
   Sine
      Uses the standard sine profile.

Vector input
   Texture coordinate to sample texture at;
   defaults to Generated texture coordinates if the socket is left unconnected.
Scale input
   Overall texture scale.
Distortion input
   Amount of distortion of the wave (similar to the Marble texture in Blender Internal).
Detail input
   Amount of distortion noise detail.
Detail Scale input
   Scale of distortion noise.
Color output
   Texture color output.
Fac output
   Texture intensity output.
