..    TODO/Review: {{review|partial=X|fixes= rename page?}}.

.. |atilde| unicode:: U+000E3
.. |aacute| unicode:: U+000E1
.. |agrave| unicode:: U+000E0
.. |aring|  unicode:: U+000E5
.. |euml|   unicode:: U+000EB
.. |oslash| unicode:: U+000F8

*******
Editing
*******

Editing text is quite different from other object types in Blender, and happens mainly in two areas.
First, the 3D View, of course, where you type your text, and have a few shortcuts, e.g. for applying
styles (see :ref:`modeling-text-character`) - note however, that most Blender hotkeys you know in *Edit Mode*
do not exist for texts! The second place is the Properties Editor, especially the *Font* tab.

.. figure:: /images/modeling-text-create-ex.png

   Text in Edit Mode.


The menu of the 3D View header has nearly no use,
and there is no *Specials* menu... You have no transform nor mirror tools, and so on.
However, you can apply to texts the same modifiers as for curves.

Editing *Text* is similar to using a standard text editor but is not as
full-featured and has some differences:

Exit *Edit Mode*
   :kbd:`Tab` does not insert a tab character in the text,
   but rather enters and exits *Edit Mode*, as with other object types.
Copy
   To copy text to the buffer, use :kbd:`Ctrl-C` or the *Copy* button in the tool shelf.
Cut and Copy
   To cut and copy text to the buffer, use :kbd:`Ctrl-X` or the *Cut* button in the tool shelf.
Paste
   To paste text from the buffer, use :kbd:`Ctrl-V` or the *Paste* button in the tool shelf.
Delete all text
   To completely erase or delete all text, use :kbd:`Ctrl-Backspace`.
Home/End
   :kbd:`Home` and :kbd:`End` move the cursor to the beginning and end of a line respectively.
Next/Previous word
   To move the cursor on a word's boundary, use :kbd:`Ctrl-Left` or :kbd:`Ctrl-Right`.

The text buffer is in sync with the desktop clipboard.
But if it is used within Blender the text formatting will be copied as well.
For other ways of inserting a text, see `Inserting Text`_ below.


Inserting Text
==============

You can insert text in two ways: from the internal text buffer
(as described above), or from a text file.

To load text from a text file, use the :menuselection:`Text --> Paste File` tool.
This will bring up a :doc:`File Browser </editors/file_browser/index>` for navigating to a valid UTF-8 file.
As usual, be careful that the file does not have too many characters,
as interactive response will slow down.


Special Characters
------------------

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Text --> Special Characters`

If you need special characters (such as accented chars, which are not on your keyboard)
you can produce many of them using a combination of two other characters. To do so,
type the main char, press :kbd:`Alt-Backspace`,
and then press the desired "modifier" to produce the special character.
Some examples are given below:

.. list-table::
   :widths: 20 80

   * - |atilde|

     - :kbd:`A`, :kbd:`Alt-Backspace`, :kbd:`~`

   * - |aacute|

     - :kbd:`A`, :kbd:`Alt-Backspace`, :kbd:`'`

   * - |agrave|

     - :kbd:`A`, :kbd:`Alt-Backspace`, :kbd:`\\`

   * - |aring|

     - :kbd:`A`, :kbd:`Alt-Backspace`, :kbd:`O`

   * - |euml|

     - :kbd:`E`, :kbd:`Alt-Backspace`, :kbd:`"`

   * - |oslash|

     - :kbd:`O`, :kbd:`Alt-Backspace`, :kbd:`/`


Converting Text Objects
=======================

Converting to Text Object
-------------------------

.. figure:: /images/converttexttotextobject.jpg


Using an existing text-block, you can convert it to an object from the text editor's header,
select :menuselection:`Edit --> Text to 3D Object`,
*One Object* or *One Object per Line* depending on your needs.

It is also possible to paste from the clipboard or a file from the *Edit* menu, while editing 3D Text.


Converting to 3D Mesh
---------------------

It is possible to convert a Text Object to a 3D Mesh object.
This can be useful so that you may edit the vertices in *Edit Mode*,
but you will lose the ability to edit the text itself.
To do this, go to *Object Mode* and select your Text Object.
Press :kbd:`Alt-C` and select *Mesh From Curve/Meta/Surf/Text*.
Now you can return to *Edit Mode* and manually edit the vertices.
They are usually a bit messy, so it may be useful to use a *Limited Dissolve* deletion or *Remesh* Object
:doc:`Modifier </modeling/modifiers/index>` at a low threshold to clean up your mesh.

