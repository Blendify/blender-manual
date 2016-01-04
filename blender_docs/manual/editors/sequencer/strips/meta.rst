
***********
Meta Strips
***********

A Meta-Strip is a group of strips. Select all the strips you want to group,
and :kbd:`Ctrl-G` to group them into one meta.
The meta spans from the beginning of the first strip to the end of the last one,
and condenses all channels into a single strip, just like doing a mixdown in audio software.
Separating (ungrouping) them restores them to their relative positions and channels.

The default blend mode for a meta strip is Replace. There are many cases where this alters
the results of the animation so be sure to check the results and adjust the blend mode if
necessary.

One convenient use for meta strips is when you want to apply the same effect to multiple
strips. For example: scaling a loop. Until blender gets a Loop effect,
the only way to loop a clip is to duplicate it several times.
If the clip needs any transforms (like scaling or translating an animated watermark or source
material in a different aspect ratio) it is much more convenient to apply a single set of
transforms to a meta strip built from the repeated duplicates than apply copies of those
transforms to each instance in the loop.

It is possible to edit the contents of a meta strip by selecting it and pressing Tab.
You can press Tab again to finish editing that strip. Since meta strips can be nested, to pop
out one level of meta strip make sure you do not have a meta strip as the active strip when
you press :kbd:`Tab`.
