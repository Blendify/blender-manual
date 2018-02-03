.. (todo move) split? move text style toggle to editing

**********
Properties
**********

Shape
=====

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Panel:    :menuselection:`Properties editor --> Text --> Shape`

.. figure:: /images/modeling_texts_properties_shape-settings.png

   The Shape panel.

As you can see in the Shape panel, texts have most of the same options as curves.


Resolution
----------

Preview
   The surface resolution in the U direction to use in the viewport.
Render
   The surface resolution in the U direction, set to zero to use the *Preview* resolution.


Fill
----

Fill
   Determines the way a Curve is filled in when it is extruded and/or beveled.

   Front
      Fills in the front side of the surface.
   Back
      Fills in the back side of the surface.
Fill Deformed
   Fills the curves after applying all modification that might deform the curve (i.e. shape keys and modifiers).


Display
-------

Fast Editing
   Does not fill polygons while editing text.


Texture Space
=============

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Panel:    :menuselection:`Properties editor --> Font --> Texture Space`

.. figure:: /images/modeling_texts_properties_texture-settings.png

   Texture Settings.

TODO add.

Use UV for Mapping
   Use UV values as generated texture coordinates.
Auto Texture Space
   Adjusts the active object's texture space automatically when transforming the object.


Geometry
========

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Panel:    :menuselection:`Properties editor --> Font --> Geometry`

Modification
   Offset
      Alters the space between letters.
   Extrude
      Will extrude the text along both the positive and negative local Z axes.
Bevel
   Depth
      Changes the size of the bevel.
   Resolution
      Alters the smoothness of the bevel.

Taper Object
   Used to select a curve object that can be used to cause the characters to get thinner towards one end.
   You can also alter the proportions of the Taper throughout the tapered object by moving/scaling/rotating
   the Control Points of the *Taper Object*. The *Taper Object* can only be a curve.
   Editing the Handles and Control Points of the *Taper Object* will cause the original object to change shape.
Bevel Object
   Used to select a curve object that can be used to give custom bevel results.

.. seealso::

   :doc:`Curve geometry </modeling/curves/properties/geometry>` for more details and examples.


Font
====

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Panel:    :menuselection:`Properties editor --> Font --> Font`

The *Font* panel has several options for changing the look of characters.


Loading and Changing Fonts
--------------------------

.. figure:: /images/modeling_texts_properties_load-example.png

   Loading a Type 1 font file.

Blender comes with a *built-in* font by default that is displayed in
each of the four font style data-block menus .
The *built-in* font is always present and shows in this list as "Bfont".
The data-block menu contains a list displaying the currently loaded fonts.
Select one for each font style.

To load a different *Font*, click one of the *Load* buttons in the
*Font* panel and navigate to a *valid* font.
The :doc:`File Browser </editors/file_browser/index>` will give all valid fonts a capital F icon,
as seen in *Loading a Type 1 font file.*

.. note:: Location of fonts on Unix

   Fonts are typically located under ``/usr/lib/fonts``, or some variant like ``/usr/lib/X11/fonts``,
   but not always. They may be in other locations as well,
   such as ``/usr/share/local`` or ``/usr/local/share``, and possibly related sub-trees.

If you select a font that Blender cannot understand,
you will get the error ``Not a valid font``.

Remember the same font will be applied to all chars with same style in a text,
but that a separate font is required for each style.
For example, you will need to load an *Italics* font in order to make characters or words italic.
Once the font is loaded you can apply that font "Style" to the selected characters or the whole object.
In all, you would need to load a minimum of four different types of fonts to represent each style
(Normal, Italics, Bold, Bold-Italics).

It is important to understand, that Blender does not care what font
you load for "normal", "bold", etc., styles.
This is how you can have up to four different fonts in use in the same text,
but you have to choose between different styles of a same font, or different fonts.
Blender has a number of typographic controls for changing the style and layout of text,
found in the *Font* panel.


Size and Shear
--------------

Size
   Controls the size of the whole text (no way to control each char size independently).
   Note however, that chars with different fonts (different styles, see below) might have different visible sizes.
Shear
   Controls the inclination of the whole text.
   Different to as it may seem, this is not similar to italics style.

   .. figure:: /images/modeling_texts_properties_shear-example.png
      :width: 340px

      Shear example.


Objects as Fonts
----------------

You can also "create" your own "font" inside Blender! This is quite a complex process,
so let us detail it:

#. First, you must create your chars. Each char, of any type,  is an object (mesh, curve, meta...).
   They all must have a name following the schema:
   *common prefix* followed by the *char name* (e.g. "ft.a", "ft.b", etc.).
#. Then, for the *Text* object, you must enable the *Dupli Vertices* button
   (:menuselection:`Object --> Animation Settings` panel).
