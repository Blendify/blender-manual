
*********************************
Troubleshooting Graphics Hardware
*********************************

Blender makes use of OpenGL, which is typically hardware accelerated.

This means issues with the graphics card hardware and drivers can impact on Blender's behavior.
This page lists some known issues using Blender on different graphics hardware and how to trouble-shoot them.


Performance
===========

When the entire interface very slow and unresponsive *(even with the default startup scene)*.
This is likely a problem with the OpenGL configuration.

Unfortunately in this situation you may have to do some of your own tests to find the cause,
here are some common causes and possible solutions.

Upgrade your OpenGL Driver
   If you're experiencing any strange graphics problems with Blender,
   its always good to double check you're using the latest drivers.
Disable Anti-Aliasing (:term:`FSAA, Multi-Sampling<FSAA>`)
   See :ref:`Invalid Selection, Disable Anti-Aliasing <troubleshooting-3dview-invalid_selection>`.
Change the *Window Draw Method*
   This is set in the :ref:`system preferences <prefs-system-window_draw>`.
   Its selected automatically, however when experiencing problems its worth
   checking if changing this resolves interface drawing problems.
