
**********************
Proxy / Timecode Panel
**********************

Once you've chosen the Proxy/Timecode parameters,
you need to use :menuselection:`Clip --> Proxy --> Rebuild Proxy and Timecode indices`
to generate the proxy clip and it will be available after Blender makes it.


Proxy
=====

.. figure:: /images/editors_movieclip_proxy.png
   :align: right

A proxy is a smaller image (faster to load) that stands in for the main image.
When you rebuild proxies Blender computes small images (like thumbnails)
for the big images and may take some time. After computing them, though,
editing functions like scrubbing and scrolling is much faster but gives a low-res result.
Make sure to disable proxies before final rendering.


Timecode
========

When you're working with footage directly copied from a camera without pre-processing it,
there might be bunch of artifacts, mostly due to seeking a given frame in sequence.
This happens because such footage usually doesn't have correct frame rate values in their headers. So,
for Blender to calculate the position of a needed frame in the stream works inaccurately and can give errant result.
There are two possible ways to avoid this:

- Preprocess your video with, say, mencoder to repair file header and insert correct keyframes.
- Use Proxy/Timecode option in Blender. 

Options
-------

:term:`Timecode`
   Timecode to use on the selected movie strip.

The following timecodes are supported:

- No TC in use- do not use any timecode
- Record Run
- Free Run
- Free Run (rec date)
- Record Run No Gaps

.. note::

   Record Run is the timecode which usually is best to use, but if the clip's file is totally damaged,
   'Record Run No Gaps' will be the only chance of getting acceptable result. 
