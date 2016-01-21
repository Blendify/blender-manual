
*****************
Installing on OSX
*****************

Check the :doc:`Installing Blender </getting_started/installing_blender/installing>`
page to find the minimum requirements and where to get Blender, if you haven't done so yet.

After downloading Blender for Mac-OSX, uncompress the file and drag ``blender.app`` onto the Applications folder.

.. tip::

   Because *Blender* doesn't use the standard OS menu system, you likely have a redundant menu-bar at the top.

   To remove it see `this post <http://www.macworld.com/article/55321/2007/02/hidemenubar.html>`__
   on Macworld, but beware that it is somewhat complex.
   As an alternative: simply make *Blender* full screen with the last button in the info window header
   (most times at the top of the screen layout).


.. _osx-performance:

Performance
===========

Often when doing CPU intensive tasks in Blender you might have poor performance.
This can especially be true when :doc:`Baking Physics Simulations </physics/baking>`.
This is due to a feature called OpenMP that Blender uses to do multiple calculations at once.
However, it is a known issue on OSX that this will not work properly.
This is due to how the domain splitting distributes threads to cells which are sometimes
not "filled" whereas calculations, resulting in lot of threads not giving any speedboost.

If you have such an "undersaturated" simulation, it helps a lot to just reduce the OpenMP threads
to a low number instead of letting OpenMP use all available cores.

As a solution there is a small applescript to tune the OpenMP threads used.
To use this open the ``set_simulation_threads`` applescript located in your Blender folder.
After opening the script follow this steps to change the amount of threads used:

1. Set the thread count you want to use (leave empty to let OpenMP get all available cores).

  .. figure:: /images/Thread_Setting.jpg

2. Press OK to set the new value, a message box will show you the new setting accepted.

  .. figure:: /images/Thread_Information.jpg

3. Close and reopen Blender to have the setting take effect.
4. Watch your baking progress or simulation framerates and perhaps repeat steps 1-3 to get the optimal value.
