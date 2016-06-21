
********************
Buttons and Controls
********************

Buttons and other controls can be found in every Editor of the Blender interface. 
The different types of controls are described below.


Operation Buttons
=================

.. figure:: /images/interface_button.jpg
   :align: right

   Operation button.


These are buttons that perform an operation when clicked with :kbd:`LMB`.
They can be identified by their gray color in the default color scheme.


Toggle Buttons
==============

.. figure:: /images/interface_checkbox.jpg
   :align: right

   Toggle Buttons.


Toggle buttons are typically displayed as check boxes.
Clicking this type of button will toggle a state but will not perform any operation.


Toggle Drag
-----------

To change many toggle buttons at once, you can :kbd:`LMB` drag over multiple buttons,
This works for checkboxes, toggles in the Outliner and layer buttons.

  .. note::

     For layer buttons (a type of toggle button) it is often useful to hold :kbd:`Shift` at the same time,
     to set or clear many layers at once.


Radio Buttons
=============

.. figure:: /images/interface_radioButton.jpg
   :align: right

   Radio Buttons.


Radio buttons are used to choose from a small selection of "mutually exclusive" options.


Number Buttons
==============

.. figure:: /images/interface_numberButton.jpg
   :align: right

   Number buttons.


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

   Multi-value-editing.

It's often useful to edit multiple values at once (object scale or render resolution for example).

This can be done by clicking on the button and dragging vertically to include buttons above/below.

After the vertical motion you can drag from side to side, or release the :kbd:`LMB` to type in a value.


Expressions
-----------

You can also enter expressions such as ``3*2`` instead of ``6``. or ``5/10+3``.
Even constants like ``pi`` (3.142) or functions like ``sqrt(2)`` (square root of 2)
may be used.

.. seealso:: 

   These expressions are evaluated by Python; for all available math expressions see:
   `math module reference <https://docs.python.org/3/library/math.html>`__


Expressions as Drivers
^^^^^^^^^^^^^^^^^^^^^^

You may want your expression to be re-evaluated after it's entered.
Blender supports this using :doc:`Drivers </animation/drivers>` (a feature of the animation system).

Expression beginning with ``#``, have a special use.
Instead of evaluating the value and discarding the expression,
a driver is added to the property with the expression entered.

The expression ``#frame`` is a quick way to access map a value to the current frame,
but more complex expressions are also supported ``#fmod(frame, 24) / 24`` for example.

This is simply a convenient shortcut to add drivers which can also be added via the :kbd:`RMB` menu.


Units
-----

As well as expressions, you can mix units with numbers; for this to work,
units need to be set in the scene settings (Metric or Imperial).

Examples of valid units include:


.. hlist::
   :columns: 2

   - ``1cm``
   - ``1m 3mm``
   - ``1m, 3mm``
   - ``2ft``
   - ``3ft/0.5km``
   - ``2.2mm + 5' / 3" - 2yards``

.. note:: 

   That the commas are optional.
   Notice how you can mix between metric and imperial even though 
   the display can only show one at a time.


Unit Names
^^^^^^^^^^

.. note to authors, normally we would avoid documenting long lists of values
   however, this is not displayed anywhere else.

Unit names have can be used with both long and short forms,
here are listed recognized unit names you can use.

Plurals of the names are recognized too, so ``meter`` and ``meters`` can both be used.

.. list-table:: Imperial Units
   :header-rows: 1
   :stub-columns: 1

   * - Full Name
     - Short Name(s)
     - Scale of a Meter
   * - thou
     - ``mil``
     - 0.0000254
   * - inch
     - ``"``, ``in``
     - 0.0254
   * - foot, feet
     - ``'``, ``ft``
     - 0.3048
   * - yard
     - ``yd``
     - 0.9144
   * - chain
     - ``ch``
     - 20.1168
   * - furlong
     - ``fur``
     - 201.168
   * - mile
     - ``mi``, ``m``
     - 1609.344

.. list-table:: Metric Units
   :header-rows: 1
   :stub-columns: 1

   * - Full Name
     - Short Name(s)
     - Scale of a Meter
   * - micrometer
     - ``um``
     - 0.000001
   * - millimeter
     - ``mm``
     - 0.001
   * - centimeter
     - ``cm``
     - 0.01
   * - decimeter
     - ``dm``
     - 0.1
   * - meter
     - ``m``
     - 1.0
   * - dekameter
     - ``dam``
     - 10.0
   * - hectometer
     - ``hm``
     - 100.0
   * - kilometer
     - ``km``
     - 1000.0


Menu Buttons
============

Blender uses a variety of different menus for accessing options, tools and selecting Data-Blocks.

Menu Shortcuts
--------------

- Arrow keys can be used to navigate.
- Each menu item has an underlined character which can be pressed to activate it.
- Number keys or num-pad can be used to access menu items.
  (Where :kbd:`1` is the first menu item, :kbd:`2` the second... etc.
  For larger menus :kbd:`Alt-1` the 11th... up to :kbd:`Alt-0` the 20th)
- Press :kbd:`Return` to activate the selected menu item.
- Press :kbd:`Esc` to cancel the menu.


Header Menus
------------

Header menus are used to configure the editor and access tools.

See :doc:`Headers </interface/window_system/headers>` for header options.


Pop-Up Menus
------------

.. figure:: /images/interface_popup-menu.jpg
   :align: right

   The Viewport Shading popup menu.

Pop-up menus are overlay menus used to display options. 
They are spawned by menu buttons and buttons showing up and down triangles on the right or
after a key input at the mouse position.

