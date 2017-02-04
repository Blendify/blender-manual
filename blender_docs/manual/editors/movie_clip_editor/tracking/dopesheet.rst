
***************
Dope Sheet View
***************

Introduction
============

.. figure:: /images/editors_movie-clip_dopesheet.png

   Dope Sheet View.

The dope sheet view is used to visualize motion tracking data,
it implemented as separate view of the movie clip editor just like the
:doc:`Graph View </editors/movie_clip_editor/tracking/graph>`.
To support this in a nice way, you must toggle between modes
specified to a view in the whole area of the movie clip editor.
Hence, to display a curve or dope sheet view, the editor must be split into two,
with one switched to the curve or dope sheet view.


Header
=======

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

.. figure:: /images/editors_movie-clip_dopesheet_sort.png
   :align: right

   Sort Channels Order.

Currently the dope sheet view is for visualization and does not have any tools to actually edit data.
It displays channels for selected tracks and each channel visualizes tracked
segments of tracks as dark bars and keyframed positions of tracks as small diamonds.
