
..    TODO/Review: {{review|partial=x|fixes=[] }} .

******
Layers
******

Grease Pencil sketches are organized in layers,
much like the image layers in the GIMP or Photoshop.
These layers are not related to any of the other layer systems in Blender.

The layers' main purpose is to gather sketches that are related in some
meaningful way (i.e. "blocking notes", "director's comments on blocking", or "guidelines").
For this reason, all the strokes on a layer (not just those made after a particular change)
are affected by that layer's color, opacity, and stroke thickness settings.

Layers are managed in the
*Grease Pencil Panel* of the *Properties* region (:kbd:`N`) shown here.

.. figure:: /images/grease_pencil_layers_list.jpg

   Grease Pencil Panel

Use the adjacent controls to Add, Remove or adjust the position of a layer in the list.
Each layer has a visibility icon, and a lock icon to protect it from further changes.
Double click on a layer name to rename it.

There is a list of layers attached to each scene and a list of layers associated with each object.
The buttons above the list box control its contents, showing either the layers associated with the active scene
or the list of layers associated with the active object.

By default, most operations occur only on the *active* layer highlighted in the list.


Animation of the Sketches
=========================

Use the Grease Pencil to do basic pencil tests (i.e. 2D animation in flipbook style).
Sketches are stored on the frame that they were drawn on, as a separate drawing
(only on the layer that they exist on).
Each drawing is visible until the next drawing for that layer is encountered.
The only exception to this is the first drawing for a layer,
which will also be visible before the frame it was drawn on.

Therefore, it is simple to make a pencil-test/series of animated sketches:

- Go to first relevant frame. Draw.
- Jump to next relevant frame. Draw some more.
- Keep repeating process, and drawing until satisfied. Voila! Animated sketches.


Onion Skinning
--------------

.. figure:: /images/grease_pencil_layers_onion.jpg

   Grease Pencil Onion Skinning

Onion-skinning, also known as ghosting, helps an animator by displaying the neighboring frames as a faded trail.
Enable the option with the *Onion Skin* button in the grease pencil properties panel (shown above).

Use *Before* and *After* to set the number of ghost frames drawn on either side of the current frame.
When *Use Custom Colors* (Marked **A**) is enabled,
you can also use the *Before* and *After* controls to change the color of the ghosted frames.


Adjusting Timing of Sketches
----------------------------

It is possible to set a Grease-Pencil block to be loaded up in the *DopeSheet* for
editing of the timings of the drawings.
This is especially useful for animators blocking out shots,
where the ability to re-time blocking is one of the main purposes of the whole exercise.

- In an *Dope Sheet* window, change the mode selector (found beside the menus) to *Grease Pencil*
  (by default, it should be set to *DopeSheet*).
- At this point, the *DopeSheet* should now display a few "channels" with some "keyframes" on them.
  These "channels" are the layers, and the "keyframes" are the frames at which the layer has a sketch defined.
  They can be manipulated like any other data in the *DopeSheet* can be.


.. figure:: /images/DopeSheetGreasePencil.jpg
   :width: 598px


All the available Grease-Pencil blocks for the current screen layout will be shown.
The Area/Grease-Pencil data-blocks are drawn as green channels,
and are named with relevant info from the views. They are also labeled with the area (i.e.
window) index (which is currently not shown anywhere else though).


Copying Sketches
----------------

It is possible to copy sketches from a layer/layers to other layers in the *Action Editor*,
using the "Copy"/"Paste" buttons in the header.
This works in a similar way as the copy/paste tools for keyframes in the *Action Editor*.

Sketches can also be copied from one screen (or view) to another using these tools.
It is important to keep in mind that keyframes will only be pasted into selected layers,
so layers will need to be created for the destination areas too.

