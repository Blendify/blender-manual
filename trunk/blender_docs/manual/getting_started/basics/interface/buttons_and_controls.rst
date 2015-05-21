
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

- To change many toggle buttons at once, you can :kbd:`LMB` drag over multiple buttons,
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

.. figure:: /images/Manual-Part-I-ConceptButtons4_25.jpg
   :align: right

   Datablock link buttons


Use the menu buttons to work with items on dynamically created lists.
Menu buttons are principally used to link DataBlocks to each other.
DataBlocks are items like Meshes, Objects, Materials, Textures, and so on.


.. figure:: /images/Manual-Part-I-ConceptButtons4_1_25.jpg
   :align: right

   Datablock link menu with search


- The first button (with an icon of the DataBlock type) opens up a menu to select an item
  by clicking :kbd:`LMB`.
- The second button displays the name of the linked DataBlock and lets you edit it after clicking :kbd:`LMB`.
- The "+" button duplicates the current DataBlock and applies it.
- The "X" button clears the link.

Sometimes there is a list of applied DataBlocks
(such as a list of materials used on the object). See *DataBlock link buttons* above.


- To select a datablock, click :kbd:`LMB` on it.
- To add a new section (e.g. material, or particle system),
  click :kbd:`LMB` on the "+" button to the right of the list.
- To remove a section, click :kbd:`LMB` on the "-" to the right of the list.


Another type of a Menu button block will show a static list with a range of options.
For example, the Add Modifier button will produce a menu with all of the available modifiers.


.. figure:: /images/Manual-Part-I-ConceptButtons4_menue_25.jpg
   :align: center

   Modifier options


.. note:: Unlinked objects

   Unlinked data is *not* **lost until you quit Blender**. This is a powerful Undo feature.
   If you delete an object the material assigned to it becomes unlinked, but is still there! You
   just have to re-link it to another object or supply it with a "Fake User" (i.e.
   by clicking that option in the corresponding DataBlock in the datablock-view of the Outliner).

   :doc:`Read more about Fake User </data_system/introduction>`


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
   - :kbd:`Backspace` - set the value to zero.
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

