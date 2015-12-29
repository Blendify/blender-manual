
************
Introduction
************

.. figure:: /images/VSE-SFX.jpg
   :align: right

   Available Effects

Blender offers a set of effects that can be added to your sequence. Theses effects are listed to the right.
Each effect is explained in the next pages individually, but they all are added and controlled in the same way.
To add an effect strip, select one base strip (image, movie, or scene) by :kbd:`RMB` clicking on it.
For some effects, like the Cross transition effect, you will need to :kbd:`Shift-RMB` a second overlapping strip
(it depends on the effect you want). Then select :menuselection:`Add --> Effect`
and pick the effect you want from the pop-up menu. When you do,
the Effect strip will be shown above the source strips. If it is an independent effect,
like the :doc:`Color Generator </editors/sequencer/strips/effects/color>`,
it will be rubberbanded to your mouse; click to drop the strip.

.. note::

  Since most Effects strips depend on one or two source strips,
  their frame location and duration depends on their source strips. Thus,
  you may not be able to move it; you have to move the source strips in order to affect the effect strip.

To use an effect that combines or makes a transition between (or composites) two strips,
you must *B* ox select or shift-right-click two of them. When you add the effect strip,
it will be placed in a channel above the two in Grab mode (click to drop it on a channel).
Its duration will be the overlap between the two strips as a maximum.

With some effects, like the :doc:`Alpha Over </editors/sequencer/strips/effects/alpha_over_under_overdrop>`,
the order in which you select the strips is important.
You can also use one effect strip as the input or source strip with another strip,
thus layering effects on top of one another.

.. note::

   The only exception is the :doc:`Color Generator </editors/sequencer/strips/effects/color>` effect.
   It does not depend on a base strip; you can add and position it independent of any other strip.
   Change the length as you would any strip.

If you picked the wrong effect from the menu, you can always change it by selecting the strip (:kbd:`RMB`)
and using the :menuselection:`Strip --> Change Effect` selection.
Or, you can press :kbd:`C` to switch effects on a selected Effects strip.
