
******************
Filter 2D Actuator
******************

*2D Filter* s are image filtering actuators, that apply on final render of objects.


.. figure:: /images/BGE_Actuator_Filter_2D.jpg
   :width: 271px

   Edit Object actuator


**Filter 2D Type**
Select the type of 2D Filter required.

   *Custom Filter*
   *Invert*
   *Sepia*
   *Gray Scale*
   *Prewitt*
   *Sobel*
   *Laplacian*
   *Erosion*
   *Dilation*
   *Sharpen*
   *Blur*
   *Motion Blur*
   *Remove Filter*
   *Disable Filter*
   *Enable Filter*

Only one parameter is required for all filters:

Pass Number
   The pass number for which this filter is to be used.

Details of the filters are given in the descriptive text below.


Motion Blur
===========

*Motion Blur* is a *2D Filter* that needs previous rendering information to produce motion effect on objects.
Below you can see *Motion Blur* filter in Blender window, along with its logic bricks:


.. figure:: /images/Motionblur_render-full.jpg

   2D Filters: Motion Blur.


You can enable Motion Blur filter using a *Python* controller:
from bge import render
render.enableMotionBlur(0.85)

And disable it:
from bge import render
render.disableMotionBlur()


.. note::

   Your graphic hardware and OpenGL driver must support accumulation buffer (``glAccum`` function).


Built-In 2D Filters
===================

All 2D filters you can see in *2D Filter* actuator have the same architecture,
all built-in filters use fragment shader to produce final render view,
so your hardware must support shaders.


.. figure:: /images/Motionblur_render-full.jpg
   :width: 200px

   2D Filters: Motion Blur.


.. figure:: /images/Sepia_render-full.jpg
   :width: 200px

   2D Filters: Sepia.


.. figure:: /images/Sobel_render-full.jpg
   :width: 200px

   2D Filters: Sobel.


*Blur*, *Sharpen*, *Dilation*, *Erosion*, *Laplacian*, *Sobel*, *Prewitt*, *Gray Scale*, *Sepia* and *Invert*
are built-in filters.
These filters can be set to be available in some passes.

To use a filter you should:

- Create appropriate sensor(s) and controller(s).
- Create a *2D Filter* actuator.
- Select your filter, for example *Blur*.
- Set the pass number that the filter will be applied.

To remove a filter on a specific pass:

- Create appropriate sensor(s) and controller(s).
- Create a *2D Filter* actuator.
- Select *Remove Filter*.
- Set the pass number you want to remove the filter from it.

To disable a filter on a specific pass:

- Create appropriate sensor(s) and controller(s).
- Create a *2D Filter* actuator.
- Select *Disable Filter*.
- Set the pass number you want to disable the filter on it.

To enable a filter on a specific pass:

- Create appropriate sensor(s) and controller(s)
- Create a *2D Filter* actuator.
- Select *Enable Filter*.
- Set the pass number you want to enable the filter on it.


Custom Filters
==============

.. figure:: /images/Custom_2D_filter.jpg

   2D Filters: Custom Filter.


Custom filters give you the ability to define your own 2D filter using GLSL.
Its usage is the same as built-in filters,
but you must select *Custom Filter* in *2D Filter* actuator,
then write shader program into the Text Editor, and then place shader script name on actuator.

Blue Sepia Example:

.. code:: glsl

   uniform sampler2D bgl_RenderedTexture;
   void main(void)
   {
     vec4 texcolor = texture2D(bgl_RenderedTexture, gl_TexCoord[0].st);
     float gray = dot(texcolor.rgb, vec3(0.299, 0.587, 0.114));
     gl_FragColor = vec4(gray * vec3(0.8, 1.0, 1.2), texcolor.a);
   }