.. figure:: /images/textobjectfromtext.png

   left normal text, right the made text object.


Text Selection
==============

.. figure:: /images/modeling-text-create-ex.png

   Text in Edit Mode.


In *Edit Mode*, your text has a white cursor, and as in any text editor,
it determines where new chars will be inserted! You move this cursor with the arrow keys or
:kbd:`PageUp` / :kbd:`PageDown` and :kbd:`Home` / :kbd:`End`.

Hold :kbd:`Shift` while using the arrow keys to select a part of the text.
You can use it to specify different materials, the normal/bold/italic state,
and not much more...


Text Boxes
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object or Edit Modes
   | Panel:    Font

.. figure:: /images/text-frame-upperpanel-area.png

   Text frame.


Text "Boxes" allow you to distribute the text amongst rectangular areas within a single text object.
An arbitrary number of freely positionable and re-sizable text frames are allowed per text object.

Text flows continuously from the lowest-numbered frame to the highest-numbered frame with text
inside each frame word-wrapped.
Text flows between frames when a lower-numbered frame cannot fit any more text.
If the last frame is reached, text overflows out of it.

Text frames are very similar to the concept of *frames* from a desktop publishing
application, like Scribus. You use frames to control the placement and flow of text.

Frames are controlled in the *Text Boxes* panel.


Frame Size
----------

By default the first frame for a new text object, and any additional frames,
has a size of **zero** for both *Width* and *Height*,
which means the frame is initially not visible.

Frames with a width of 0.0 are ignored completely during text flow (no wordwrap happens),
and frames with a height of 0.0 flow forever (no flowing to the next text frame).

In order for the frame to become visible, the frame's *Width* must be greater than 0.0.

.. note::

   Technically the height is never actually 0.0, because the font itself always contributes height.

.. _fig-texts-edit-frame:

.. figure:: /images/text-frame-default-ex.png

   Frame width.


Fig. :ref:`fig-texts-edit-frame` is a text object with a width of 5.0.
And because the frame width is greater than 0.0
it is now visible and is drawn in the active theme color as a dashed rectangle.
The text has overflowed because the text has reached the end of the last frame, the default frame.


Adding/Deleting a Frame
-----------------------

To add a frame click the *Add Textbox* button on the *Text Boxes* panel.
A new frame is inserted just after (in text flow order) the current one, with its attributes
(position and size). Be sure to modify the offset for the new frame in the X
and/or Y fields. Just an X modification will create a new column.

To delete the current frame, click the :kbd:`Delete` button.
Any text in higher frames will be re-flowed downward into lower frames.

Examples
--------

Text Flow
^^^^^^^^^

.. _fig-texts-edit-wrap:

.. figure:: /images/text-frame-working-ex2.png

   Wrapping.


With two or more frames you can organize text to a finer degree. For example,
create a text object and enter "Blender is super duper".
This text object has a frame; it just is not visible because its *Width* is 0.0.

Set the width to 5.0. The frame is now visible and text is wrapping according to the new width,
as shown in Fig. :ref:`fig-texts-edit-wrap`. Notice that the text has overflowed out of the frame.
This is because the text has reached the end of the last frame,
which just happens to be the default/initial frame.

.. figure:: /images/text-frame-working-ex4.png
   :width: 300px

   Text flowing from box 1 to box 2.


When we add another frame and set its width and height, the text will flow into the new frame.


Multiple Columns
^^^^^^^^^^^^^^^^

.. _fig-texts-edit-text5:

.. figure:: /images/text-frame-working-ex5.png

   Text 5.


To create two columns of text just create a text object and adjust the initial frame's
*Width* and *Height* to your requirements, then insert a new frame.
The new frame will have the same size as the initial frame. Set the X position to
something greater or less than the width of the initial frame; see Fig. :ref:`fig-texts-edit-text5`.


Assigning Materials
===================

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    Link and Materials


Each character can have a different *Material index* in order to have different
materials on different characters.

You can assign indices either as you type, or after by selecting blocks of text and clicking
on the *Assign* button in the Materials panel.

.. _fig-texts-edit-rgb:

.. figure:: /images/text-materialindex-ex.png

   Red Green Blue.


For example, to create Fig. :ref:`fig-texts-edit-rgb`
you would need to create three separate materials and three separate material indices. Each
word would be assigned a *Material index* by selecting the characters for each word
and clicking the *Assign* button. Fig. :ref:`fig-texts-edit-rgb`
is still one single *Text* object.
