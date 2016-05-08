
***************************
Troubleshooting the 3D View
***************************

.. admonition:: TODO
   :class: error

   See: https://developer.blender.org/T43810


Drawing
=======

Depth Buffer Glitches
---------------------

TODO, see: https://blender.stackexchange.com/questions/1385/shadows-along-edges-of-mesh-in-3d-view

Objects Invisible in Camera View
--------------------------------

If you have a large scene, viewing it through Camera View may not display all of the Objects in the scene.
One possibility may be that the :ref:`clipping distance <camera-clipping>` of the camera is too low.
The camera will only show objects that fall within the clipping range.


Performance
===========

Slow Drawing
------------

There are a couple of reasons why you may be experiencing a slow viewport.

Old Hardware
   Sometimes your hardware, mainly your graphics card, may be too slow to keep up with your model.
Upgrade Graphics Driver
   In some cases, slow selection is resolved by using updated drivers.

Slow Selection
--------------

Blender uses OpenGL drawing for selection, some graphics card drivers are slow at performing this operation.

This becomes especially problematic on dense geometry.

Possible Solutions:

OpenGL Occlusion Queries (User Preference)
   See :menuselection:`User Preferences --> System --> Selection`

   This option defaults *Automatic*, try setting this to *OpenGL Occlusion Queries*,
   since there is a significant performance difference under some configurations.
Upgrade Graphics Driver
   In some cases, slow selection is resolved by using updated drivers.
   *It's generally good to use recent drivers when using 3D software.*
Select Centers (Workaround)
   In *Object Mode*, holding :kbd:`Ctrl` while selecting uses the object center point.
   While this can be useful on its own, its has the side-effect of not relying on OpenGL selection.
Change Draw Modes (Workaround)
   Using *Wireframe* or even *Bounding Box* draw modes can be used to more quickly select different objects.

.. note::

   Obviously, the workarounds listed here aren't long term solutions,
   but it's handy to know if you're stuck using a system with poor OpenGL support.

   Ultimately, if none of these options work out it may be worth upgrading your hardware.


Navigation
==========

Lost in Space
-------------

When navigating your scene, you may accidentally navigate away from your scene
and find yourself with a blank viewport

TODO.

Invisible Limit Zooming In
--------------------------

TODO, see: https://blender.stackexchange.com/questions/644/why-does-the-zoom-sometimes-stop-at-a-point


Tools
=====

.. _troubleshooting-3dview-invalid_selection:

Invalid Selection
-----------------

There are times when selection fails under some configurations,
often this is noticeable in mesh *Edit Mode*,
selecting vertices/edges/faces where random elements are selected.

Internally Blender uses :term:`OpenGL` for selection,
so the graphics card driver relies on giving correct results.

Possible Solutions:

Disable Anti-Aliasing (:term:`FSAA, Multi-Sampling<FSAA>`)
   This is by far the most common cause of selection issues.

   There are known problems with some graphics cards when using FSAA/multi-sampling.

   You can disable this option by:

   - Turning FSAA/multi-sampling off in your graphics card driver options.
   - Turning *Multi-Sampling* off in the :ref:`system preferences <prefs-system-multi_sampling>`.
Change Anti-Aliasing Sample Settings
   Depending on your OpenGL configuration,
   some specific sample settings may work while others fail.

   Unfortunately finding working configuration involves trial & error testing.
Upgrade Graphics Driver
   As with any OpenGL related issues, using recent drivers can resolve problems.

   However, it should be noted that this is a fairly common problem and remains unresolved with many drivers.