For example, the *Viewport Shading* button will produce a pop-up menu 
with the available shading options.

.. container:: lead

   .. clear

.. _ui-data_block:

Data-Block Menus
----------------

Menu buttons are used to link Data-Blocks to each other.
Data-blocks are items like meshes, objects, materials, textures, and so on.


.. figure:: /images/interface_data-block.jpg
   :align: right

   The Data-Block link menu with a search input.


Data-Block type
   Shows a icon. Opens up the following popup menu.

   List
      A list of data-block available in the current blend-file or link in to select an item from.
      The menu may show a preview besides the items and 
      a search box to search the items in the list by name.
Data-block name
   Displays the name of the linked Data-Block, which can be edited as a regular text field.
User count
   Displays the number of users of the data. Clicking on it to make it a single-user copy.
Fake User "F"
   Saves this data-block data-block, even if it has no users.
New "+"
   Creates a new data-block or duplicates the current data-block and applies it.
Open file
   Opens the :doc:`file-browser </editors/file_browser/introduction>`.
Unlink data-block "X"
   Clears the link.

Sometimes there is a list of applied data-blocks
(such as a list of materials used on the object). See Fig. data-block link buttons above.

.. figure:: /images/interface_list-controls.jpg
   :align: right

   Data-block link buttons.

   - To select a Data-Block, click :kbd:`LMB` on it.
   - To add a new section (e.g. material, or particle system),
     click :kbd:`LMB` on the "+" button to the right of the list.
   - To remove a section, click :kbd:`LMB` on the "-" to the right of the list.

For details on the behavior of linking data see :doc:`data-block </data_system/data_blocks>`.


Pie Menus
---------

A pie menu is a menu, whose items are spread radially around the mouse.
Pie menus has to be activated in the User Preferences through :menuselection:`Add-ons --> UI --> Pie Menus Official`. 

.. figure:: /images/interface_pie-menu.jpg
   :width: 350px

   The shade pie menu.


Interaction
^^^^^^^^^^^

The pie menu is spawned by a key press.

.. rubric:: 3D View

- :kbd:`Tab` Interaction Mode
- :kbd:`Z` Shade and solid or smooth shading
- :kbd:`Q` View directions and perspective or ortho. and camera
- :kbd:`Tab-Shift-Ctrl` Snapping
- :kbd:`.` Pivot
- :kbd:`Ctrl-Space` Manipulator

.. rubric:: Movie Clip Editor 
 
- :kbd:`W` Clip Setup
- :kbd:`Q` Marker Setup
- :kbd:`E` Tracking
- :kbd:`Shift-S` Solving
- :kbd:`Shift-W` Scene Reconstruction
- :kbd:`OS-A` Playback Operators

.. rubric:: Grease Pencil
 
- :kbd:`D-Q` Main tools menu (context sensitive)
- :kbd:`D-W` Quick Settings

Releasing the key without moving the mouse will keep the menu open and 
the user can then move the mouse pointer towards the direction of a pie menu item and select it by clicking. 
Releasing the key after moving the mouse towards a pie menu item will cause the menu to close and 
the selected menu item to activate. 

An open disc widget at the center of the pie menu shows the
current direction of the pie menu. The selected item is also highlighted. 
A pie menu will only have a valid direction for item selection,
if the mouse is touching or extending beyond the disc widget at the center of the menu. 

Pie menu items support key accelerators, which are the letters underlined on each menu item.
Also number keys can be used to select the items.

If there are sub-pies available, it is indicated by a plus icon. 

See :ref:`Pie menu settings <prefs-pie-menu>`.


Common Shortcuts
================

There are shortcuts shared among many button types.


While Hovering (when the cursor is held over a button).

   Properties:

   - :kbd:`Ctrl-C` - copy the value of the button.
   - :kbd:`Ctrl-V` - paste the value of the button.
   - :kbd:`RMB` - open the context menu.
   - :kbd:`Backspace` - clears the value (sets to zero or clears a text field).
   - :kbd:`Minus` - negate number values (multiply by -1.0).
   - :kbd:`Ctrl-Wheel` - changes the value incremental steps.

     For pop-up option menus buttons, this cycles the value.

   File Selector Icon:

   - :kbd:`LMB` - select a new file.
   - :kbd:`Shift-LMB` - open the file externally
     (using the system's default editor).
   - :kbd:`Alt-LMB` - open the directory externally
     (using the systems file manager).

   Animation:

   - :kbd:`I` - insert a keyframe.
   - :kbd:`Alt-I` - clear the keyframe.
   - :kbd:`Alt-Shift-I` - clear all keyframes (removing all F-Curves).
   - :kbd:`D` - assign a driver.
   - :kbd:`Alt-D` - clear the driver.
   - :kbd:`K` - add a Keying Set.
   - :kbd:`Alt-K` - clear the Keying Set.

   Python Scripting:

   - :kbd:`Ctrl-C` - over any `Operation Buttons`_ copies their Python command into the clipboard.

     This can be used in the Python console or in the text editor when writing scripts.
   - :kbd:`Ctrl-Shift-C` - over property buttons copies their data-path for this property
     (also available from the right-click menu).

     Useful when writing drivers or scripts.
   - :kbd:`Ctrl-Alt-Shift-C` - over property buttons copies their *full* data-path for the Data-Block and property.

     Note that in most cases it's best to access values based on the context, instead of by name.

While Dragging Numbers

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
