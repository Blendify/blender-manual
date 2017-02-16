
****
Wipe
****

.. figure:: /images/editors_sequencer_strips_wipe.png
   :align: right

   Wipe Effect Settings.

The wipe effect is a type of transition strip. It can be used to transition from one strip to the next.
The wipe will have no effect if created from a single strip instead of two strips.
The duration of the wipe is the intersection of the two source strips and cannot be adjusted.
To adjust the start and end of the wipe you must adjust the temporal bounds of the source strips
in a way that alters their intersection.


Options
=======

Transition
   The type of transition used.

   Single
      Reveals the next strip by uncovering it in a straight line moving across the image.
   Double
      Similar to *Single*, but uses two lines either starting from the middle of the image or the outside.
      Like the blink of an eye.
   Iris
      Reveals the next strip through an expanding (or contracting) circle.
      Like the aperture of a camera or pupil of an eye.
      You can blur the transition, so it looks like ink bleeding through a paper.
   Clock
      Like the hands of an analog clock, it sweeps clockwise or (if Wipe In is enabled)
      counterclockwise from the 9:00 position. As it sweeps, it reveals the next strip.

Direction
   Control whether to fade *In* or *Out*.
Blur Width
   The width of the blur used to blur the transition.
Angle
   Control the angle of the line for *Single* and *Double* transition types.

