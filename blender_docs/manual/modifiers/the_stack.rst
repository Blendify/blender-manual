
*********
The Stack
*********

Modifiers are a series of non-destructive operations which can be applied on top of an objects geometry.
They can be applied in just about any order the users chooses.

This kind of functionality is often referred to as a "modifier stack"
and is also found in several other 3D applications.

In a modifier stack the order in which modifiers are applied has an effect on the result.
Fortunately modifiers can be rearranged easily by clicking the convenient up and down arrow icons.
For example, the image below shows :doc:`SubSurf </modifiers/generate/subsurf>` and
:doc:`Mirror </modifiers/generate/mirror>` modifiers that have switched places.


.. list-table::

   * - .. figure:: /images/Modifiers-stackorder-example2.jpg
          :width: 300px

     - .. figure:: /images/Modifiers-stackorder-examp1e1.jpg
          :width: 300px


On the left, the *Mirror* modifier is the last item in the stack and
the result looks like two surfaces. On the right, the *Subsurf* modifier is the last
item in the stack and the result is a single merged surface.

Modifiers are calculated from top to bottom in the stack.
In this example, the desired result (on right) is achieved by first mirroring the object,
and then calculating the subdivision surface.


Example
=======

.. figure:: /images/Modifiers-stackorder-example3.jpg

   In this example a simple subdivided cube has been transformed into a rather complex object using
   a stack of modifiers.

`Download example file <http://wiki.blender.org/index.php/:File:25-Manual-Modifiers-example.blend>`__.
