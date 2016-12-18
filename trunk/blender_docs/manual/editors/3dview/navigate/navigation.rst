
**********
Navigation
**********

Navigating in the 3D space is done with the use of both mouse movement and keyboard shortcuts.

Orbit :kbd:`MMB`
   Rotate the view around the point of interest.
Pan :kbd:`Shift-MMB`
   Move the view up, down, left and right.
Zoom :kbd:`Ctrl-MMB`, :kbd:`Wheel`
   Move the camera forwards and backwards.

To be able to work in the three dimensional space that Blender uses,
you must be able to change your viewpoint as well as the viewing direction of the scene.
While we will describe the *3D View* editor, most of the other windows have similar functions.
For example, it is possible to translate and zoom a Properties editor and its panels.

.. tip:: Mouse Buttons and Numpad

   If you have a mouse with less than three buttons or a keyboard without numpad,
   see the :doc:`Keyboard and Mouse </getting_started/installing/configuration/hardware>`
   page of the manual to learn how to use them with Blender.


Rotating
========

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Navigation`
   | Hotkey:   :kbd:`MMB`, :kbd:`Numpad2`, :kbd:`Numpad4`, :kbd:`Numpad6`,
      :kbd:`Numpad8`, :kbd:`Ctrl-Alt-Wheel`

Blender provides four default viewing directions: *Side*, *Front*, *Top* and *Camera* view.
Blender uses a right-angled "Cartesian" coordinate system with the Z axis pointing upwards.
"Side" corresponds to looking along the X axis, in the negative direction,
"Front" along the Y axis, and "top" along the Z axis.
The *Camera* view shows the current scene as seen from the camera view point.


Options
-------

You can select the viewing direction for a 3D View with the *View* menu entries,
or by pressing the hotkeys :kbd:`Numpad3` for "side", :kbd:`Numpad1` for "front",
:kbd:`Numpad7` for "top". You can select the opposite directions if you hold
:kbd:`Ctrl` while using the same numpad shortcuts.
Finally :kbd:`Numpad0` gives access to the "camera" viewpoint.

Apart from these four default directions, the view can be rotated to any angle you wish.
Click and drag :kbd:`MMB` on the viewport's area.
If you start in the middle of the area and move up and down or left and right,
the view is rotated around the middle of the area. Alternatively,
if the *Emulate 3 button mouse* option is select in the *User Preferences* you can press and hold
:kbd:`Alt` while dragging :kbd:`LMB` in the viewport's area.

To change the viewing angle in discrete steps, use :kbd:`Numpad8` and :kbd:`Numpad2`
(which correspond to vertical :kbd:`MMB` dragging, from any viewpoint),
or use :kbd:`Numpad4` and :kbd:`Numpad6` (or :kbd:`Ctrl-Alt-Wheel`)
to rotate the scene around the Z global axis from your current point of view.

.. note:: Hotkeys

   Remember that most hotkeys affect the **active** area (the one that has focus),
   so check that the mouse cursor is in the area you want to work in before your use the hotkeys.

.. seealso::

   - :ref:`Orbit Style Preference <prefs-input-orbit-style>`
   - :ref:`Auto-Perspective Preference <prefs-interface-auto-perspective>`


Panning
=======

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Navigation`
   | Hotkey:   :kbd:`Shift-MMB` , :kbd:`Ctrl-Numpad2`, :kbd:`Ctrl-Numpad4`,
      :kbd:`Ctrl-Numpad6`, :kbd:`Ctrl-Numpad8`, :kbd:`Shift-Alt-LMB`

To pan the view, hold down :kbd:`Shift` and drag :kbd:`MMB` in the 3D View.
For discrete steps, use the hotkeys :kbd:`Ctrl-Numpad8`, :kbd:`Ctrl-Numpad2`,
:kbd:`Ctrl-Numpad4` and :kbd:`Ctrl-Numpad6` as with rotating (note:
you can replace :kbd:`Ctrl` by :kbd:`Shift`).
For those without a middle mouse button,
you can hold :kbd:`Shift-Alt` while dragging with :kbd:`LMB`.


Zooming
=======

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Navigation`
   | Hotkey:   :kbd:`Ctrl-MMB`, :kbd:`Wheel`, :kbd:`NumpadPlus`, :kbd:`NumpadMinus`

You can zoom in and out by holding down :kbd:`Ctrl` and dragging :kbd:`MMB`.
The hotkeys are :kbd:`NumpadPlus` and :kbd:`NumpadMinus`.
The :menuselection:`View --> Navigation` sub-menu holds these functions too as well.
Refer to the 3D View's *View* menu image above for more information.

If you have a wheel mouse, you can perform all of the actions in the 3D View that you
would do with :kbd:`NumpadPlus` and :kbd:`NumpadMinus` by rotating the :kbd:`Wheel`.
To zoom a Properties editor,
hold :kbd:`Ctrl-MMB` and move your mouse up and down.

.. hint:: If You Get Lost

   If you get lost in 3D space, which is not uncommon, two hotkeys will help you:
   :kbd:`Home` changes the view so that you can see all objects :menuselection:`View --> View All`,
   while :kbd:`NumpadPeriod` zooms the view to the currently selected objects when in perspective mode
   :menuselection:`View --> View Selected`.


.. _3dview-nav-zoom-border:

Zoom Border
-----------

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Menu:     :menuselection:`View --> Zoom Border`
   | Hotkey:   :kbd:`Shift-B`


The *Zoom Border* tool allows you to specify a rectangular region and zoom in so
that the region fills the 3D View.

You can access this through the *View* menu, or the shortcut :kbd:`Shift-B`,
then :kbd:`LMB` click and drag a rectangle to zoom into.

Alternatively you can zoom out using the :kbd:`MMB`.


.. _3dview-nav-zoom-dolly:

Dolly Zoom
----------

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Hotkey:   :kbd:`Ctrl-Shift-MMB`


In most cases its sufficient to zoom the view to get a closer look at something,
however, you may notice that at a certain point you cannot zoom any closer.

This is because Blender stores a view-point thats used for orbiting and zooming.
It works well in many cases, but sometimes you want to move the view-point to a different place.
This is what Dolly supports, allowing you to transport the view from one place to another.

You can dolly back and fourth by holding down :kbd:`Ctrl-Shift` and dragging
:kbd:`MMB`.
