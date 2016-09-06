..    TODO/Review: {{review|partial=X}}.

************
Introduction
************

.. figure:: /images/dopesheet-overview.jpg
   :width: 400px

   The DopeSheet.


Classical hand-drawn animators often made a chart, showing exactly when each drawing,
sound and camera move would occur, and for how long. They nicknamed this the "dopesheet".
While CG foundations dramatically differ from classical hand-drawn animation,
Blender's *Dopesheet* inherits a similar directive.
It gives the animator a "birds-eye-view" of every thing occurring within a scene.


Dope Sheet Modes
================

.. figure:: /images/dopesheet-modes.jpg

   Dope Sheet Modes.


There are four basic views for the Dopesheet.These all view different contexts of animation:

:doc:`DopeSheet </editors/dope_sheet/introduction>`
   The dopeSheet allow you to edit multiple actions at once.
:doc:`Action Editor </editors/dope_sheet/action>`
   *Action Editor* is the default, and most useful one. It is here that you can define and control your actions.
:doc:`Shape Key Editor </editors/dope_sheet/shapekey>`
   *ShapeKey Editor* is dedicated to the *Shapekey* data-blocks.
   It uses/edits the same action data-block as the previous mode.
   It seems to be an old and useless thing,
   as the *Action Editor* mode handles *Shape* channels very well, and this mode adds nothing...
:doc:`Grease Pencil </interface/grease_pencil/index>`
   *Grease Pencil* is dedicated to the :doc:`grease pencil tool's </interface/grease_pencil/layers_and_animation>`
   keyframes- for each grease pencil layer, you have a strip along which you can grab its keys,
   and hence easily re-time your animated sketches.
   As it is just another way to see and edit the grease pencil data,
   this mode uses no data-block (and hence has nothing to do with actions).

   .. note::

      Note that you will have as much top-level grease pencil channels as you have sketched areas
      (3D Views, *UV/Image Editor*, etc.)


Interface
=========

The *Action Editor* interface is somewhat similar to the *Graph Editor*
one, it is divided in three regions:

.. _fig-dope-sheet-action:

.. figure:: /images/actioneditor.png
   :width: 600px

   The Action Editor, Action Editor mode, with an Object and Shape channels.


Header
------

Here you find the menus, a first block of controls related to the editor "mode",
a second one concerning the action data-blocks, and a few other tools
(like the copy/paste buttons, and snapping type).


View Menu
^^^^^^^^^

.. figure:: /images/actioneditor-sliders.png

   the action editor showing sliders.


Realtime Updates
   When transforming keyframes, changes to the animation data are flushed to other views.
Show Frame Number Indicator
   Show frame number beside the current frame indicator line.
Show Sliders
   A toggle option that shows the value sliders for the channels.
   See the Fig. :ref:`fig-dope-sheet-action`.
Use Group Colors
   Draw groups and channels with colors matching their corresponding groups.
AutoMerge Keyframes
   Automatically merge nearby keyframes.
Sync Markers
   Sync Markers with keyframe edits.
Show Seconds
   Whether to show the time in the X-axis as frames or as seconds.

Set Preview Range :kbd:`P`
   Interactively define frame range used for playback.
   Allow you to define a temporary preview range to use for the :kbd:`Alt-A` realtime playback
   (this is the same thing as the *Playback Range* option of the
   :ref:`Tmeline editor header <animation-editors-timeline-headercontrols>`).
Clear Preview Range :kbd:`Alt-P`
   Clears the preview range.
Auto-Set Preview Range
   Automatically sets the preview range to playback the whole action.


Marker Menu
^^^^^^^^^^^

See the :doc:`Markers page </animation/markers>`.


Main Region
-----------

It contains the keyframes for all visible action channels.
As with the other "time" editor, the X-axis represents time.
The Y-axis has no mean in itself, unlike with the *Graph Editor*, it is just a sort of "stack" of action channels.
Each one being shown as an horizontal colored strip (of a darker shade "during" the animated/keyed period).
On these channel strips lay the keyframes, visualized as light-gray (unselected) or yellow (selected) diamonds.
One of the key feature of this editor is that it allow you to visualize immediately which channel (i.e. F-Curve)
is *really* affected. When the value of a given channel does not change at all between two neighboring keyframes,
a gray (unselected) or yellow (selected) line is drawn between them.


"List-tree" Region
------------------

This part shows the action's channel "headers" and their hierarchy. Basically, there are:

- "Top-level" channels, which represent whole F-Curve data-blocks
  (so there is one for *Object* one, one for *Shape* one, etc.).
  They gather *all* keyframes defined in their underlying F-Curve data-block.
- "Mid-level" channels, which seem currently to have no use
  (there iss one per top-level channel, they are all named *F-Curves*, and have no option at all).
- "Low-level" channels, which represent individual F-Curve,
  with their own keyframes (fortunately, only keyed frames are shown!).

Each level can be expended/collapsed by the small arrow to the left of its "parent" channel.
To the right of the channel's headers, there are some channel's setting controls:

- Clicking on the small "eye" will allow you to mute that channel (and all its "children" channels, if any!).
- Clicking on the small "lock" will allow you to prevent this channel and its children to be edited.

  .. note::

      This is also working inside the NLA,
      but that it does not prevent edition of the underlying F-Curve).

A channel can be selected (text in white, strip in gray-blue color) or not
(text in black, strip in pink-brown color.), use :kbd:`LMB` clicks to toggle this state.
You can access some channel's properties by clicking :kbd:`Ctrl-LMB` on its header.
Finally, you can have another column with value-sliders,
allowing you to change the value of current keyframes, or to add new ones.
These are obviously only available for low-level channels (i.e. individual F-Curve ).
See `View Menu`_ above for how to show these sliders.
