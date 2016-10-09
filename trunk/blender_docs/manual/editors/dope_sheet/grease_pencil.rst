
*************
Grease Pencil
*************

Adjusting Timing of Sketches
============================

It is possible to set a :doc:`grease pencil </interface/grease_pencil/introduction>` block
to be loaded up in the *DopeSheet* for editing of the timings of the drawings.
This is especially useful for animators blocking out shots,
where the ability to re-time blocking is one of the main purposes of the whole exercise.

#. In a *Dope Sheet* editor, change the mode selector (found beside the menus) to *Grease Pencil*
   (by default, it should be set to *DopeSheet*).
#. At this point, the *DopeSheet* should now display a few "channels" with some "keyframes" on them.
   These "channels" are the layers, and the "keyframes" are the frames at which the layer has a sketch defined.
   They can be manipulated like any other data in the *DopeSheet* can be.

.. figure:: /images/editors_dopesheet_greasepencil.png
   :width: 598px


All the available Grease-Pencil blocks for the current screen layout will be shown.
The Area/Grease-Pencil data-blocks are drawn as green channels,
and are named with relevant info from the views. They are also labeled with the area
(i.e. "window") index (which is currently not shown anywhere else though).


Copying Sketches
================

It is possible to copy sketches from a layer/layers to other layers in the *Action Editor*,
using the "Copy"/"Paste" buttons in the header.
This works in a similar way as the copy/paste tools for keyframes in the *Action Editor*.

Sketches can also be copied from one screen (or view) to another using these tools.
It is important to keep in mind that keyframes will only be pasted into selected layers,
so layers will need to be created for the destination areas too.