#. In the *Font* tab, fill the *Object Font* field with the *common prefix* of your "font" objects.

Now, each time a char in your text matches the *suffix part* of a "font" object's name,
this object is duplicated on this char. The original chars remain visible. The objects are
duplicated so that their center is positioned at the *lower right corner* of the
corresponding characters.

Text on Curve
   Used to select a curve for the text object to follow.

   .. figure:: /images/modeling_texts_properties_curved-lowres-example.png
      :width: 360px

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


.. _modeling-text-character:

Character
---------

.. figure:: /images/modeling_texts_properties_font-settings.png
   :width: 290px

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
which get applied when you define the corresponding style; see `Font`_.

To apply the Bold/Italics/Underline attribute to a set of characters, you either turn on
*Bold* / *Italics* / *Underline* prior to typing characters,
or highlight (select) first and then toggle Bold/Italics/Underline.


Setting Case
------------

You can change the text case by selecting it then clicking the *To Upper* or
*To Lower* in the Tool shelf.

Enable the *Small Caps* option to type characters as small caps.

The size of the *Small Caps* can be changed with the *Small Caps Scale* setting.
Note that the *Small Caps Scale* is applied the same to all *Small Caps* formatted characters.


Paragraph
=========

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Panel:    :menuselection:`Properties editor --> Font --> Paragraph`

The *Paragraph* Panel has settings for the alignment and spacing of text.

.. figure:: /images/modeling_texts_properties_paragraph-settings.png
   :width: 290px

   The Paragraph panel.


Horizontal Alignment
--------------------

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
   Only flushes a line when it is terminated by a word-wrap (**not** by :kbd:`Enter`),
   it uses *white-space* instead of *character spacing* (kerning) to fill lines.
Flush
   Always flushes the line, even when it is still being entered;
   it uses character spacing (kerning) to fill lines.

Both *Justify* and *Flush* only work within frames.


Vertical Alignment
------------------

Top Base-Line
   Aligns the text base-line to top of frames when using them,
   else uses the center point of the *Text* object as the starting point of the text (which grows to the bottom).
Top
   Aligns top of text to the center point of the *Text* object (which grows to the bottom).
   It behaves as *Top Base-Line* when using frames. *Top* only works without frames.
Center
   Centers text in the frames when using them,
   else uses the center point of the *Text* object as the mid-point of the text
   (which grows equally to the top and bottom).
Bottom
   Aligns text to bottom of frames when using them,
   else uses the center point of the *Text* object as the ending point of the text (which grows to the top).


Spacing
-------

Character
   A factor by which space between each character is scaled in width.
Word
   A factor by which white-space between words is scaled in width.
   You can also control it by pressing :kbd:`Alt-Left` or :kbd:`Alt-Right`
   to decrease/increase spacing by steps of 0.1.
Line
   A factor by which the vertical space between lines is scaled.


Offset
------

X offset and Y offset
   Well, these settings control the X and Y offset of the text, regarding its "normal" positioning. Note that with
   frames (see :doc:`Text Boxes </modeling/texts/editing>`), it applies to all frames' content...


.. _bpy.types.TextBox:

Text Boxes
==========

.. admonition:: Reference
   :class: refbox

   | Mode:     All Modes
   | Panel:    :menuselection:`Properties editor --> Font --> Text Boxes`

.. figure:: /images/modeling_texts_properties_frame-upperpanel-area.png

   Text frame.

Text "Boxes" allow you to distribute the text among rectangular areas within a single text object.
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

.. figure:: /images/modeling_texts_properties_frame-default-example.png

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

.. figure:: /images/modeling_texts_properties_frame-example2.png

   Wrapping.

With two or more frames you can organize text to a finer degree. For example,
create a text object and enter "Blender is super duper".
This text object has a frame; it just is not visible because its *Width* is 0.0.

Set the width to 5.0. The frame is now visible and text is wrapping according to the new width,
as shown in Fig. :ref:`fig-texts-edit-wrap`. Notice that the text has overflowed out of the frame.
This is because the text has reached the end of the last frame,
which just happens to be the default/initial frame.

.. figure:: /images/modeling_texts_properties_frame-example3.png
   :width: 300px

   Text flowing from box 1 to box 2.

When we add another frame and set its width and height, the text will flow into the new frame.


Multiple Columns
^^^^^^^^^^^^^^^^

.. _fig-texts-edit-text5:

.. figure:: /images/modeling_texts_properties_frame-example4.png

   Multiple columns, text flowing between boxes.

To create two columns of text, just create a text object and adjust the initial frame's
*Width* and *Height* to your requirements, then insert a new frame.
The new frame will have the same size as the initial frame. Set the X position to
something greater or less than the width of the initial frame; see Fig. :ref:`fig-texts-edit-text5`.
