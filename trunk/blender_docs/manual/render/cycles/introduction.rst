
************
Introduction
************

.. figure:: /images/cycles_introduction.jpg

Cycles is a ray tracing renderer focused on interactivity and ease of use,
while still supporting many production features.

It is bundled as an add-on that is enabled by default. To use Cycles,
it must be set as the active render engine in the top header. Once that is done,
interactive rendering can be started by setting a 3D view editor to draw mode Rendered using :kbd:`Shift-Z`.
The render will keep updating as modifications are done,
such as changing a material color, changing a lamp's intensity or moving objects around.

Cycles may be able to use your :abbr:`GPU (Graphics Processing Unit, or Graphics Card)` to render.
To see if and how you can use your GPU for rendering, see the documentation on
:doc:`GPU Rendering </render/cycles/gpu_rendering>`.

.. seealso::

   `Developer documentation <http://wiki.blender.org/index.php/Dev:2.6/Source/Render/Cycles>`__
   is also available.
