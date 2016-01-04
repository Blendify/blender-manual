
************
Introduction
************

.. figure:: /images/VseAddMenu.jpg

   The Add Menu


The Add menu is the main menu you will be using to add content to the VSE. In general,
you load up your strips, create strips of special transition effects,
and then animate out your sequence by selecting "Do Sequence" and clicking the Anim button.
You can use the Add menu in the header,
or hover your mouse cursor over the Sequence workspace and press :kbd:`Shift-A`.

.. note:: Clips can be Huge

   A three minute quicktime .mov file can be 140Megs.
   Loading it, even over a high-speed LAN can take some time.
   Don't assume your computer or Blender has locked up if nothing happens for awhile.

First, let's add a clip:

- A movie clip in the Audio-Video Interleaved format (``*.avi`` file)
- A movie clip in the Apple QuickTime format (``*.mov``)
- A single still image to be repeated for a number of frames (``*.jpg``, ``*.png``, etc.)
- A numbered sequence of images (``*-0001.jpg``, ``*-0002.jpg``, ``*-0003.jpg``, etc, of any image format)
- One or more images from a directory
- A Scene in your ``.blend`` file.

Blender does not care which of these you use; you can freely mix and match any of them.
They all become a color-coded strip in the VSE:

- Blue is used for Avi/mov codec strips
- Grey is a single image that is repeated/copied
- Purple is an image sequences or group of images played one after the other
- Green is an Audio track

When you choose to add one of these,
the VSE window will switch to a file browser for you to select what you want to add.
Supported files have a little rectangle next to their name (blue for images, green for clips)
as a visual cue that you can pick them successfully:
