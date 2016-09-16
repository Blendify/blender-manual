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

Use the following controls to Add, Remove or adjust the position of a layer in the list.

Source
   Scene
      Grease Pencil data is attached to the current scene is used,
      unless the active object already has Grease Pencil data (i.e old files).
   Object
      Grease Pencil data is attached to the active object are used.
      This is required when using pre 2.73 add-ons.

Data-Block
   Used to select the Grease Pencil data-block to use for layers. For controls see :ref:`ui-data-block`.

Layer List
   There is a list of layers attached to each scene and a list of layers associated with each object.

   Lock
      Locks the ability to edit the current layers layer.
   Hide
      Hides the current layer in the drawing region.
   Unlock Color
      Unprotects selected colors from further editing and/or frame changes.

   Each layer has a visibility icon, and a lock icon to protect it from further changes.

.. rubric:: Layer List Specials

Duplicate Layer
   Creates a copy of the current layer.

Show All
   Makes all hidden layers visible  
Hide Others
   Makes all non selected layers hidden.

Lock/Unlock All
   Locks/Unlocks all of the layers. This can be useful to prevent unwanted editing.

Merge Down
   Merges the current layer with the layer below it.

.. note::

   By default, most operations occur only on the *active* layer highlighted in the list.


Appearance Settings
===================

These settings can be used to change how the active layer appears.

Opacity
   The transparency of the layer.
X-Ray
   Makes the lines visible when they pass behind other objects in the scene.
Show Points
   Draws the start/end points that make up the stroke.

Tint
   Color
      The color to tint the layer.
   Factor
      The amount that the *Tint Color* has on the layer.

Thickness Change
   Change in pixels to apply to the stroke in the current layer.

   It is also possible to make this be effected by a graphics tablet.

.. seealso::

   There are also option to control :doc:`Stroke Colors </interface/grease_pencil/drawing/colors>`.


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
