
***************
Dope Sheet View
***************

.. figure:: /images/editors_movie-clip_dopesheet.png

   Dope Sheet View.

The dope sheet view is used to visualize motion tracking data,
it implemented as separate view of the movie clip editor just like the
:doc:`Graph View </editors/movie_clip_editor/tracking/graph>`.


Header
=======

.. figure:: /images/editors_movie-clip_dopesheet_sort.png
   :align: right

   Sort Channels Order.

Show
   Only selected (mouse cursor icon)
      ToDo.
   Hidden (ghost icon)
      ToDo.
Sort Method
   Sort order of the tracks.

   Name
      Sort selected tracks in alphabetical order based on their names.
   Longest
      Sort tracks by longest tracked segment length.
   Total
      Sort tracks by overall amount of frames.
   Average Error
      Sort tracks by their average reprojection error after solving camera or object motion.
Invert
   To change the sort order from ascending to descending.


Usage
=====

Currently the dope sheet view is for visualization and does not have any tools to actually edit data.
It displays channels for selected tracks and each channel visualizes tracked
segments of tracks as dark bars and keyframed positions of tracks as small diamonds.

The background is highlighted depending on the number of tracks in a frame.
This means that if for a frame (or sequence of frames) there are less than eight tracks, the background will turn red;
if there are from eight to sixteen tracks, the background will be yellow.

This is only a visual feedback, which doesn't mean that the camera motion won't reconstruct with less than 8 tracks.
It only means that you should pay attention to those frames and check if
all possible good feature points are tracked there. Remember, if there are no good feature points in the frame and
there are less than 16 tracks in the frame, it doesn't mean the solution won't be accurate.
Rather, adding more tracks on bad feature points will reduce the accuracy of solution.
