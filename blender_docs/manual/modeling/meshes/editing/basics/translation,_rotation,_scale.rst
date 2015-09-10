
..    TODO/Review: {{review|}} .

****************************
Translation, Rotation, Scale
****************************

.. admonition:: Reference
   :class: refbox

   | Mode:     *Edit* mode
   | Panel:    *Mesh Tools* (*Editing* context)
   | Menu:     :menuselection:`Mesh --> Transform --> Grab/Move, Rotate, Scale, ...`
   | Hotkey:   :kbd:`G` / :kbd:`R` / :kbd:`S`


Once you have a selection of one or more elements, you can grab/move (:kbd:`G`),
rotate (:kbd:`R`) or scale (:kbd:`S`) them, like many other things in Blender,
as described in the :doc:`Manipulation in 3D Space </editors/3dview/transforms/introduction>` section.

To move, rotate and scale selected components, either use the *Translate*, *Rotate*, and *Scale* buttons,
the :doc:`transform manipulators </editors/3dview/transforms/transform_control/manipulators>`,
or the shortcuts:

:kbd:`G`, :kbd:`R`, and :kbd:`S` respectively.
After moving a selection, the options in the Tool Shelf allow you to fine-tune your changes,
limit the effect to certain axes, turn proportional editing on and off, etc.

Of course, when you move an element of a given type (e.g. an edge),
you also modify the implicitly related elements of other kinds (e.g. vertices and faces).

You also have in *Edit* mode an extra option when using these basic manipulations:
the :doc:`proportional editing </editors/3dview/transforms/transform_control/proportional_edit>`.
