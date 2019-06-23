
*********
2D Layers
*********

.. figure:: /images/grease_pencil_properties_layers_panel.png
   :align: right

   *Grease Pencil* Layers panel.


Layers List
===========

*Grease Pencil* objects each have a list of 2D layers for grouping and arranging strokes.
Any stroke can only belong to a single 2D layer.

There is always only one active layer in the list (the selected one).
When you draw, the new strokes are added to the active layer.

Every layer correspond to a channel in the Dope Sheet editor (Grease Pencil mode).
See :doc:`Dope Sheet </editors/dope_sheet/grease_pencil>` for more information.

By default the rendering order of the layers in the viewport are top to bottom.
You can change the layers order using the Up and Down buttons on the right.

Layers can also be used together with Modifiers to only affects part of your drawing.
See :doc:`Modifiers </grease_pencil/modifiers/introduction>` for more information.

The layers can be added and removed using the ``+`` and ``-`` buttons on the right,
and existing layers can be renamed by double-clicking on their name or using :kbd:`Ctrl-LMB` over it.

If you just want to only edit or view the active layer and avoid to make unwanted changes on others layers,
you can use the lock and screen icon buttons next to the list to toggle
whether the active layer is the only one that can be edited and/or visible.

.. tip::

   Sometimes the layers that your are not working on could be a distraction,
   you can activate *Fade Layers* in overlays to control the opacity of the non active layers.
   See :doc:`Overlays </editors/3dview/controls/overlays>` for more information.


Special Layers List Menu
------------------------

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


Main Settings
=============

Next to the layer name there are four icons buttons that control main properties of the layer:

Clamp
   When using clamp, the lower layers function as a mask for layer with clamp,
   hiding any pixel in the layer outside the mask.
   Can be combined with Blend modes to achieve some useful artistic results.
   This control can also be found next to the layer opacity control.

.. list-table::

   * - .. figure:: /images/grease_pencil_properties_layers_clamp_off.png
          :width: 320px

          Red stroke on top layer without clamp.

     - .. figure:: /images/grease_pencil_properties_layers_clamp_on.png
          :width: 320px

          Red stroke on top layer with clamp activated.


Lock
   Lock/Unlock the layer edition in the viewport.

Viewport/Render Visibility
   Control the layer visibility in the viewport and in render.

Onion Skinning
   Turn On/off the use of Onion Skinning in the layer. (*Grease Pencil* Onion Skinning is per layer)
   You can see all the settings in the :doc:`Onion Skinning </grease_pencil/properties/onion_skinning>` section.

Below the layers list there are additional main settings:

Blend
   The layer blending operation to perform. See :term:`Color Blend Modes`.

Opacity
   Used to set the opacity of the layer.

Show only on keyframed
   Makes the layer visible in the viewport only if it has a keyframe in the actual frame.
   This helps for example when you are in the inking process using the Fill Tool and want to only see
   the strokes that are in the actual frame to avoid fill in unwanted regions.


Adjustments
===========

.. figure:: /images/grease_pencil_properties_layers_adjustment.png
   :align: right

   Layers adjustment panel.

Tint Color/Factor
   Color that tint any material colors used in the layer.
   Factor control the amount of tint color to apply.

Stroke Thickness
   Thickness value that override strokes thickness in the layer.

Pass Index
   Layer index number. Can be used with some Modifiers to restrict changes to only certain areas.

   See :doc:`Modifiers </grease_pencil/modifiers/introduction>` for more information.

View Layer
   Defines the View Layer to use for the *Grease Pencil* layer.
   If empty, the layer will be included in all View Layers.
   This is useful to separate drawings parts for compositing.

   See :doc:`Compositing </compositing/introduction>` for more information.

Lock material
   Avoids editing locked materials in the layer. When disable, 
   any material can be edited even if they are locked in the material list.
   

Relations
=========

Parent/Type
   Select a parent Object and type to manipulate the layer.
   The layer will inherit the transformations of the parent, specially useful when rigging for cut-out animation.


Layer Display
=============

Custom channel color
   Sets the color to use in the channel region of the :doc:`Dope Sheet </editors/dope_sheet/grease_pencil>`.

