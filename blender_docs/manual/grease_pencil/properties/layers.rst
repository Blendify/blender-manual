
*********
2D Layers
*********

.. figure:: /images/grease_pencil_properties_layers_panel.png
   :align: right

   *Grease Pencil* Layers list.

Layers list
===========

*Grease Pencil* has an special 2D layers displayed in a :ref:`List View <ui-list-view>` to help grouping and arranging strokes. 
Every stroke in the object only belong to one 2D layer.

There is always only one active layer in the list (the selected one).
When you are drawing, the new strokes will be added to the active layer.

By default the drawing order of the layers in the viewport are top to bottom. 
The order can be arranged using the Up and Down buttons on the right.

Layers can also be used together with Modifiers to only affects part of your drawing.
See :doc:`Modifiers </grease_pencil/modifiers/introduction>` for more information.

The layers can be added and removed using the ``+`` and ``-`` buttons on the right, 
and existing layers can be renamed by double-clicking on their name or using :kbd:`Ctrl-LMB` over it.

Sometimes you just want to only edit or view the active layer. 
You can use the lock and screen icon buttons next to the list to toggle whether the active layer is the only one that can be edited and/or visible.

Special Layers list menu
-------------------------

   Duplicate Layer
      Makes an exact copy of the selected layer appending a number to differentiate its name.

   Show All
      Turns on the visibility of every layer in the list. 

   Hide Others
      Turns off the visibility of every layer in the list except the active one. 

   Lock All
      Locks edition of all the layers in the list. 

   Unlock All
      Unlocks edition of all the layers in the list. 

   Autolock inactive layer
      Locks automatically the edition of every layer in the list except the active one. 
      This way you avoid to make unwanted changes in other layers without the need to lock them everytime.

   Merge Down
      Merge the selected layer with the layer below, the new layer keeps the name of the lower layer.

   Copy Layer to Object
      Makes a copy of the layer and move it to the selected *Grease Pencil* Object.

Main settings
===============

Next to the layer name there are four icons buttons that control main properties of the layer:

Clamp
    Act like a mask that hide everything on the underlying layers overlapping by the drawing in the current layer.
    Can be combined with Blend modes to achieve some useful artistic results.

Lock
    Lock/Unlock the layer edition in the viewport.
    
Viewport/Render Visibility
    Control the layer visibility in the viewport and in render.

Onion Skinning
    Turn On/off the use of the layer in Onion Skinning.

Below the layers list there are additional main settings:

Blend
    The layer blending operation to perform. See :term:`Color Blend Modes`.

Opacity
    Used to set the opacity of the layer.

Show only on keyframed
    Makes the layer visible in the viewport only if it has a keyframe in the actual frame. 
    This helps when you are inking drawings using the Fill Tool and want to only see the strokes that are in the actual frame to avoid fill on unwanted regions.

Adjustment
===========

-ToDo-

Relations
===========

-ToDo-

Layer Display
=============

-ToDo-

.. Tip: Sometimes the layers your are not working on are quite distracting, you can activate Fade Layers in overlays and control it opacity.

.. Tip: we can still have access to the layers list in the top-bar when working in Full canvas workspace for example.