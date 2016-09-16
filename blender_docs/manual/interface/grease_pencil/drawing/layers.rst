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


Grease Pencil Data
==================

Use the adjacent controls to Add, Remove or adjust the position of a layer in the list.
Each layer has a visibility icon, and a lock icon to protect it from further changes.
Double click on a layer name to rename it.

There is a list of layers attached to each scene and a list of layers associated with each object.
The buttons above the list box control its contents,
showing either the layers associated with the active scene
or the list of layers associated with the active object.

By default, most operations occur only on the *active* layer highlighted in the list.


Appearance Settings
===================

Set the color, line width and other aspects of the grease pencil's appearance in the
*Grease Pencil Panel* of the *Properties region* shown here.

There are separate settings for each layer with those of the active layer shown in the panel.
All the strokes on a layer (not just those made after a particular change)
are affected by that layer's grease pencil properties.

Thickness
   Width of the line strokes.
X-Ray
   Makes the lines visible when they pass behind other objects in the scene.


Animation
=========

Parent
   A :ref:`Object Selector <ui-eye-dropper>` to select the :term:`parent` object.

   Type
      TODO.

Lock Frame
   Locks the current frame displayed by layer.
Delete Frame
   Deletes the active frame for the active Grease Pencil Layer.


Onion Skinning
--------------

Onion-skinning, also known as ghosting, helps an animator by displaying the neighboring frames as a faded trail.
Enable the option with the *Onion Skin* button in the grease pencil properties region
(see :ref:`fig-gp-onion` shown below).

.. _fig-gp-onion:

.. figure:: /images/grease_pencil_layers_onion.jpg

   Grease Pencil Onion Skinning.

Use Custom Colors
   (Marked "A") use the *Before* and *After* controls to change the color of the ghosted frames.

Before
   Color
      The color of the strokes before the current frame.
   Before Range
      The maximum number of frame to show before the current frame.
      0 will only show the the previous sketch, and -1 will not show any frames before current.

After
   Color
      The color of the strokes before the current frame.
   After Range
      The maximum number of frame to show after the current frame.
      0 will only show the the next sketch, and -1 will not show any frames after current.

.. seealso::

   - Grease Pencil mode in the :doc:`Dope Sheet </editors/dope_sheet/grease_pencil>` editor.
   - Grease Pencil :doc:`Animation </interface/grease_pencil/animating>` page.
