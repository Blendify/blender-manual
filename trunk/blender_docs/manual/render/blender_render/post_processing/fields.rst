
******
Fields
******

.. figure:: /images/render_blender-render_post-progressing_fields.png

   Field Rendering result.


The TV standards prescribe that there should be 25 frames per second (PAL)
or 30 frames per second (NTSC).
Since the phosphors of the screen do not maintain luminosity for very long,
this could produce a noticeable flickering.

To minimize this, a TV does not represent frames as a computer does ('progressive' mode),
but rather represents half-frames, or *fields* at a double refresh rate,
hence 50 half frames per second on PAL and 60 half frames per second on NTSC.
This was originally bound to the frequency of power lines in Europe (50Hz) and the US (60Hz).

In particular, fields are "interlaced" in the sense that one field presents all the even lines
of the complete frame and the subsequent field the odd ones.

Since there is a non-negligible time difference between each field (1/50 or 1/60 of a second)
merely rendering a frame the usual way and splitting it into two half frames does not work.
A noticeable jitter of the edges of moving objects would be present.


Options
=======

Fields
------

Enable field rendering. When the *Fields* button in the *Render* Panel is pressed
(*Post Processing* section), Blender prepares each frame in two passes.
On the first it renders only the even lines,
then it advances in time by half a time step and renders all the odd lines.
This produces odd results on a PC screen (Field Rendering result). but will show correctly on a TV set.

Upper First / Lower First
   Toggles between rendering the even and odd frames first.
Still
   Disables the half-frame time step between fields (*x*).

.. note:: Setting up the correct field order

   Blender's default setting is to produce Even fields *before*
   Odd fields; this complies with European PAL standards. Odd fields are scanned
   first on NTSC.

   Of course, if you make the wrong selection things are even worse than if no Field rendering at
   all was used!

   If you are really confused, a simple trick to determine the correct field order is to render a
   short test animation of a white square moving from left to right on a black background.
   Prepare one version with odd field order and another with even field order,
   and look at them on a television screen.
   The one with the right field order will look smooth and the other one horrible.
   Doing this simple test will save you *hours* of wasted rendering time...

.. note:: Fields and Composite Nodes

   Nodes are currently not field-aware. This is partly due to the fact that in fields,
   too much information is missing to do good neighborhood operations (blur, vector blur etc.).
   The solution is to render your animation at double the frame rate without fields and do the
   interlacing of the footage afterwards.
