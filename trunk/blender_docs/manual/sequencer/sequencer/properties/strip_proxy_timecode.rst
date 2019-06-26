.. _bpy.types.SequenceProxy:

****************************
Strip Proxy & Timecode Panel
****************************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Sidebar region --> Proxy & Timecode --> Strip Proxy & Timecode`

.. figure:: /images/editors_vse_sequencer_properties_proxy-timecode_panel.png
   :align: right


Proxy
=====

A proxy is using optimized video codec and lower resolution version (faster to load)
that stands in for the main image or video.
When proxies are built, editing functions like scrubbing and scrolling and compositing is much
faster but gives lower resolution and slightly imprecise result.

Once you have chosen the Proxy/Timecode parameters,
you need to select all strips for which you want proxies to be built.
Then use :menuselection:`Strip --> Rebuild Proxy and Timecode indices`,
or button in :doc:`Proxy Settings </sequencer/sequencer/properties/proxy_settings>`.
Once all proxies are built, they will be ready to use.

In order to use proxies, you have to select matching :ref:`Proxy Render Size <proxy-render-size>`
in Sequencer preview Sidebar panel.

Proxy Custom Directory
   By default, all generated proxy images are storing to
   the ``<path of original footage>/BL_proxy/<clip name>`` folder,
   but this location can be set by hand using this option.
Proxy Custom File
   Allows you to use pre-existing proxies.
Size
   Buttons to control how big the proxies are.
   The available options are 25%, 50%, 75%, 100 percent of original strip size.
Overwrite
   Saves over any existing proxies in the proxy storage directory.
Quality
   Defines the quality of the JPEG images used for proxies.
Timecode Index
   See `Timecode`_.


Timecode
========

When you are working with footage directly copied from a camera without pre-processing it,
there might be bunch of artifacts, mostly due to seeking a given frame in sequence.
This happens because such footage usually does not have correct frame rate values in their headers.
So, for Blender to calculate the position of a needed frame in the stream works inaccurately and
can give errant result. There are two possible ways to avoid this:

#. Preprocess your video with e.g. MEncoder to repair the file header and insert the correct keyframes.
#. Use Proxy/Timecode option in Blender.

The following timecodes are supported:

- No TC in use -- do not use any timecode
- Record Run
- Free Run
- Free Run (rec date)
- Record Run No Gaps

.. note::

   Record Run is the timecode which usually is best to use, but if the clip's file is totally damaged,
   *Record Run No Gaps* will be the only chance of getting acceptable result.