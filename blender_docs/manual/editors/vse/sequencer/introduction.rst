
************
Introduction
************

Header
======

.. figure:: /images/editors_sequencer_introduction_header.png

   Video Sequencer Header.


Marker Menu
-----------

The Marker menu allows you to add markers in the VSE.
Markers are shared across animation editors. See :doc:`Markers </animation/markers>`


Main View
=========

Channels
--------

The sequencer workspace is horizontally striped into channels and each video strip will go in
a horizontal channel. Each channel is numbered consecutively on the Y axis, starting from zero.
The X axis represents time.

.. note::

   The first channel 0 is unusable as a place to put strips.
   This is because it is used by the :doc:`Sequencer Display </editors/vse/preview/introduction>`
   to show a composite of all strips above channel 0.

The channels are stacked bottom to top (the lowest channel forms the background and the highest the foreground).

.. note::

   By default the Sequencer is enabled however, it can be disabled
   in the :doc:`Post Processing Panel </render/post_process/panel>`.
