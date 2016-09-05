
************
Curve Deform
************

*Curve Deform* provides a simple but efficient method of defining a deformation on a mesh.
By parenting a mesh object to a curve, you can deform the mesh up or down the curve by moving the mesh along,
or orthogonal to, the dominant axis.
This is a most useful tool to make an object follow a complex path,
like e.g. a sheet of paper inside a printer, a film inside a camera, the water of a canal...

The *Curve Deform* works on a (global) dominant axis, X, Y, or Z.
This means that when you move your mesh in the dominant direction,
the mesh will traverse along the curve. Moving the mesh in an orthogonal direction will move
the mesh object closer or further away from the curve.
The default settings in Blender map the Y axis to the dominant axis. When you move the object
beyond the curve endings the object will continue to deform based on the direction vector of
the curve endings.

If the "curve path" is *3D*, the *Tilt* value of its control points will be used
(see the :doc:`Extrusion </modeling/curves/editing/extrude>` section above)
to twist the "curved" object around it.
Unfortunately, the other *Radius* property is not used (it would have been possible, for example,
to make it control the size of the "curved" object...).

.. tip::

   Try to position your object over the curve immediately after you have added it,
   before adding the curve deform. This gives the best control over how the deformation works.

.. note:: Use modifiers!

   The *Curve Deform* relationship is now also a modifier, called :doc:`Curve </modeling/modifiers/deform/curve>`.
   The *Curve* modifier function acts the same as its counterpart,
   except that when the modifier is used, the "dominant axis" is set inside its properties --
   and the *Track* X, Y, Z buttons no longer have an effect on it.
   And you have some goodies, like the possibility, if "curving" a mesh, to only curve one of its vertex groups...


Interface
=========

.. figure:: /images/curvesdeform_parentmenu.png

   Make Parent menu.


When parenting an object (mesh, curve, meta, ...) to a curve :kbd:`Ctrl-P`,
you will be presented with a menu (*Make Parent* *menu*).

By selecting *Curve Deform*, you enable the curve deform function on the mesh object.

.. figure:: /images/curvesdeform_animpanel.jpg

   Animation settings panel.


The dominant axis setting is set on the mesh object.
By default the dominant axis in Blender is the Y Axis.
This can be changed by selecting one of the
*Track* X, Y or Z buttons in the *Animation* Panel,
(*Animation settings panel*), in Object tab.

Cyclic (or closed)
curves work as expected where the object deformations traverse along the path in cycles.
Note however that when you have more than one curve in the "parent" object,
its "children" will only follow the first one.

.. figure:: /images/curve-shape_panel.png

   Curve Shape Panel.


The *Stretch* curve option allows you to let the mesh object stretch, or squeeze, over the entire curve.
This option is in *Object Data* properties.


Example
=======

Let us make a simple example:

- Remove default cube object from scene and add a Monkey with
  :menuselection:`Add --> Mesh --> Monkey`
- Press :kbd:`Tab` to exit *Edit Mode*.
- Now add a curve with :menuselection:`Add --> Curve --> Bézier Curve`.

.. _fig-curves-deform-edit:

.. figure:: /images/curvesdeform_exampleeditcurve.png

   Edit Curve.


- While in *Edit Mode*, move the control points of the curve
  as shown in Fig. :ref:`fig-curves-deform-edit`, then exit *Edit Mode* :kbd:`Tab`.

.. _fig-curves-deform-monkey-curve:

.. figure:: /images/curvesdeform_examplemonkeyoncurve1.png

   Monkey on a Curve.


- Now, you can use the new, modern, modifier way of "curving" the Monkey:

  - Select the Monkey :kbd:`RMB`.
  - In the *Object Modifiers* properties, *Modifiers* panel, add a *Curve* modifier.
  - Type the name of the curve (should be "Curve") in the *Ob* field of the modifier,
    and optionally change the dominant axis to Y.
- Or you can choose the old, deprecated method (note that it creates a "virtual" modifier...):

  - Select the Monkey :kbd:`RMB`, and then shift select the curve :kbd:`Shift-RMB`.
  - Press :kbd:`Ctrl-P` to open up the *Make Parent* menu.
  - Select :menuselection:`Make Parent --> Curve Deform`.
- The Monkey should be positioned on the curve, as in Fig. :ref:`fig-curves-deform-monkey-curve`.
- Now if you select the Monkey :kbd:`RMB`, and move it :kbd:`G`,
  in the Y-direction (the dominant axis by default), the monkey will deform nicely along the curve.

.. tip::

   If you press :kbd:`MMB` (or one of :kbd:`X`, :kbd:`Y`, :kbd:`Z`)
   while moving the Monkey you will constrain the movement to one axis only.


- In Fig. :ref:`fig-curves-deform-monkey-deform`, you can see the Monkey at different positions along the curve.

.. tip::

   Moving the Monkey in directions other than the dominant axis will create some odd deformations.
   Sometimes this is what you want to achieve, so you will need to experiment and try it out!

.. _fig-curves-deform-monkey-deform:

.. figure:: /images/curvesdeform_examplemonkeyoncurve2.jpg

   Monkey deformations.
