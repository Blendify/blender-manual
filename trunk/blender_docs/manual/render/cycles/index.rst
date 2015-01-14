
#######################
  Cycles Render Engine
#######################

Cycles is a ray tracing renderer focused on interactivity and ease of use,
while still supporting many production features.
`Developer documentation <http://wiki.blender.org/index.php/Dev:2.6/Source/Render/Cycles>`__
is also available.


Getting Started
===============

Cycles is bundled as an add-on that is enabled by default. To use Cycles,
it must be set as the active render engine in the top header. Once that is done,
interactive rendering can be started by setting a 3D view editor to draw mode Rendered.
The render will keep updating as material and object modifications are done.

.. toctree::
   :maxdepth: 2

   getting_started.rst
   camera.rst
   materials/index.rst
   texture_editing.rst
   world.rst
   lamps.rst
   nodes/index.rst
   light_paths.rst
   integrator.rst
   reducing_noise.rst
   passes.rst
   experimental_features.rst
   gpu_rendering.rst
