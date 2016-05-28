
************
Introduction
************

.. figure:: /images/cycles_introduction.jpg

Cycles is Blender’s ray-trace based production render engine.
Since its release as Apache 2.0 (permissive open source),
it’s also in use by other 3D tools, such as Poser and Rhino.
Cycles can be used as part of Blender and as stand-alone,
making it a perfect solution for massive rendering on clusters or at cloud providers.

To use Cycles, it must be set as the active render engine in the top header. Once that is done,
interactive rendering can be started by setting a 3D view editor to draw mode Rendered using :kbd:`Shift-Z`.
The render will keep updating as modifications are done,
such as changing a material color, changing a lamp's intensity or moving objects around.
To perform a full render go to :menuselection:`Properties --> Render`
here you can either choose to render a still image or an :doc:`Animation </render/workflows/animations>`.

Cycles may be able to use your :abbr:`GPU (Graphics Processing Unit, or Graphics Card)` to render.
To see if and how you can use your GPU for rendering, see the documentation on
:doc:`GPU Rendering </render/cycles/gpu_rendering>`.

.. seealso::

   `Developer documentation <https://wiki.blender.org/index.php/Dev:2.6/Source/Render/Cycles>`__ 
   is available as well.
