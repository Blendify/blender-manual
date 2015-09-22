
********
Metadata
********

The *Metadata* panel includes options for writing meta-data into render output.

Stamping can include the following data:

Time
   Include the current scene time and render frame as ``HH:MM:SS.FF``
Date
   Include the current date and time.
RenderTime
   Include the render time in the stamp image.
Frame
   Include the frame number.
Scene
   Include the name of the active scene.
Camera
   Include the name of the active camera.
Lens
   Include the name of the active camera's lens value.
Filename
   Include the filename of the .blend file.
Marker
   Include the name of the last marker.
Seq. Strip
   Include the name of the foreground sequence strip.
Note
   Include a custom note.


.. note::
   Only some image formats support metadata:
   See :doc:`image formats </data_system/files/image_formats>`.


Stamp Output
   You can optionally stamp this into the image its self (adding text over the rendered image)
   which can be useful for test renders and animation previews.

   Stamp Text Color
      Set the color and alpha of the stamp text.
   Stamp Background
      Set the color and alpha of the color behind the text.
   Font Size
      Set the size of the text.


.. hint::

   It can be useful to use the *Note* field if you're setting up a render-farm.

   Since you can script any information you like into it,
   such as an identifier for the render-node or the job-number.

   For details on stamping arbitrary values,
   see: `this page <http://blender.stackexchange.com/questions/26643>`__

