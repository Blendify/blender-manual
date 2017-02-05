.. split common version with masking?

*************
Display Panel
*************

This panel contains display settings related on editor itself.

Channels
   The R, G, B toggles control the color channels used for frame preview.
   It is needed because the tracking algorithm works with gray-scale images and it is not
   always obvious to see which channels disabled will increase contrast of feature points and reduce noise.
Grayscale Preview (B/W)
   Shows the whole frame gray scale.
Mute (eye icon) :kbd:`M`
   Changes displaying on movie frame itself with black square,
   It helps to find tracks which are tracked inaccurately or which were not tracked at all.
Render Undistorted
   ToDo.
Lock to Selection :kbd:`L`
   Makes the editor display selected tracks at the same screen position
   along the whole footage during playback or tracking.
   This option helps to control the tracking process and
   stop it when the track is starting to slide off or when it jumped.
Display Stabilization
   This option makes the displayed frame be affected by the 2D stabilization settings
   (available in reconstruction mode only).
   It is only a preview option, which does not actually change the footage itself.
Grid
   Displays a grid which is originally orthographic, but is affected by the
   distortion model (available in distortion mode only). This grid can be used for manual calibration --
   distorted lines of grids are equal to straight lines in the footage.
Calibration
   Applies the distortion model for grease pencil strokes (available in distortion mode only).
   This option also helps to perform manual calibration.
   A more detailed description of this process will be added later.
Display Aspect Ratio
   Changes the aspect ratio for displaying only. It does not affect the tracking or solving process.


Marker Display
==============

Pattern
   Can be used to disable displaying of rectangles which correspond to pattern areas of tracks.
   In some cases it helps
   to make the clip view cleaner to check how good tracking is.
Search :kbd:`Alt-S`
   Can be used to disable displaying of rectangles which correspond to search areas of tracks.
   In some cases it helps to make the clip view cleaner to check how good tracking is.
   Only search areas for selected tracks will be displayed.
Path
   And *Length* control displaying of the paths of tracks. The ways tracks are moving can be visible looking
   at only one frame. It helps to determine if a track jumps from its position or not.
Disabled :kbd:`Alt-D`
   Makes it possible to hide all tracks which are disabled on the current frame.
   This helps to make view more clear, to see if tracking is happening accurately enough.
Info
   Displays information such as track name and status of the track
   (if it is keyframed, disabled, tracked or estimated).
   Names and status for selected tracks are displayed.
3D Markers
   Makes sense after solving the movie clip,
   and it works in the following way: the solved position of each track gets
   projected back to the movie clip and displayed as a small point. The color of the point depends on the distance
   between the projected coordinate and the original coordinate: if they are close enough, the point is green,
   otherwise it will be red. This helps to find tracks which were not solved nicely and need to be tweaked.
Thin
   The way in which markers are displayed compact (black outline and yellow foreground color)
   makes tracks visible on all kind of footage (both dark and light).
   But sometimes it can be annoying and this option will make the marker display
   more compactly -- the outline is replaced by dashed black lines drawn on top of the foreground,
   so that marker areas are only 1px thick.
