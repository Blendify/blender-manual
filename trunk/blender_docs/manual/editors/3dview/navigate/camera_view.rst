
***********
Camera View
***********

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Camera --> Active Camera`
   | Hotkey:   :kbd:`Numpad0`


Cameras View can be used to virtually compose shots and preview how the scene will look when rendered.
Pressing :kbd:`Numpad0` will show the scene as viewed from the currently active camera.
In this view you can also set the *Render Border* which defines the portion of the camera view to be rendered.


.. figure:: /images/3D-interaction_Navigating_Camera-View-perspective-camera-render.jpg
   :width: 640px

   Camera view provides a preview for the final rendered image.


Render Border
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Render Border`
   | Hotkey:   :kbd:`Ctrl-B`

.. figure:: /images/3D-interaction_Navigating_Camera-View-render-border-toggle.jpg

   Render Border toggle


While in camera view, you can define a subregion to render by drawing out a rectangle within the cameras frame.
Your renders will now be limited to the part of scene visible within the render border.
This can be very useful for reducing render times for quick previews on an area of interest.

The border can be disabled by disabling the *Border* option in the *Dimensions* panel of the *Render*
context or by activating the option again and selecting *Render Border* larger than the camera view.

.. note:: Anti-Aliasing and blur options with borders

   Note that when Render Borders are activated,
   Full Sampling Anti-Aliasing will be disabled while Sampled Motion Blur will become available.

   :doc:`Read more about Anti-Aliasing </render/blender_render/antialiasing>`
   :doc:`Read more about Motion Blur </render/blender_render/motion_blur>`


.. figure:: /images/3D-interaction_Navigating_Camera-View-render-border.jpg
   :width: 640px

   Render border and associated render.


:doc:`Read more about Render Output options </render/output/output>`

:doc:`Read more about Cameras </render/camera/index>`
