
**********************
Proxy / Timecode Panel
**********************

Once you've chosen the Proxy/Timecode parameters,
you need to use :menuselection:`Strip --> Rebuild Proxy and Timecode indices`
to generate the proxy clip and it will be available after Blender makes it.


Proxy
=====

.. figure:: /images/editors_sequencer_timecode.png
   :align: right

A proxy is a smaller image (faster to load) that stands in for the main image.
When you Rebuild proxy Blender computes small images (like thumbnails)
for the big images and may take some time. After computing them, though, editing functions
like scrubbing and scrolling and compositing functions like cross using these proxies is much
faster but gives a low-res result. Disable proxies before final rendering.

In order to actually use the proxies, the proper Proxy Render Size dropdown value must
be selected in the Properties panel of the Sequencer View (where the edit plays back).

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
