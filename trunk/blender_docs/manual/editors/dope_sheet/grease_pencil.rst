
*************
Grease Pencil
*************

Adjusting Timing of Sketches
============================

It is possible to set a :doc:`grease pencil </interface/grease_pencil/introduction>` block
to be loaded up in the *Dope Sheet* for editing of the timings of the drawings.
This is especially useful for animators blocking out shots,
where the ability to re-time blocking is one of the main purposes of the whole exercise.

#. In a Dope Sheet editor, change the *Mode* selector (found beside the menus) to *Grease Pencil*.
#. At this point, the *Dope Sheet* should now display a few "channels" with some "keyframes" on them.
   These "channels" are the layers, and the "keyframes" are the frames at which the layer has a sketch defined.
   They can be manipulated like any other data in the *Dope Sheet* can be.

.. figure:: /images/editors_dopesheet_greasepencil.png
   :width: 598px


All the available Grease-Pencil blocks for the current screen layout will be shown.
The Area/Grease-Pencil data-blocks are drawn as green channels,
and are named with relevant info from the views. They are also labeled with the area
(i.e. "window") index (which is currently not shown anywhere else though).


Insert Keyframe
---------------

Insert Keyframe :kbd:`I` can be used for creating blank Grease Pencil frames at a particular frame.
It will create blank frames if *Additive Drawing* is disabled, otherwise
it will make a copy of the active frame on that layer, and use that.


Header
======

Active Only
   Only show the Grease Pencil blocks attached to the current scene and the objects within it.


Copying Sketches
----------------

It is possible to copy sketches from a layer/layers to other layers
using the "Copy"/"Paste" buttons in the header.
This works in a similar way as the copy/paste tools for keyframes in the *Action Editor*.

Sketches can also be copied from one screen (or view) to another using these tools.
It is important to keep in mind that keyframes will only be pasted into selected layers,
so layers will need to be created for the destination areas too.
