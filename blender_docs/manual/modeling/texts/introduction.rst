
************
Introduction
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Tool shelf --> Create --> Add Primitive --> Other: Text`
   | Menu:     :menuselection:`Add --> Text`

.. _fig-texts-intro-example:

.. figure:: /images/modeling_texts_introduction_examples.jpg
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

Texts in Blender allow you to create/render 2D or 3D text, shaded as you want,
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
