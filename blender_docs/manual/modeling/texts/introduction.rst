.. |atilde| unicode:: U+000E3
.. |aacute| unicode:: U+000E1
.. |agrave| unicode:: U+000E0
.. |aring|  unicode:: U+000E5
.. |euml|   unicode:: U+000EB
.. |oslash| unicode:: U+000F8

************
Introduction
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    Curve and Surface, Font and Char
   | Menu:     :menuselection:`Add --> Text`

.. _fig-texts-intro-example:

.. figure:: /images/textsamples.jpg
   :width: 400px

   Text Examples.


*Text* objects are exactly what they sound like: they contain some text.
They share the same object type as curves and surfaces,
as modern fonts (OpenType, TrueType, etc.) are vectorial, made of curves (generally Béziers).

Blender uses a "Font System" to manage mapping "letter codes --> objects representing them in 3D
views". This implies that not only does the font system have its own *built-in* font,
but it can use external fonts too, including *PostScript Type 1*,
*OpenType* and *TrueType* fonts. And last but not least,
it can use any objects existing in the current blend-file as letters...

Texts in Bender allow you to create/render 2D or 3D text, shaded as you want,
with various advanced layout options (like justifying and frames), as we will see below.
By default, letters are just flat filled surfaces, exactly like any closed 2D curve.
But you can of course extrude them... And texts can follow other curves.

Of course, once you are happy with the shape of your text, you can convert it
(with :kbd:`Alt-C`, in *Object Mode*), either to a curve,
or directly to a mesh,
allowing you to use all the powerful features of these types of objects on it...

Fig. :ref:`fig-texts-intro-example` shows some examples of various fonts in action,
including the "blue" font that has been applied to a curve path.

.. note::

   A maximum of 50000 characters is allowed per text object; however,
   be forewarned that the more characters a single text object has,
   the slower the object will respond interactively.

   As you can see when you switch between *Object Mode* and *Edit Mode*,
   the *Font* panel remains the same. This means that its settings can be applied
   equally in both modes ... and this implies that you cannot apply them to just a part of the
   mesh. So font, size, and so on, are common to all letters in a *Text* object.
   There is just one exception:
   the *Bold* or *Italic* buttons control properties specific to each letter
   (this is a way to use up to four different fonts in a text).

   For optimum resource usage, only characters that are being used consume memory
   (rather than the entire character set).


Editing Text
============

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Hotkey:   see below


.. figure:: /images/modelling-text-create-ex.jpg
   :width: 300px

   Text in Edit Mode.


Editing text is quite different from other object types in Blender, and happens mainly in two areas.
First, the 3D View, of course, where you type your text, and have a few shortcuts, e.g. for applying
styles (see `Character`_) - note however, that most Blender hotkeys you know in *Edit Mode*
do not exist for texts! The second place is the Properties Editor, especially the *Font* tab.

The menu of the 3D View header has nearly no use,
and there is no *Specials* menu... You have no transform nor mirror tools, and so on.
However, you can apply to texts the same modifiers as for curves.

Editing *Text* is similar to using a standard text editor but is not as
full-featured and has some differences:

Exit *Edit Mode*
   :kbd:`Tab` doesn't insert a tab character in the text,
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
--------------

You can insert text in two ways: from the internal text buffer
(`Editing Text`_), or from a text file.

To load text from a text file, use the :menuselection:`Text --> Paste File` tool.
This will bring up a *File Browser* editor for navigating to a valid UTF-8 file.
As usual, be careful that the file doesn't have too many characters,
as interactive response will slow down.


Special Characters
^^^^^^^^^^^^^^^^^^

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


Convert Text to Text Object
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: /images/converttexttotextobject.jpg
   :width: 250px


Using an existing text-block, you can convert it to an object from the text editor's header,
select :menuselection:`Edit --> Text to 3D Object`,
*One Object* or *One Object per Line* depending on your needs.

It is also possible to paste from the clipboard or a file from the *Edit* menu, while editing 3D Text.


3D Mesh
^^^^^^^

It is possible to convert a Text Object to a 3D Mesh object.
This can be useful so that you may edit the vertices in *Edit Mode*,
but you will lose the ability to edit the text itself.
To do this, go to *Object Mode* and select your Text Object.
Press :kbd:`Alt-C` and select *Mesh From Curve/Meta/Surf/Text*.
Now you can return to *Edit Mode* and manually edit the vertices.
They are usually a bit messy, so it may be useful to use a *Limited Dissolve* deletion or *Remesh* Object
:doc:`Modifier </modeling/modifiers/index>` at a low threshold to clean up your mesh.

