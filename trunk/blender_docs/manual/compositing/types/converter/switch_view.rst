
****************
Switch View Node
****************

.. figure:: /images/compositing_nodes_converter_switch-view.png
   :align: right

   Switch View Node.


The *Switch View* node combines the *views* (left and right) into a single Stereo 3D output.
This can be useful if for example, you need to treat the view as seperate images by combining each of the views.

.. seealso::

   :doc:`Multi-View </render/workflows/multiview/index>`.


Inputs
======

Left
   Left eye image input.
Right
   Right eye image input.


Properties
==========

This node has no properties.


Outputs
=======

Image
   Stereo 3D image output.


Example
=======


.. figure:: /images/multiview_compositor.png

   Compositor, Backdrop and Split Viewer Node.

The views to render are defined in the current scene views,
in a similar way as you define the composite output resolution in the current scene render panel,
regardless of the Image nodes resolutions or Render Layers from different scenes.
