
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

TODO, see: http://blender.stackexchange.com/questions/1385


Performance
===========


Slow Drawing
------------

TODO.


Slow Selection
--------------

Blender uses OpenGL drawing for selection,
some graphics card drivers are slow at performing this operation *(since its not in common used for games)*.

This becomes especially problematic on dense geometry.

Possible Solutions:

OpenGL Occlusion Queries (User Preference)
   See :menuselection:`User Preferences --> System --> Selection`

   This option defaults *Automatic*, try setting this to *OpenGL Occlusion Queries*,
   since there is a significant performance difference under some configurations.
OpenGL :term:`Vertex Buffer Objects <VBO>`
   See :menuselection:`User Preferences --> System --> VBOs`

   This uses a more optimal drawing method which may speed up selection.
Upgrade OpenGL Drivers
   In some cases slow selection is resolved by using updated drivers.

   *It's generally good to use recent drivers when using 3D software.*
Select Centers (Workaround)
   In *Object Mode*, holding :kbd:`Ctrl` while selecting uses the object center point.
   While this can be useful on its own, its has the side-effect of not relying on OpenGL selection.
Change Draw Modes (Workaround)
   Using *Wireframe* or even *Bounding Box* draw modes can used to more quickly select different objects.

.. note::

   Obviously the workarounds listed here aren't long term solutions,
   but its handy to know if you're stuck using a system with poor OpenGL support.

   Ultimately, if none of these options work out it may be worth upgrading your hardware.



Navigation
==========


Lost in Space
-------------

When navigating your scene, you may accidentally navigate away from your scene
and find yourself with a blank view-port 

TODO.


Invisible Limit Zooming In
--------------------------

TODO, see: http://blender.stackexchange.com/questions/644

