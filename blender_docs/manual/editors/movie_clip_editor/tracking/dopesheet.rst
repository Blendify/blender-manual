##################
  Dope Sheet View
##################

Introduction
============

.. figure:: /images/editors_movieclip_dopesheet.png

   Dope Sheet View

The dope sheet view is used to visualize motion tracking data,
it implemented as separate view of the movie clip editor just like the
:doc:`Graph View </editors/movie_clip_editor/tracking/graph>`.
To support this in a nice way, you must toggle between modes
specified to a view in the whole area of the movie clip editor.
Hence, to display a curve or dope sheet view, the editor must be split into two,
with one switched to the curve or dope sheet view.

Usage
=====

.. figure:: /images/editors_movieclip_dopesheet_sort.png
   :align: right

   Sort Channels Order

Currently the dope sheet view is for visualization and does not have any tools to actually edit data.
It displays channels for selected tracks and each channel visualizes tracked
segments of tracks as dark bars and keyframed positions of tracks as small diamonds.

By default, this view sorts tracks in alphabetical order,
but here's list of all possible sort orders with the Sort Order option:

   - Name: sort selected tracks in alphabetical order based on their names.
   - Longest: sort tracks by longest tracked segment length.
   - Total: sort tracks by overall amount of frames.
   - Average Error: sort tracks by their average reprojection error after solving camera or object motion.

There's also an option called Invert to change the sort order from ascending to descending,
next to the sort order method option.
