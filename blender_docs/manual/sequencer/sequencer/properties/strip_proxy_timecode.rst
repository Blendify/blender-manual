.. _bpy.types.SequenceProxy:

****************************
Strip Proxy & Timecode Panel
****************************

.. admonition:: Reference
   :class: refbox

   :Panel:     :menuselection:`Sidebar region --> Proxy & Timecode --> Strip Proxy & Timecode`

.. TODO2.8(sequencer): update image.
.. figure:: /images/editors_vse_sequencer_properties_proxy-timecode_panel.png
   :align: right


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
