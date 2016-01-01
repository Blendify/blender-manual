
*****
Alpha
*****

.. figure:: /images/render-freestyle-Line_Style_Alpha.jpg
   :width: 300px
   :align: right

   Line Style Alpha UI


In this tab you control the alpha (transparency) of your strokes.

Base Transparency
   The base alpha for this line style.


Modifiers
=========

There are four alpha modifiers available, which can be mixed with the base alpha using a subset of the usual methods
(see for example the :doc:`Mix compositing node </compositing/types/color/mix>` for further discussion of
this topic). As with other modifier stacks in Blender, they are applied from top to bottom.

Influence
   How much the result of this modifier affects the current transparency.


Along Stroke
------------

.. figure:: /images/render-freestyle-Line_Style_Alpha_Along_Stroke.jpg
   :width: 300px
   :align: right


The *Along Stroke* modifier alters the base alpha with a new one from either a
linear progression or a custom curve, mapped along each stroke's length. In other words,
it applies the selected progression along each stroke.

Mapping
   Either a linear progression (from ``0.0`` to ``1.0``, which may be inverted with the *Invert* option),
   or a custom mapping curve.


Distance from Camera
--------------------

The *Distance from Camera* modifier alters the base alpha with a new one from either
a linear progression or a custom curve, using the distance to the active camera as parameter.

.. figure:: /images/render-freestyle-Line_Style_Alpha_Distance_From_Camera.jpg
   :width: 300px
   :align: right

Mapping
   Either a linear progression (from ``0.0`` to ``1.0``, which may be inverted with the *Invert* option),
   or a custom mapping curve.

Range Min and Range Max
   The limits of the mapping from "distance to camera" to "alpha in mapping".
   If the current point of the stroke is at *Range Min* or less from the active camera,
   it will take the start alpha of the mapping, and conversely,
   if it is at *Range Max* or more from the camera, it will take the end alpha of the mapping.
   These values are in the current scene's units, not in pixels!

Fill Range by Selection
   Set the min/max range values from the distances between the current selected objects and the camera.


Distance from Object
--------------------

The *Distance from Object* modifier alters the base alpha with a new one from either
a linear progression or a custom curve, using the distance to a given object as parameter.

.. figure:: /images/render-freestyle-Line_Style_Alpha_Distance_From_Object.jpg
   :width: 300px
   :align: right

Target
   The object to measure distance from.

Mapping
   Either a linear progression (from ``0.0`` to ``1.0``, which may be inverted with the *Invert* option),
   or a custom mapping curve.

Range Min and Range Max
   The limits of the mapping from "distance to object" to "alpha in mapping".
   If the current point of the stroke is at *Range Min* or less from the target,
   it will take the start alpha of the mapping, and conversely,
   if it is at *Range Max* or more from the target, it will take the end alpha of the mapping.
   These values are in the current scene's units, not in pixels!

Fill Range by Selection
   Set the min/max range values from the distances between the current selected objects and the target.


Material
--------

The *Material* modifier alters the base alpha with a new one taken from the current
material under the stroke.

You can use various properties of the materials, among which some are multi-components (i.e.
give RGB results). In that case, the mean value will be used.

.. figure:: /images/render-freestyle-Line_Style_Alpha_Material.jpg
   :width: 300px
   :align: right

Mapping
   Either a linear progression (from ``0.0`` to ``1.0``, which may be inverted with the *Invert* option),
   or a custom mapping curve. Note the linear non-inverted option is equivalent to "do nothing",
   as original values from materials are already in the ``[0.0, 1.0]`` range.

If used with the *Split by Material* option in the *Stroke* tab,
the result will not be blurred between materials along the strokes.


Noise
-----

The *Noise* modifier uses a pseudo-random number generator to variably distribute transparency along the stroke.

.. figure:: /images/render_freestyle_ui_alpha_noise.png
   :width: 300px
   :align: right

Amplitude
   The maximum value of the noise. A higher amplitude means a less transparent (more solid) stroke.

Period
   The period of the noise. This means how quickly the alpha value can change. A higher value means a more smoothly
   changing transparency along the stroke.

Seed
   Seed used by the pseudo-random numer generator.

Mapping
   Either a linear progression (from ``0.0`` to ``1.0``, which may be inverted with the *Invert* option),
   or a custom mapping curve. Note the linear non-inverted option is equivalent to "do nothing",
   as original values from materials are already in the ``[0.0, 1.0]`` range.


Tangent
-------

.. figure:: /images/render_freestyle_ui_alpha_tangent.png
   :width: 300px
   :align: right

This modifier bases its effect on the traveling direction of the stroke evaluated at the stroke's vertices.

Mapping
   Either a linear progression (from ``0.0`` to ``1.0``, which may be inverted with the *Invert* option),
   or a custom mapping curve. Note the linear non-inverted option is equivalent to "do nothing",
   as original values from materials are already in the ``[0.0, 1.0]`` range.

Min Angle and Max Angle
   The range of input values to the mapping. Out-of-range input values will be clamped by the Min and Max angles
   and their corresponding alpha values.


3D Curvature
------------

A modifier based on radial curvatures of the underlying 3D surface.
The `curvature <https://en.wikipedia.org/wiki/Curvature>`__ of a 2D curve
at a point is a measure of how quickly the curve turns at the point.
The quicker the turn is, the larger the curvature is at the point.
The curvature is zero if the curve is a straight line.
Radial curvatures are those computed for a 2D curve that appears at the cross-section
between the 3D surface and a plane defined by the view point (camera location)
and the normal direction of the surface at the point.

For radial curvatures to be calculated (and therefore for this modifier to have any effect),
the *Face Smoothness* option has to be turned on and the object needs to have *Smooth Shading*.

.. figure:: /images/render_freestyle_ui_alpha_curvature3d.png
   :width: 300px
   :align: right

Mapping
   Either a linear progression (from ``0.0`` to ``1.0``, which may be inverted with the *Invert* option),
   or a custom mapping curve. Note the linear non-inverted option is equivalent to "do nothing",
   as original values from materials are already in the ``[0.0, 1.0]`` range.

Min Curvature and Max Curvature
   The limits of the mapping.
   If the current point of the stroke is at *Min Curvature* or less from the target,
   it will take the start alpha of the mapping, and conversely,
   if it is at *Max Curvature* or more from the target, it will take the end alpha of the mapping.


Crease Angle
------------

.. figure:: /images/render_freestyle_alpha_crease_angle.png
   :width: 400px
   :align: center

   Crease Angle modifier demo by T.K.
   `File:Render_freestyle_modifier_crease_angle.blend
   <http://wiki.blender.org/uploads/b/b4/Render_freestyle_modifier_crease_angle.blend>`__

A modifier based on the Crease Angle (angle between two adjacent faces). If a stroke segment doesn't lie on a crease
(i.e., the edge doesn't have the `Crease Angle nature
<http://www.blender.org/api/blender_python_api_2_74_release/freestyle.types.html#freestyle.types.Nature>`__),
its alpha value is not touched by this modifier.

.. figure:: /images/render_freestyle_ui_alpha_crease_angle.png
   :width: 300px
   :align: right

Mapping
   Either a linear progression (from ``0.0`` to ``1.0``, which may be inverted with the *Invert* option),
   or a custom mapping curve. Note the linear non-inverted option is equivalent to "do nothing",
   as original values from materials are already in the ``[0.0, 1.0]`` range.

Min Angle and Max Angle
   The range of input values to the mapping. Out-of-range input values will be clamped by the Min and Max angles
   and their corresponding alpha values.
