.. _bpy.types.Filter2DActuator.:

******************
Filter 2D Actuator
******************

The *Filter 2D Actuator* is used the add image filters, that apply on final render of objects.
There are several 2D filters each listed below. Most are self explanatory, however,
some are special and will be described in detail later.

- Custom Filter
- Invert
- Sepia
- Gray Scale
- Prewitt
- Sobel
- Laplacian
- Erosion
- Dilation
- Sharpen
- Blur
- Motion Blur
- Remove Filter
- Disable Filter
- Enable Filter

.. figure:: /images/bge_actuator_filter_2d.png
   :width: 271px

   Edit Object actuator.


Properties
==========

Filter 2D Type
   Selects the type of 2D filter to use. All 2D filters are rendered with fragment shaders
   so your hardware must support fragment shaders. Several of the filters are called "built in filters",
   these are: Blur, Sharpen, Dilation, Erosion, Laplacian, Sobel, Prewitt, Gray Scale, Sepia, and Invert.
   There are however some filters that work differently then the ones above and are discribed seperatly.

Pass Number
   The pass number for the filter to use.

Details of special filters are described below.


Motion Blur
-----------

*Motion Blur* is a *2D Filter* that needs previous rendering information to produce motion effect on objects.
Below you can see *Motion Blur* filter in Blender window, along with its logic bricks:

.. figure:: /images/bge_motionblur_render-full.jpg

   2D Filters: Motion Blur.


You can enable Motion Blur filter using a *Python* controller::

   from bge import render
   render.enableMotionBlur(0.85)

And disable it::

   from bge import render
   render.disableMotionBlur()

.. note::

   Your graphic hardware and OpenGL driver must support accumulation buffer (``glAccum`` function).

Enable/Disable Filters
----------------------

There are two filters which can be used to either *Enable* or *Disable* other filters

To enable/disable a filter on a specific pass:

#. Create appropriate sensor(s) and controller(s).
#. Create a *2D Filter* actuator.
#. Select either a *Enable Filter* or *Disable Filter* dependng on what you want to do.
#. Set the pass number you want to disable the filter on it.


Removing Filters
----------------

The *Remove Filter* is used to remove other 2D filters.

To remove a filter on a specific pass:

- Create appropriate sensor(s) and controller(s).
- Create a *2D Filter* actuator.
- Select *Remove Filter*.
- Set the pass number you want to remove the filter from it.


Custom Filters
==============

Custom filters give you the ability to define your own 2D filter using GLSL.
Its usage is the same as built-in filters,
but you must select *Custom Filter* in *2D Filter* actuator,
then write shader program into the Text Editor, and then place shader script name on actuator.

.. figure:: /images/custom_2d_filter.jpg

   2D Filters: Custom Filter.

Blue Sepia Example:

.. code-block:: glsl

   uniform sampler2D bgl_RenderedTexture;
   void main(void)
   {
     vec4 texcolor = texture2D(bgl_RenderedTexture, gl_TexCoord[0].st);
     float gray = dot(texcolor.rgb, vec3(0.299, 0.587, 0.114));
     gl_FragColor = vec4(gray * vec3(0.8, 1.0, 1.2), texcolor.a);
   }

Examples
========

Built in filters
----------------

.. list-table::

   * - .. figure:: /images/sepia_render-full.jpg

          Sepia Filter.

     - .. figure:: /images/bge_sobel_render-full.jpg

          Sobel Filter.
