.. This page should be a general workflow page (TODO).

******************
Animating Sketches
******************

You can use Grease Pencil to create 2D animations (e.g. in flipbook style) and
mixing it with 3D objects and composition.

Sketches are stored on the frame that they were drawn on, as a separate drawing
(only on the layer that they exist on). A keyframe is automatically add per layer.
Each drawing is visible until the next drawing for that layer is encountered.
The only exception to this is the first drawing for a layer,
which will also be visible before the frame it was drawn on.

Therefore, it is simple to make a pencil-test/series of animated sketches:

#. Go to first relevant frame. Draw.
#. Jump to next relevant frame. Draw some more.
#. Keep repeating process, and drawing until satisfied. Voila! Animated sketches.

.. (todo) keyframes, on properties.

.. seealso::

   Grease Pencil mode in the :doc:`Dope Sheet </editors/dope_sheet/grease_pencil>` editor.


Compositing
===========

The grease pencil layers create a pass inside :doc:`OpenGL </render/opengl>` render result.
This result can be exported to ``EXR multilayer`` and used in composition.

ToDo.


Example
=======

.. only:: builder_html and (not singlehtml)

   .. youtube:: vSD5mN7LT_g

.. only:: not builder_html and (singlehtml)

   A video can be found at https://www.youtube.com/watch?v=vSD5mN7LT_g
