.. rename to numeric input?
.. add text, search?

**************
Number Buttons
**************

.. figure:: /images/interface_numberbutton.jpg
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
===================

.. figure:: /images/ui_multi_value_edit.png
   :align: right

   Multi-value editing.

It is often useful to edit multiple values at once (object scale or render resolution for example).

This can be done by clicking on the button and dragging vertically to include buttons above/below.

After the vertical motion you can drag from side to side, or release the :kbd:`LMB` to type in a value.


Limits
======

Most *Number Buttons* has two types of "limits" imposed on them. The first of these is a "soft limit",
this means that the property cannot surpassed the value of the "soft limit" without having to :kbd:`LMB`
and input the value with the :kbd:`Numpad`. The second is the "hard limit",
this is the value that cannot be surpassed even by :kbd:`LMB` and inputing a value.


Expressions
===========

.. Do not use mathjax here

You can also enter expressions such as ``3*2`` instead of ``6``. or ``5/10+3``.
Even constants like ``pi`` (3.142) or functions like ``sqrt(2)`` (square root of 2)
may be used.

.. seealso::

   These expressions are evaluated by Python; for all available math expressions see:
   `math module reference <https://docs.python.org/3/library/math.html>`__


Expressions as Drivers
----------------------

You may want your expression to be re-evaluated after it is entered.
Blender supports this using :doc:`Drivers </animation/drivers>` (a feature of the animation system).

Expression beginning with ``#``, have a special use.
Instead of evaluating the value and discarding the expression,
a driver is added to the property with the expression entered.

The expression ``#frame`` is a quick way to access map a value to the current frame,
but more complex expressions are also supported ``#fmod(frame, 24) / 24`` for example.

This is simply a convenient shortcut to add drivers which can also be added via the :kbd:`RMB` menu.


Units
=====

As well as expressions, you can mix units with numbers; for this to work,
units need to be set in the :ref:`scene settings <data-scenes-props-units>`.

To use units simply write either the unit abbreviation or the full name after the value.

Examples of valid units include:

.. hlist::
   :columns: 2

   - ``1cm``
   - ``1m 3mm``
   - ``1m, 3mm``
   - ``2ft``
   - ``3ft/0.5km``
   - ``2.2mm + 5' / 3" - 2yards``

.. note:: Some notes about using units:

   - Commas are optional.
   - You can mix between metric and imperial even though you can only show one at a time.
   - Plurals of the names are recognized too, so ``meter`` and ``meters`` can both be used.

