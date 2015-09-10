
Mirror
******

.. admonition:: Reference
   :class: refbox

   | Mode:     *Object* and *Edit* modes
   | Menu:     :menuselection:`Object/Mesh --> Mirror`
   | Hotkey:   :kbd:`Ctrl-M`


Description
===========

.. figure:: /images/3D-interaction_Transformations_Advanced_Mirror_mirror-example.jpg

   Mirroring a selection.


Mirroring an Object or Mesh selection will create a reversed version of the selection. The
position of the mirrored version of the selection is determined by the *Pivot Point.*
A common use of mirroring is to model half an object, duplicate it and then use the
mirror transform to create a reversed version to complete the model.
Note that mirrored duplicates can also be created with a *Mirror modifier.*


:doc:`Read more about the Pivot Point </editors/3dview/transforms/transform_control/pivot_point/index>`

:doc:`Read more about the Mirror Modifier </modifiers/generate/mirror>`


Usage
-----

To mirror a selection along a particular global axis press:


:kbd:`Ctrl-M`, followed by :kbd:`X`, :kbd:`Y` or :kbd:`Z`.


The image *Mirroring a selection* shows the results of this action after a mesh
element has been duplicated.


----

In Mesh mode, you can mirror the selection on the currently selected Transform Orientation by
pressing the appropriate axis key a second time. For example,
if the Transform Orientation is set to *Normal*, pressing:


:kbd:`Ctrl-M`, followed by :kbd:`X` and then :kbd:`X` again


will mirror the selection along the X-axis of the *Normal Orientation.*

:doc:`Read more about Transform Orientations </editors/3dview/transforms/transform_control/transform_orientations>`


.. figure:: /images/3D-interaction_Transformations_Advanced_Mirror_interactive-mirror.jpg

   Interactive mirror.


----

You can alternatively hold the :kbd:`MMB` to interactively mirror the object by moving
the mouse in the direction of the mirror axis.

