
*********************
Features
*********************

Some features in Cycles are not finished yet, but already included in builds for testing.
These features may not work, crash Blender or change behavior in later versions.

They are hidden by default, but can be enabled by setting *Feature Set* to
*Experimental* in the Render properties.


.. figure:: /images/experimental.jpg

Currently considered experimental:

- OpenCL device
- Displacement
- Subdivision


Experimental GPU Kernel
=======================

The following features are not usually supported for GPU rendering,
but will work when using the experimental feature set:

- :ref:`SSS <cycles_shader_sss>` shader
- Correlated Multi Jitter sampling

.. warning:: The experimental GPU kernel requires a lot of memory
             and thus may not work at all on cards without enough ram.
