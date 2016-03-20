
****************
Edit Strip Panel
****************

Name
   You can name or rename your strips here.
Type
   Displays the type of strip selected.
Blend Mode
   By default, a strip Replaces the output image of any lower-level strips. However,
   many other blending modes are available based on the strip type. For example,
   Alpha-Over automatically overlays the image on top of a lower level strip.
   Autoblending modes remove the need for separate effect strips.
   Blend percent controls how much of an effect the strip exerts, even over time.

Opacity
   Set the opacity of the strip.
Mute
   Hides the strip so that it does not participate in the final image computation
Lock
   Prevents the strip from being moved.
Channel
   Changes the channel number, or row, of the strip.
Start Frame
   Changes the starting frame number of the strip, which is the same as grabbing and moving the strip.
   Tip when you add a strip, I like to just drop it and then use this field to place it at the frame I want,
   rather that trying to drag and drop in exactly the right place.
Length
   Specify the number of frames to use for the strip.

Use the Convert to Premul button if a strip has an Alpha (transparency) channel.
Use FilterY if the strip is from broadcast video and has even or odd interlacing
fields. Enhance the color saturation through the Mul tiply field.
Play a strip backwards by enabling Reverse Frames.
Tell Blender to display every nth frame by entering a Strobe value. Finally,
when using MPEG video (VCD, DVD, XVid, DivX, ...),
an image is built up over the course of a few frames; use the Preseek field to
tell Blender to look backward and compose the image based on the n previous frames (e.g.
15 for Mpeg2 DVD).
