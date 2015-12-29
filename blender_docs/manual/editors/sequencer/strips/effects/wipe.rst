
****
Wipe
****

.. figure:: /images/VSE-wipe.jpg
   :width: 300px

   VSE Wipe Built-in Effect


Wipe transitions from one strip to another.
This very flexible effect has four transition types:

- Clock: like the hands of an analog clock,
  it sweeps clockwise or (if Wipe In is enabled) counterclockwise from the 9:00 position.
  As it sweeps, it reveals the next strip.
- Iris: like the iris of a camera or eye, it reveals the next strip through an expanding (or contracting) circle.
  You can blur the transition, so it looks like ink bleeding through a paper.
- Double Wipe: Starts in the middle and wipes outward, revealing the next strip.
  It can also Wipe In, which means it starts at the outside and works its way toward the middle.
  You can angle and blur the wipe direction as well.
- Single Wipe: Reveals the next strip by uncovering it.
  Controls include an angle control so you can start at a corner or side, and blur the transition.

The wipe will have no effect if created from a single strip instead of two strips. The
duration of the wipe is the intersection of the two source strips and can not be adjusted. To
adjust the start and end of the wipe you must adjust the temporal bounds of the source strips
in a way that alters their intersection.