.. figure:: /images/textobjectfromtext.jpg
   :width: 500px

   left normal text, right the made text object.


Text Selection
--------------

.. figure:: /images/modelling-text-create-ex.jpg
   :width: 200px

   Text in Edit Mode.


In *Edit Mode*, your text has a white cursor, and as in any text editor,
it determines where new chars will be inserted! You move this cursor with the arrow keys or
:kbd:`PageUp` / :kbd:`PageDown` and :kbd:`Home` / :kbd:`End`.

Hold :kbd:`Shift` while using the arrow keys to select a part of the text.
You can use it to specify different materials, the normal/bold/italic state,
and not much more...


Formatting Text
===============

Fonts
-----

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    Font


The *Font* panel has several options for changing the look of characters.


Loading and Changing Fonts
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: /images/text-load-ex.jpg

   Loading a Type 1 font file.


Blender comes with a *built-in* font by default and is displayed in each of the four font
style choosers.
The *built-in* font is always present and shows in this list as "Bfont".
The first icon contains a drop-down list displaying currently loaded fonts.
Select one for each font style.

To load a different *Font*, click one of the *Load* buttons in the
*Font* panel and navigate to a *valid* font.
The *File Browser* editor will give all valid fonts a capital F icon,
as seen in *Loading a Type 1 font file.*

.. note:: Location of fonts on Unix

   Fonts are typically located under ``/usr/lib/fonts``, or some variant like ``/usr/lib/X11/fonts``,
   but not always. They may be in other locations as well,
   such as ``/usr/share/local`` or ``/usr/local/share``, and possibly related sub-trees.


If you select a font that Blender cannot understand,
you will get the error ``Not a valid font``.

Remember the same font will be applied to all chars with same style in a text,
but that a separate font is required for each style. For example,
you will need to load an *Italics* font in order to make characters or words italic. Once
the font is loaded you can apply that font "Style" to the selected characters or the whole
object. In all,
you would need to load a minimum of four different types of fonts to represent each style
(Normal, Italics, Bold, Bold-Italics).

It is important to understand that Blender does not care what font you load for "normal",
"bold", etc., styles. This is how you can have up to four different fonts in use in the same
text - but you have to choose between different styles of a same font, or different fonts.
Blender has a number of typographic controls for changing the style and layout of text,
found in the *Font* panel.


Size and Shear
^^^^^^^^^^^^^^

Size
   Controls the size of the whole text (no way to control each char size independently).
   Note however, that chars with different fonts (different styles, see below) might have different visible sizes.
Shear
   Controls the inclination of the whole text.
   Different to as it may seems, this is not similar to italics style.

   .. figure:: /images/textshear.jpg
      :width: 300px

      shear: 'blender' has a shear value of 1, '2.59' a shear value of 0.


Objects as Fonts
^^^^^^^^^^^^^^^^

You can also "create" your own "font" inside Blender! This is quite a complex process,
so let us detail it:

#. First, you must create your chars. Each char, of any type,  is an object (mesh, curve, meta...).
   They all must have a name following the schema:
   *common prefix* followed by the *char name* (e.g. "ft.a", "ft.b", etc.).
#. Then, for the *Text* object, you must enable the *Dupli Verts* button
   (:menuselection:`Object --> Animation Settings` panel).
#. In the *Font* tap, fill the *Object Font* field with the *common prefix* of your "font" objects.

Now, each time a char in your text matches the *suffix part* of a "font" object's name,
this object is duplicated on this char. The original chars remain visible. The objects are
duplicated so that their center is positioned at the *lower right corner* of the
corresponding characters.


Text on Curve
   Used to select a curve for the text object to follow.

   .. figure:: /images/text-curved-lowres-ex.jpg
      :width: 200px

      Text on curve.

   .. tip::

      You can also use the :doc:`Curve Modifier </modeling/modifiers/deform/curve>`
      which offers more control.

Underline
   Toggled with the *Underline* button before typing.
   Text can also be set to Underlined by selecting it then using the *Underline* button in the Tool Shelf.

   Position
      This allows you to shift vertically the position of the underline.
   Thickness
      This controls the thickness of the underline.


Character
^^^^^^^^^

.. list-table::

   * - .. figure:: /images/text-bold-ex.jpg
          :width: 300px

           Bold text.

     - .. figure:: /images/textfontsettings.jpg
          :width: 300px

          Character options to, for example, type bold text.


