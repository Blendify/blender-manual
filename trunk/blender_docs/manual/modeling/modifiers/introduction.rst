
************
Introduction
************

Modifiers are automatic operations that affect an object in a non-destructive way. With modifiers,
you can perform many effects automatically that would otherwise be too tedious to do manually
(such as subdivision surfaces) and without affecting the base geometry of your object.

They work by changing how an object is displayed and rendered, but not the geometry which you can edit directly.
You can add several modifiers to a single object to form a :doc:`Modifier Stack </modeling/modifiers/the_stack>`
and *Apply* a modifier if you wish to make its changes permanent.


.. figure:: /images/modifiers_menu.png

   Modifiers Menu.


There are four types of modifiers:


Modify
   The *Modify* group of modifiers are tools similar to the *Deform Modifiers* (see below),
   but which do not directly affect the shape of the object;
   rather they affect some other data, such as vertex groups.

Generate
   The *Generate* group of modifiers are constructive tools that either change the
   general appearance of or automatically add new geometry to an object.

Deform
   The *Deform* group of modifiers only change the shape of an object without adding new geometry,
   and are available for meshes, and often texts, curves, surfaces and/or lattices.

Simulate
   The *Simulate* group of modifiers activate simulations. In most cases, these
   modifiers are automatically added to the modifiers stack whenever a *Particle System*
   or *Physics* simulation is enabled. Their only role is to define the
   place in the modifier stack used as base data by the tool they represent. Generally,
   the attributes of these modifiers are accessible in separate panels.


Interface
=========

.. figure:: /images/modifier-subsurf.jpg

   Panel Layout (Subsurf as an example)


Each modifier has been brought in from a different part of Blender,
so each has its own unique settings and special considerations. However,
each modifier's interface has the same basic components, see (*Panel Layout
(Subsurf as an example)*).

At the top is the *panel header*.
The icons each represent different settings for the modifier (left to right):

Arrow
   Collapse modifier to show only the header and not its options.
Icon
   A quick visual reference of the modifier's type.
Name
   Every modifier has a unique name per object. Two modifiers on one object must have unique names,
   but two modifiers on different objects can have the same name. The default name is based off the modifier type.
Camera
   Toggles visibility of the modifier effect in the render.
Eye
   Toggles visibility of the modifier effect in the 3D view.
Box
   Displays the modified geometry in edit mode, as well as the original geometry which you can edit.
Triangle
   When enabled, the final modified geometry will be shown in edit mode and can be edited directly.
Up arrow
   Moves modifier up in the stack.
Down arrow
   Moves modifier down in the stack.
Cross
   Deletes the modifier.

.. note:: The *Box* and *Triangle* icons may not be available depending on the type of modifier.

Below the header are two buttons:

Apply
   Makes the modifier "real" - converts the object's geometry to match the applied modifier,
   and deletes the modifier.
Copy
   Creates a duplicate of the modifier at the bottom of the stack.

.. warning::

   Applying a modifier that is not first in the stack will ignore the stack order and
   could produce undesired results.

Below this header, all of the options unique to each modifier will be displayed.


The Stack
---------

Modifiers are a series of non-destructive operations which can be applied on top of an objects geometry.
They can be applied in just about any order the users chooses.

This kind of functionality is often referred to as a "modifier stack"
and is also found in several other 3D applications.

In a modifier stack the order in which modifiers are applied has an effect on the result.
Fortunately modifiers can be rearranged easily by clicking the convenient up and down arrow icons.
For example, the image below shows :doc:`SubSurf </modeling/modifiers/generate/subsurf>` and
:doc:`Mirror </modeling/modifiers/generate/mirror>` modifiers that have switched places.

.. list-table::

   * - .. figure:: /images/modifier-stackorder-example2.jpg
          :width: 300px

     - .. figure:: /images/modifier-stackorder-examp1e1.jpg
          :width: 300px


On the left, the *Mirror* modifier is the last item in the stack and
the result looks like two surfaces. On the right, the *Subsurf* modifier is the last
item in the stack and the result is a single merged surface.

Modifiers are calculated from top to bottom in the stack.
In this example, the desired result (on right) is achieved by first mirroring the object,
and then calculating the subdivision surface.


Example
^^^^^^^

.. figure:: /images/modifier-stackorder-example3.jpg

   In this example a simple subdivided cube has been transformed into a rather complex object using
   a stack of modifiers.

`Download example file <https://wiki.blender.org/index.php/:File:25-Manual-Modifiers-example.blend>`__.
