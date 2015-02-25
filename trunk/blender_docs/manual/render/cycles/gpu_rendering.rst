.. _render-cycles-gpu_rendering:

*************
GPU Rendering
*************

Introduction
============

:abbr:`GPU (Graphics Processing Unit)` rendering makes it possible to use your graphics card for rendering, instead of the CPU.
This can speed up rendering,
because modern GPUs are designed to do quite a lot of number crunching. On the other hand,
they also have some limitations in rendering complex scenes, due to more limited memory,
and issues with interactivity when using the same graphics card for display and rendering.

Cycles has two GPU rendering modes: through CUDA,
which is the preferred method for NVidia graphics cards; and OpenCL,
which is intended to support rendering on AMD/ATI graphics cards.
The implementation of OpenCL is only in an experimental stage and disabled in official builds.


Configuration
=============

To enable GPU rendering, go into the User Preferences, and under the System tab,
select the Compute Device(s) to use. Next, for each scene,
you can configure to use CPU or GPU rendering in the Render properties.


CUDA
----


NVidia :abbr:`CUDA (Compute Unified Device Architecture)` is supported for GPU
rendering with **NVidia graphics cards**.
We support graphics cards starting from GTX 4xx (computing capability 2.0).

Cycles requires recent drivers to be installed, on all operating systems.
Be sure to download the Blender version matching your operating system; that is,
download 64-bit Blender for 64-bit operating systems.

`List of CUDA cards with shader model <http://www.nvidia.com/object/cuda_gpus.htm>`__


Limitations
===========

- The maximum amount of individual textures is limited to 95 byte-image textures (PNG, JPEG, ..)
  and 5 float-image textures (OpenEXR, 16 bit TIFF, ..) on GTX 4xx/5xx cards,
  and 145 byte-image textures and 5 float-image textures on GTX6xx cards and above. 
- :doc:`Open shading language </render/cycles/nodes/osl>` (OSL) is only supported by CPU.
- Smoke/Fire rendering is not supported on GPU. 


Frequently Asked Questions
==========================

Why is Blender unresponsive during rendering?
---------------------------------------------

While a graphics card is rendering, it can not redraw the user interface,
which makes Blender unresponsive. We attempt to avoid this problem by giving back control over
the GPU as often as possible,
but a completely smooth interaction can't be guaranteed, especially on heavy scenes.
This is a limitation of graphics cards for which no true solution exists,
though we might be able to improve this somewhat in the future.

If possible, it is best to install more than one GPU,
using one for display and the other(s) for rendering.


Why does a scene that renders on the CPU not render on the GPU?
---------------------------------------------------------------

There maybe be multiple causes,
but the most common is that there is not enough memory on your graphics card.
We can currently only render scenes that fit in graphics card memory,
and this is usually smaller than that of the CPU. Note that, for example, 8k, 4k,
2k and 1k image textures take up respectively 256MB, 64MB, 16MB and 4MB of memory.

We do intend to add a system to support scenes bigger than GPU memory,
but this will not be added soon.


Can I use multiple GPUs for rendering?
--------------------------------------

Yes, go to User Preferences > System > Compute Device Panel, and configure it as you desire.


Would multiple GPUs increase available memory?
----------------------------------------------

No, each GPU can only access its own memory.


What renders faster, NVidia or AMD, CUDA or OpenCL?
---------------------------------------------------

Currently NVidia with CUDA is rendering faster. There is no fundamental reason why this should
be so—we don't use any CUDA-specific features—but the compiler appears to be more mature,
and can better support big kernels.
OpenCL support is still being worked on and has not been optimized as much,
because we haven't had the full kernel working yet.


Error Messages
==============

Unsupported GNU version! gcc 4.7 and up are not supported!
----------------------------------------------------------

On Linux, depending on your GCC version you might get this error.

If so, delete the following line in /usr/local/cuda/include/host_config.h

::

   #error -- unsupported GNU version! gcc 4.7 and up are not supported!


CUDA Error: Invalid kernel image
--------------------------------

If you get this error on Windows 64-bit, be sure to use the 64-bit build of Blender,
not the 32-bit version.


CUDA Error: Out of memory
-------------------------

This usually means there is not enough memory to store the scene on the GPU.
We can currently only render scenes that fit in graphics card memory,
and this is usually smaller than that of the CPU. See above for more details.


The NVIDIA OpenGL driver lost connection with the display driver
----------------------------------------------------------------

If a GPU is used for both display and rendering,
Windows has a limit on the time the GPU can do render computations.
If you have a particularly heavy scene, Cycles can take up too much GPU time.
Reducing Tile Size in the Performance panel may alleviate the issue,
but the only real solution is to use separate graphics cards for display and rendering.

Another solution can be to increase the timeout,
although this will make the user interface less responsive when rendering heavy scenes.
http://msdn.microsoft.com/en-us/windows/hardware/gg487368.aspx


CUDA error: Unknown error in cuCtxSynchronize()
-----------------------------------------------

An unknown error can have many causes, but one possibility is that it's a timeout.
See the above answer for solutions.

