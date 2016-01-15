
*********
Thickness
*********

In this tab you control the thickness of your strokes.

.. figure:: /images/render-freestyle-Line_Style_Thickness.jpg
   :width: 300px
   :align: right

Base Thickness
   The base thickness for this line style.

Thickness Position
   Control the position of stroke thickness from the original (backbone) stroke geometry. There are four choices:

   Center
      The thickness is evenly split to the left and right side of the stroke geometry.
   Inside
      The strokes are drawn within object boundary.
   Outside
      The strokes are drawn outside the object boundary.
   Relative
      This allows you to specify the relative position by a number between ``0.0`` (inside) and ``1.0`` (outside),
      in the *Thickness Ratio* numeric field just below.

The thickness position options are applied only to strokes of edge types
*Silhouette* and *Border*,
since these are the only edge types defined in terms of the object boundary.
Strokes of other edge types are always drawn using the *Center* option.


Modifiers
=========

There are five thickness modifiers available,
which can be mixed with the base thickness using a subset of the usual methods
(see for example the :doc:`Mix compositing node </compositing/types/color/mix>`
for further discussion of this topic). As with other modifier stacks in Blender,
they are applied from top to bottom.

Influence
   How much the result of this modifier affects the current thickness.


Along Stroke
------------

The *Along Stroke* modifier alters the base thickness with a new one from either a
linear progression or a custom curve, mapped along each stroke's length. In other words,
it applies the selected progression along each stroke.

.. figure:: /images/render-freestyle-Line_Style_Thickness_Along_Stroke.jpg
   :width: 300px
   :align: center

Mapping
   Either a linear progression (from ``0.0`` to ``1.0`` which may be inverted with the *Invert* option),
   or a custom mapping curve.


Calligraphy
-----------

The *Calligraphy* modifier mimics some broad and flat pens for calligraphy.
It generates different thickness based on the orientation of the stroke.

.. figure:: /images/render-freestyle-Line_Style_Thickness_Calligraphy.jpg
   :width: 300px
   :align: right

Orientation
   The angle (orientation) of the virtual drawing tool, from the vertical axis of the picture.
   For example, an angle of ``0.0`` mimics a pen aligned with the vertical axis, hence the thickest
   strokes will be the vertical ones, and the thinnest, the horizontal ones.

Min Thickness and Max Thickness
   The minimum and maximum generated thickness (as explained above,
   minimum is used when the stroke's direction is perpendicular to the main *Orientation*, and maximum,
   when aligned with it).


.. figure:: /images/Toycar_Calligraphy.jpg
   :width: 400px

   Calligraphy modifier demo by T.K.
   `File:Toycar_Calligraphy.zip <http://wiki.blender.org/index.php/File:Toycar_Calligraphy.zip>`__


Distance from Camera
--------------------

The *Distance from Camera* modifier alters the base thickness with a new one from
either a linear progression or a custom curve,
using the distance to the active camera as the parameter.

.. figure:: /images/render-freestyle-Line_Style_Thickness_Distance_From_Camera.jpg
   :width: 300px
   :align: right

Mapping
   Either a linear progression (from ``0.0`` to ``1.0`` which may be inverted with the *Invert* option),
   or a custom mapping curve.

Range Min and Range Max
   The limits of the mapping from "distance to camera" to "thickness in mapping".
   If the current point of the stroke is at *Range Min* or less from the active camera,
   it will take the start thickness of the mapping, and conversely,
   if it is at *Range Max* or more from the camera, it will take the end thickness of the mapping.
   These values are in the current scene's units, not in pixels!


Fill Range by Selection
   Set the min/max range values from the distances between the current selected objects and the camera.


Distance from Object
--------------------

The *Distance from Object* modifier alters the base thickness with a new one from
either a linear progression or a custom curve,
using the distance to a given object as parameter.

.. figure:: /images/render-freestyle-Line_Style_Thickness_Distance_From_Object.jpg
   :width: 300px
   :align: right

Target
   The object to measure distance from.

Mapping
   Either a linear progression (from ``0.0`` to ``1.0`` which may be inverted with the *Invert* option),
   or a custom mapping curve.

