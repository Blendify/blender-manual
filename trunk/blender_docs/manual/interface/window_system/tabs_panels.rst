
*************
Tabs & Panels
*************

Tabs
====

.. figure:: /images/interface_tabs.png
   :align: right

   Tools tab (selected), Create, etc.

Tabs are overlapping sections in the user-interface.
The Tabs header can be vertical (Tool Shelf) and
horizontal (Properties Editor, User Preferences).

.. figure:: /images/bge-physics-propertiestabs.jpg

   Horizontal tab header.


Pinning
-------

Often it is desirable to view panels from different tabs at the same time.
This has been solved by making panels pinnable.

A pinned panel remains visible regardless of which tab has been selected.
You can pin a panel by :kbd:`Shift` clicking its header,
or by right clicking on the header and choosing *Pin*.

In the image shown to the right, 
is an example of the *Mesh Options* pinned in the tools tab.


.. _ui-panels:

Panels
======

.. figure:: /images/interface_panels.png
   :align: right

   Tool Self panels.

   Orange: Panel Headers.

The smallest organizational unit in the user interface is a panel.
Panels can be collapsed to hide its contents.
They are used in the *Properties Editor*, but also
for example in the *Tool Shelf* and the *Properties region*.

In the image on the right there are three panels: *Transform*, *Edit* and *History*.
The *Edit* panel is expanded and the other two panels are collapsed.


Collapsing and expanding
------------------------

A triangle on the left of the title shows the expanded (▼) and collapsed (►) state of the panel.


- A click with the :kbd:`LMB` on the title area of a panel expands or collapses it.
- A :kbd:`LMB` drag motion over the title area will expand or collapse many at once.
- A :kbd:`Ctrl-LMB` click on the title area of a specific panel will collapse
  all other panels and make this the only expanded one.


Position
--------

You can change the position of a panel within its region by clicking and
dragging it with the :kbd:`LMB` on the grip widget (\:\:\:\:) in the upper right corner.


Zoom
----

The zoom factor of a whole region with panels can be changed by
:kbd:`Ctrl-MMB` clicking and moving the mouse anywhere within that region
or use the :kbd:`NumpadPlus` and :kbd:`NumpadMinus` to zoom in and out the contents.
Pressing :kbd:`Home` (Show All) will reset the zooming at the screen/panel focused by the mouse pointer.


Alignment
---------

The alignment of the panels in the *Properties Editor* can be changed
between vertical and horizontal. To do this click with :kbd:`RMB` somewhere
within the main region of the *Properties Editor* and choose either
*Horizontal* or *Vertical* from the appearing menu. Keep in mind though that
the panels are optimized for vertical alignment.
