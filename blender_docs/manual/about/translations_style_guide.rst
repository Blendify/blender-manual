
************************
Translations Style Guide
************************

This page covers conventions concerning the translations.

.. note::
   
   - We expect our readers to use the English version of Blender, not a translated one.
   - The license of the translations is CC0 (public domain) as is the original.

Should I translate *..* ?
=========================

Maybe
-----

Hyperlinks
   Can be translated, but only as a addition, not as a replacement.
   See also `Adding Text`_

Technical Terms
   Only translate these, when the localized expression is common!
   See also `Technical Terms`_

Text you aren't sure you understood
   Simply mark the text as fuzzy and/or add a comment.
   The next translator might understand it.

Never
-----

Images
   You probably won't find the original scene if it is a screenshot of a file
   and it's too much load for the server (and too much work for you).

Menu and button names
   We expect our readers to use the English UI.

Text you don't understand
   Do not translate it! It will do more harm than good!

Technical terms
===============

.. Taken from http://wiki.blender.org/index.php/Meta:Guides/Translation_Guide

In general, the technical terms used in CG are quite new or even downright neologisms invented for the needs, 
so they do not always have a translation in your language. Moreover, a large part of Blender users uses its English GUI.

As a result, unless a term has an evident translation, you should preferably use the English one, *putting it in italic*. 
You can then find a translation for it, which you will use from times to times (e.g. to avoid repetitions…). 
This is also valid in the other way: even when a term has a straightforward translation, 
don’t hesitate to use its English version from times to times, to gets the reader used with it…

If a term is definitively not translatable, just give its definition one time (*per pages*, preferably), 
then always use its English version.

Adding Text
===========

Generally, **you should always translate exactly what is in the text**,
and avoid providing updates or extra information.

But sometimes that is neccessary, for example when talking about the manual
itself: To an foreign reader it isn't clear, that he or she can contribute English text only, 
whereas this is obvious to an English reader.

In these (rare) cases you can and should provide extra information.


Keeping Pages Up To Date
========================

When the manual is updated, those translations which are outdated will be marked as fuzzy.
To keep track with that, you can use a tool we created for that task, see :ref:`how to install it <translations-fuzzy-strings>`.

.. seealso:: http://wiki.blender.org/index.php/Meta:Guides/Translation_Guide

