..    TODO/Review: {{review|text=Options reviewed for v2.70; Video is for old version}}.

************
Introduction
************

A *Camera* is an object that provides a means of rendering images from Blender.
It defines which portions of a scene is visible in the rendered image.
By default a scene contains one camera. However, A scene can contain more than one camera,
but only one of them will be used at a time.
So you will only need to add a new camera if you are making cuts between them.
See :doc:`Animating Cameras </animation/techniques/camera>`.


Changing the Active Camera
==========================

.. admonition:: Reference
   :class: refbox

   | Mode:     Object Mode
   | Hotkey:   :kbd:`Ctrl-Numpad0`

.. figure:: /images/cameraview-activecamera.png

   Active camera (left one).


The *active* camera is the camera that is currently being used for rendering and camera view
:kbd:`Numpad0`.

Select the camera you would like to make active and press :kbd:`Ctrl-Numpad0`
(by doing so, you also switch the view to camera view). In order to render,
each scene **must** have an active camera.

The active camera can also be set in the *Scene* tab of the *Properties Editor*

The camera with the solid triangle on top is the active camera.

.. warning::

   The active camera, as well as the layers, can be specific to a given view,
   or global (locked) to the whole scene.
   See :doc:`Local Camera </editors/3dview/display/panels>`.


Render Border
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Render Border`
   | Hotkey:   :kbd:`Ctrl-B`

.. figure:: /images/editors_3dview_navigating_camera-view-render-border-toggle.png
   :align: right

   Render Border toggle.


While in camera view, you can define a subregion to render by drawing out a rectangle within the cameras frame.
Your renders will now be limited to the part of scene visible within the render border.
This can be very useful for reducing render times for quick previews on an area of interest.

The border can be disabled by disabling the *Border* option in the *Dimensions* panel
in the *Render* tab or by activating the option again.

.. container:: lead

   .. clear

.. note::

   When Render Border is activated, :doc:`Sampled Motion Blur </render/blender_render/settings/motion_blur>`
   will become available to view in the 3D View.

.. figure:: /images/editors_3dview_navigating_camera-view-render-border.jpg

   Render border and associated render.
