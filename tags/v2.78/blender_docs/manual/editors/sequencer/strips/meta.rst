
***********
Meta Strips
***********

Meta-Strips are a kind of organization tool. For example,
if you are using a lot of strips and they are complicated
the the interface you can group them together using Meta-Strips.
A Meta-Strip spans from the beginning of the first strip to the end of the last one,
and condenses all channels into a single strip. Separating (ungrouping)
them restores them to their relative positions and channels.
To create a Meta-Strip select all the strips you want to group, and :kbd:`Ctrl-G` to group them.
If you choose to delete a Meta-Strip and want to keep the strips inside, use :kbd:`Alt-G`.

.. figure:: /images/editors_sequencer_strips_meta.png

   Example of Meta-Strip.

After creating a Meta-Strip it is also possible to edit the contents inside a Meta-Strip.
To do this select the desired Meta-strip and press :kbd:`Tab`.
Once you are done editing the contents inside a Meta-Strip press :kbd:`Tab` again to exit the Meta-Strip.
Meta-Strips can also be nested, which make editing them a little confusing.
To exit out one level of Meta-Strip make sure you do not have a Meta-Strip selected when you press :kbd:`Tab`.

.. note::

   The default blend mode for a Meta strip is Replace. There are many cases where this alters
   the results of the animation so be sure to check the results and adjust the blend mode if necessary.

One convenient use for Meta-Strips is when you want to apply the same effect to multiple strips.
For example: if you have a video that was recorded in different files and want to add an effect strip.
It is much more convenient to apply a single set of effects
to one Meta-Strip then applying it to each individual strip.

.. seealso::

   It is also possible to do the similar task described above with a
   :doc:`Adjustment Layer </editors/sequencer/strips/types/effects/adjustment>` effect strip.