Range Min and Range Max
   The limits of the mapping from "distance to object" to "alpha in mapping".
   If the current point of the stroke is at *Range Min* or less from the target,
   it will take the start thickness of the mapping, and conversely,
   if it is at *Range Max* or more from the target, it will take the end thickness of the mapping.
   These values are in the current scene's units, not in pixels!

Fill Range by Selection
   Set the min/max range values from the distances between the current selected objects and the target.


Material
--------

The *Material* modifier alters the base thickness with a new one taken from the
current material under the stroke.

You can use various properties of the materials, among which some are multi-components (i.e.
give RGB results). In that case, the mean value will be used.

.. figure:: /images/render-freestyle-Line_Style_Thickness_Material.jpg
   :width: 300px
   :align: right

Mapping
   Either a linear progression (from ``0.0`` to ``1.0`` which may be inverted with the *Invert* option),
   or a custom mapping curve. Note the linear non-inverted option is equivalent to "do nothing",
   as original values from materials are already in the [0.0, 1.0] range...

If used with the *Split by Material* option in the *Stroke* tab,
the result will not be blurred between materials along the strokes.


Noise
-----

.. figure:: /images/render-freestyle_geometry_simplification.png
   :width: 400px
   :align: center

   Effect generated with a noise thickness modifier using asymmetric thickness.

The *Noise* modifier uses a pseudo-random number generator to variably distribute thickness along the stroke.

.. figure:: /images/render-freestyle_ui_thickness_noise.png
   :width: 300px
   :align: right

Min Thickness and Max Thickness
   The minimum and maximum assigned thickness.

Asymmetric
   Allows the thickness to be distributed unevenly at every point. Internally, the stroke is represented as a
   backbone with a thickness to the right and left side. All other thickness shaders make sure that the left
   and right thickness values are equal. For the Noise shader however, a meaningful (and good-looking) result
   can be created by assigning different values to either side of the backbone.


Tangent
-------

This modifier bases its effect on the traveling direction of the stroke evaluated at the stroke's vertices.

.. figure:: /images/render-freestyle_ui_thickness_tangent.png
   :width: 300px
   :align: right

Min Thickness and Max Thickness
   The minimum and maximum assigned thickness.

Mapping
   Either a linear progression (from *Min Thickness* to *Max Thickness*, which may be inverted with the
   *Invert* option), or a custom mapping curve (on the same range).

Min Angle and Max Angle
   The range of input values to the mapping. Out-of-range input values will be clamped by the Min and Max angles
   and their corresponding thickness values.


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

.. figure:: /images/render-freestyle_ui_thickness_curvature3d.png
   :width: 300px
   :align: right

Min Thickness and Max Thickness
   The minimum and maximum assigned thickness.

Mapping
   Either a linear progression (from *Min Thickness* to *Max Thickness*, which may be inverted with the *Invert*
   option), or a custom mapping curve (on the same range).

Min Curvature and Max Curvature
   The limits of the mapping of the Min and Max Thickness.
   If the current point of the stroke is at *Min Curvature* or less from the target,
   it will take the start thickness of the mapping, and conversely,
   if it is at *Max Curvature* or more from the target, it will take the end thickness of the mapping.


Crease Angle
------------

.. figure:: /images/render-freestyle_thickness_crease_angle.png
   :width: 400px
   :align: center

   Crease Angle modifier demo by T.K.
   `File:Render_freestyle_modifier_crease_angle.blend
   <http://wiki.blender.org/uploads/b/b4/Render_freestyle_modifier_crease_angle.blend>`__

A modifier based on the Crease Angle (angle between two adjacent faces). If a stroke segment doesn't lie on a crease
(i.e., the edge doesn't have the `Crease Angle nature
<http://www.blender.org/api/blender_python_api_2_74_release/freestyle.types.html#freestyle.types.Nature>`__),
its thickness value is not touched by this modifier.

.. figure:: /images/render-freestyle_ui_thickness_crease_angle.png
   :width: 300px
   :align: right

Min Thickness and Max Thickness
   The minimum and maximum assigned thickness.

Mapping
   Either a linear progression (from *Min Thickness* to *Max Thickness*, which may be inverted with the *Invert*
   option), or a custom mapping curve (on the same range).
