..    TODO/Review: {{review|partial=x|fixes=[]}}.

******
Layers
******

Grease Pencil sketches are organized in layers,
much like the image layers in the GIMP or Photoshop\ :sup:`®`\ .
These layers are not related to any of the other layer systems in Blender.

The layers' main purpose is to gather sketches that are related in some
meaningful way (i.e. "blocking notes", "director's comments on blocking", or "guidelines").
For this reason, all the strokes on a layer (not just those made after a particular change)
are affected by that layer's color, opacity, and stroke thickness settings.

Layers are managed in the *Grease Pencil Panel* of the *Properties region* :kbd:`N` shown here.

.. figure:: /images/grease_pencil_layers_list.jpg

   Grease Pencil Panel.

Use the adjacent controls to Add, Remove or adjust the position of a layer in the list.
Each layer has a visibility icon, and a lock icon to protect it from further changes.
Double click on a layer name to rename it.

There is a list of layers attached to each scene and a list of layers associated with each object.
The buttons above the list box control its contents,
showing either the layers associated with the active scene
or the list of layers associated with the active object.

By default, most operations occur only on the *active* layer highlighted in the list.


Onion Skinning
--------------

.. _fig-gp-onion:

.. figure:: /images/grease_pencil_layers_onion.jpg

   Grease Pencil Onion Skinning.

Onion-skinning, also known as ghosting, helps an animator by displaying the neighboring frames as a faded trail.
Enable the option with the *Onion Skin* button in the grease pencil properties region
(see :ref:`fig-gp-onion` shown above).

Use *Before* and *After* to set the number of ghost frames drawn on either side of the current frame.
When *Use Custom Colors* (Marked *A*) is enabled,
you can also use the *Before* and *After* controls to change the color of the ghosted frames.

.. seealso::

   Grease Pencil also has a mode in the :doc:`Dope Sheet </editors/dope_sheet/grease_pencil>` editor.
