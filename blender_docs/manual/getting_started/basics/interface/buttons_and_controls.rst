
********************
Buttons and Controls
********************

Buttons and other controls can be found in almost every
:doc:`Window </editors/index>` of the Blender
interface. The different types of controls are described below.


Operation Buttons
=================

.. figure:: /images/Manual-Part-I-ConceptButtons2_25.jpg
   :align: right

   Operation button


These are buttons that perform an operation when clicked with :kbd:`LMB`.
They can be identified by their gray color in the default color scheme.


Toggle Buttons
==============

.. figure:: /images/Manual-Part-I-ConceptButtons1_1_25.jpg
   :align: right

   Toggle buttons


Toggle buttons are typically displayed as check boxes.
Clicking this type of button will toggle a state but will not perform any operation.


Toggle Drag
-----------

To change many toggle buttons at once, you can :kbd:`LMB` drag over multiple buttons,
This works for check-boxes, toggles in the outliner and layer buttons.

  .. note::

     For layer buttons (a type of toggle button) it is often useful to hold :kbd:`Shift` at the same time,
     to set or clear many layers at once.

Radio Buttons
=============

.. figure:: /images/Manual-Part-I-ConceptButtons1_25.jpg
   :align: right

   Radio buttons


Radio buttons are used to choose from a small selection of "mutually exclusive" options.


Number Buttons
==============

.. figure:: /images/Manual-Part-I-ConceptButtons3_25.jpg
   :align: right

   Number buttons


Number buttons can be identified by their labels,
which in most cases contains the name and a colon followed by a number.
Number buttons can be edited in several ways:


Incremental Steps
   To change the value in steps, click :kbd:`LMB` on the small triangles on the sides of the button.
Dragging
   To change the value in a wider range, hold down :kbd:`LMB` and drag the mouse to the left or right.
Text Input
   Press :kbd:`LMB` or :kbd:`Return` to edit the value as a text field.

   When entering values by hand, this button works like any other text button.

   - Press :kbd:`Return` to apply the change.
   - Press :kbd:`Esc` will cancel the value.


Multi-Value Editing
-------------------

.. figure:: /images/ui_multi_value_edit.png
   :align: right

   Multi-value-editing

It's often useful to edit multiple values at once (object scale or render resolution for example).

This can be done by clicking on the button and dragging vertically to include buttons above/below.

After the vertical motion you can drag from side to side, or release the :kbd:`LMB` to type in a value.


Expressions
-----------

You can also enter expressions such as ``3*2`` instead of ``6``. or ``5/10+3``.
Even constants like ``pi`` (3.142) or functions like ``sqrt(2)`` (square root of 2)
may be used.

*These expressions are evaluated by Python; for all available math expressions see:*
`math module reference <http://docs.python.org/py3k/library/math.html>`__


Units
-----

As well as expressions, you can mix units with numbers; for this to work,
units need to be set in the scene settings (Metric or Imperial).

Examples of valid units include:

- ``1cm``
- ``1m 3mm``
- ``1m, 3mm``
- ``2ft``
- ``3ft/0.5km``
- ``2.2mm + 5' / 3" - 2yards``

*Note that the commas are optional.
Also notice how you can mix between metric and imperial even though the display can only show one at a time.*


Menu Buttons
============

Blender uses a variety of different menus for accessing options, tools and selecting data-blocks.

Menu Shortcuts
--------------

- Arrow keys can be used to navigate.
- Each menu item has an underlined character which can be pressed to activate it.
- Number keys or num-pad can be used to access menu items.
  (Where :kbd:`1` is the first menu item, :kbd:`2` the second... etc).
- Press :kbd:`Return` to activate the selected manu item.
- Press :kbd:`Esc` to cancel the menu.


Header Menus
------------

Header menus are used to configure the editor and access tools.


Pop-Up Menus
------------

Pop-up menus are displayed as regular buttons, showing a range of options.
For example, the *Add Modifier* button will produce a menu with all of the available modifiers.


.. figure:: /images/Manual-Part-I-ConceptButtons4_menue_25.jpg
   :align: center

   Modifier options


Data-Block Menus
----------------

Menu buttons are used link data-blocks to each other.
data-blocks are items like *Meshes*, *Objects*, *Materials*, *Textures*, and so on.

These menu's may show a preview and allow you to search by name since its common all items wont fit in the list.

.. figure:: /images/Manual-Part-I-ConceptButtons4_1_25.jpg
   :align: right

   Datablock link menu with search


   - The first button (with an icon of the data-block type) opens up a menu to select an item
     by clicking :kbd:`LMB`.
   - The second button displays the name of the linked data-block which can be edited as a regular text field.
   - The "+" button duplicates the current data-block and applies it.
   - The "X" button clears the link.

Sometimes there is a list of applied data-blocks
(such as a list of materials used on the object). See *data-block link buttons* above.

.. figure:: /images/Manual-Part-I-ConceptButtons4_25.jpg
   :align: right

   Datablock link buttons

   - To select a datablock, click :kbd:`LMB` on it.
   - To add a new section (e.g. material, or particle system),
     click :kbd:`LMB` on the "+" button to the right of the list.
   - To remove a section, click :kbd:`LMB` on the "-" to the right of the list.

For details on the behavior of linking data see :doc:`data-block </data_system/datablocks>`.


Common Shortcuts
================

There are shortcuts shared between many button types.


While Hovering
   *When the cursor is held over a button*

   - :kbd:`Ctrl-C` - copy the value of the button.

     .. note::

        Pressing :kbd:`Ctrl-C` over any `Operation Buttons`_ copies their Python command into the clipboard
        which can be used in the Python console or in the text editor when writing scripts.


   - :kbd:`Ctrl-V` - paste the value of the button.
   - :kbd:`RMB` - open the context menu.
   - :kbd:`Backspace` - cleare the value (sets to zero or clears a text field).
   - :kbd:`Minus` - negate number values (multiply by ``-1.0``).
   - :kbd:`Ctrl-Wheel` - changes the value incremental steps.

     This also works for dropdowns and checkboxes buttons, it will cycle values.

   Animation:

   - :kbd:`I` - insert a keyframe.
   - :kbd:`D` - assign a driver.

While Dragging
   - :kbd:`Ctrl` - while dragging snap the discrete steps.
   - :kbd:`Shift` - gives finer control over the value.

While Editing Text
   - :kbd:`Home` - go to the start.
   - :kbd:`End` - go to the end.
   - :kbd:`Left`, :kbd:`Right` - move the cursor a single character.
   - :kbd:`Ctrl-Left`, :kbd:`Ctrl-Right` - move the cursor an entire word.
   - :kbd:`Backspace`, :kbd:`Delete` - delete characters.
   - :kbd:`Ctrl-Backspace`, :kbd:`Ctrl-Delete` - delete words.
   - Holding :kbd:`Shift` - while moving the cursor selects.
   - :kbd:`Ctrl-C` - copy the selected text.
   - :kbd:`Ctrl-V` - paste test at the cursor location.
   - :kbd:`Ctrl-A` - selects all text.

All Modes
   - :kbd:`Esc`, :kbd:`RMB` - cancels.
   - :kbd:`Return`, :kbd:`LMB` - confirms.

