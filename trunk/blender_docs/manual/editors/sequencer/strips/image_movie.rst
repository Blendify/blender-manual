
**********************
Image and Movie Strips
**********************

When adding a Movie or Movie+Audio :kbd:`LMB` to put the name of the file into
the text box at the top; this selects a **single** file (like a movie)

In the case of (numbered) image **sequences**, you have a choice:

Directory
   :kbd:`RMB` right-click on a directory name,
   and all files in that directory will be brought in as part of the image,
   in sort order, one image per frame
Range
   Navigate into the directory and right-click and drag over a range of names to highlight multiple files.
   You can page down and continue right-click-dragging to add more to the selection
Batch
   Shift-right-click selected non-related stills for batch processing; each image will be one frame,
   in sort order, and can be a mix of file types (jpg, png, exr, etc.)
All
   Press :kbd:`A` to select/deselect All files in the directory.

When you click the *Select <whatever>* button,
the window pane will switch back to VSE, and the strip will be rubber-banded to your mouse.
You cannot load multiple movies at the same time by right-clicking them;
no movies load if you right click them. Right-clicking only works for images.

In order to add items to the VSE, left-click for movies, left-click for single images,
or right-click and drag for image sequences. Move your mouse to the frame/time and stripe you want,
and click to break the rubberband and drop the strip in place (in a channel and starting at a frame).

When you add an image, Blender makes it into a 50-frame strip,
which means that image will be in your video for two seconds (at 25 fps - PAL).
Aside from re-positioning it,
you will want to scale it by :kbd:`RMB` -clicking on either the start or end arrow,
and dragging left or right. As you move, the frame number updates to say where the arrow is.
Click :kbd:`LMB` to validate, or :kbd:`RMB` to cancel the modification.

.. tip:: Dealing with Different Sizes

   Dealing with different sized images and different sized outputs is tricky. Think like a pixel.
   If you have a mis-match between the size of the input image and the render output size,
   the VSE does try to auto-scale the image to fit it entirely in the output.
   This may result in clipping. If you do not want that, use Crop and/or Offset in the Input
   panel to move and select a region of the image within the output. When you use Crop or Offset,
   the auto-scaling will be disabled and you can manually re-scale by adding the Transform
   effect.


.. figure:: /images/VSE-sample.jpg

If you scroll up the workspace, you will see an information channel
(at vertical location channel 0) that gives you some helpful hints about the active strip.
The example above shows a color strip from frames 1 to 25, then a mov file,
and then an image strip. The info channel shows handy information about the image strip,
whose name has been scrunched in the strip display,
but is clearly spelled out in the information strip.
