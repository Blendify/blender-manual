
********************
Cache Settings Panel
********************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Sidebar region --> Proxy & Timecode --> Cache Settings`


The Cache is used to save frames in memory for preview,
so they can be later displayed much faster than rendered from scratch.
Cache capacity can be set in :doc:`System tab </editors/preferences/system>` of the Preferences.

In this panel you can set up types of images that will be cached for all strips.

Cache Raw
   Cache raw images read from disk, for faster tweaking of strip parameters at the cost of memory usage.
Cache Preprocessed
   Cache preprocessed images, for faster tweaking of effects at the cost of memory usage.
Cache Composite
   Cache intermediate composited images, for faster tweaking of stacked strips at the cost of memory usage.
Cache Final
   Cache final image for each frame.
Recycle Up To Cost
   Only frames with cost lower than this value will be recycled.

   Each stored image has a cost assigned.
   Cost is calculated as ratio of time spent on rendering to maximum possible time to keep up with chosen frame rate.
   The higher the cost, the harder it is to render image.

   Maximum image cost is limited to arbitrary value of 10.