Bold
   Toggled with the *Bold* button before typing.
   Text can also be set to Bold by selecting it then using the *Bold* button in the Tool Shelf.
Italics
   Toggled with the *Italic* button before typing.
   Text can also be set to Italic by selecting it then using the *Italic* button in the Tool Shelf.
Underline
   Enables underlining, as controlled by the Underline settings above.
Small Caps
   Type small capital text.

Blender's *Bold* and *Italic* buttons do not work the same way as other applications,
as they also serve as placeholders for you to load up other fonts manually,
which get applied when you define the corresponding style; see `Fonts`_.

To apply the Bold/Italics/Underline attribute to a set of characters, you either turn on
*Bold* / *Italics* / *Underline* prior to typing characters,
or highlight (select) first and then toggle Bold/Italics/Underline.


Setting Case
^^^^^^^^^^^^

You can change the text case by selecting it then clicking the *To Upper* or
*To Lower* in the tool shelf.

Enable the *Small Caps* option to type characters as small caps.

The size of the *Small Caps* can be changed with the *Small Caps Scale*
setting. Note that the *Small Caps Scale* is applied the same to all *Small Caps* formatted characters.


Paragraph
---------

The *Paragraph* Panel has settings for the alignment and spacing of text.

.. figure:: /images/textparagraphsettings.png
   :width: 300px

   The paragraph tab.


Horizontal Alignment
^^^^^^^^^^^^^^^^^^^^

Left
   Aligns text to left of frames when using them,
   else uses the center point of the *Text* object as the starting point of the text (which grows to the right).
Center
   Centers text in the frames when using them,
   else uses the center point of the *Text* object as the mid-point of the text
   (which grows equally to the left and right).
Right
   Aligns text to right of frames when using them,
   else uses the center point of the *Text* object as the ending point of the text (which grows to the left).
Justify
   Only flushes a line when it is terminated by a wordwrap (**not** by :kbd:`Return`),
   it uses *whitespace* instead of *character spacing* (kerning) to fill lines.
Flush
   Always flushes the line, even when it's still being entered;
   it uses character spacing (kerning) to fill lines.

Both *Justify* and *Flush* only work within frames.


Vertical Alignment
^^^^^^^^^^^^^^^^^^

Top Base-Line
   Aligns the text base-line to top of frames when using them,
   else uses the center point of the *Text* object as the starting point of the text (which grows to the bottom).
Top
   Aligns top of text to the center point of the *Text* object (which grows to the bottom).
   It behaves as *Top Base-Line* when using frames.
Center
   Centers text in the frames when using them,
   else uses the center point of the *Text* object as the mid-point of the text
   (which grows equally to the top and bottom).
Bottom
   Aligns text to bottom of frames when using them,
   else uses the center point of the *Text* object as the ending point of the text (which grows to the top).

*Top* only works without frames.


Spacing
^^^^^^^

Character
   A factor by which space between each character is scaled in width
Word
   A factor by which whitespace between words is scaled in width.
   You can also control it by pressing :kbd:`Alt-Left` or :kbd:`Alt-Right`
   to decrease/increase spacing by steps of 0.1 .
Line
   A factor by which the vertical space between lines is scaled.


Offset
^^^^^^

X offset and Y offset
   Well, these settings control the X and Y offset of the text, regarding its "normal" positioning. Note that with
   frames (see :doc:`Text Boxes </modeling/texts/editing>`), it applies to all frames' content...


Shape
=====

.. admonition:: Reference
   :class: refbox

   | Mode:     Object or Edit Mode
   | Panel:    Curve and Surface


As you can see in the *Curve and Surface* panel,
texts have most of the same options as curves.


Resolution
----------

Preview, Render resolution. See :ref:`curve resolution <curve-resolution>`.

.. figure:: /images/textshapesettings.jpg
   :width: 300px

   the shape settings.


Fast Editing
   disables curve filling while in edit mode.


Fill
----

The fill options control how the text curves are filled in when text is *Extruded*
or *Beveled* in the *Geometry* Panel.

Front
   Fills in the front side of the surface.
Back
   Fills in the back side of the surface.
Fill Deformed
   Fills the curves after applying shape keys and modifiers.


Textures
--------

.. figure:: /images/texttexturesettings.jpg

   Texture Settings.


Use UV for Mapping
   Use UV values as generated texture coordinates.
Auto Texture Space
   Adjusts the active object's texture space automatically when transforming object.


Geometry
========

Text objects have all the :doc:`curves extrusion features </modeling/curves/editing/extrude>`.
