
************
Introduction
************

Animating with Grease Pencil
============================

The main goal of *Grease Pencil* is to offer a 2D animation tools full immersed in a 3D environment.

.. figure:: /images/grease-pencil_animation_introduction_example.png

   Sample animation showing *Grease Pencil* Object keyframes in the Dope sheet with onion skinning enabled.

In Blender, *Grease Pencil* Objects can be animated in many ways:

Moving as a whole object
   Changing their position, orientation or size in time;

Drawing frame by frame
   Drawing one frame at a time (traditional animation)

Deforming them
   Animating their points;

Inherited animation
   Causing the object to move based on the movement of another object
   (e.g. its parent, hook, armature, etc.). Useful for cut-out animation for example.

For a complete overview of animation in Blender please refer to the 
:doc:`Animation & Rigging </animation/index>` chapter.

2D Traditional Animation
=========================

Keyframes
---------

Traditional animation in *Grease Pencil* is achieved with the use of 
:doc:`keyframes </animation/keyframes/introduction>` 
that hold the strokes information in a particular frame.

Every time you create a stroke in *Grease Pencil* Object Draw Mode 
a new keyframe is added at the current frame on the active channel.

.. note::

   The channels in the Dope Sheet correspond to the active 2D layer of the *Grease Pencil* Object.

*Grease Pencil* has its own mode in the Dope Sheet to works with keyframes.
See *Grease Pencil* mode in the :doc:`Dope Sheet </editors/dope_sheet/grease_pencil>`
section for more information.

There are also several tools on the Stroke Menu to work with Keyframes and strokes.
See :doc:`Animation tools </grease_pencil/animation/tools>` for more information.

Onion Skinning
---------------

One key element in traditional animation is the use of onion skinning.
*Grease Pencil* offer a lot of flexibility and options for this tool.
See :doc:`Onion Skinning </grease_pencil/properties/onion_skinning>` for more information.


Animation Options
=================

In draw Mode there are two option related to animation workflow that you can use.

.. figure:: /images/grease-pencil_animation_introduction_drawing-options.png

   General drawing/animation options.

Add Weight Data
   When enabled, new strokes weight data is added according to the current vertex group and weight.
   If there is no vertex group selected, weight data is not added.

   Useful for example in cut-out animation for adding new drawing
   on the same vertex group without the need to make it afterwards.

   See :doc:`Weight Paint Mode </grease_pencil/modes/weight_paint/introduction>` for more information.

Additive Drawing
   When creating new frames, the strokes from the previous/active frame are include as basis for the new one.

Examples
=========

Traditional Animation
----------------------

This example shows you how to animate a bouncing ball 
with traditional 2D animation technique and *Grease Pencil*.

First, go to menu :menuselection:`File --> New --> 2D Animation` to start with a new 2D animation template.
The template is ready to quick start your animation with a Grease Pencil object already created, onion skinning activated
and using the camera view.

#.   Set the range of the animation in the timeline from 1 to 24.
#.   On the 3D view draw a ball on the upper left corner with the Draw Tool (extreme).
#.   Move to frame 12 and draw a squashed ball in the bottom center (breakdown).
#.   Move to frame 24 and draw a ball in the top right corner of the 3D view (extreme).
#.   Keep drawing all the inbetweens frames you want using the onion skinning ghost as reference.

To test the animation, press :kbd:`Spacebar` to play.