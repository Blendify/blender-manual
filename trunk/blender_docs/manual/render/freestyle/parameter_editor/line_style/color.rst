
*****
Color
*****

.. figure:: /images/Manual-2.6-Render-Freestyle-Line_Style_Color.jpg
   :width: 300px
   :align: right

   Line Style Color UI


In this tab you control the color of your strokes.

Base Color
   The base color for this line style.


Modifiers
=========

There are four color modifiers available, which can be mixed with the base color using the usual methods
(see for example the :doc:`Mix compositing node </composite_nodes/types/color/mix>` for further discussion of
this topic). As with other modifier stacks in Blender, they are applied from top to bottom.

Influence
   How much the result of this modifier affects the current color.


Along Stroke
------------

.. figure:: /images/Manual-2.6-Render-Freestyle-Color_Along_Stroke.jpg
   :width: 300px
   :align: right

The *Along Stroke* modifier alters the base color with a new one from a given color
ramp mapped along each stroke's length. In other words,
it applies a color ramp along each stroke.

Color Ramp
   A standard Blender color ramp.


Distance from Camera
--------------------

The *Distance from Camera* color modifier alters the base color with a new one from
a given color ramp, using the distance to the active camera as the parameter.

.. figure:: /images/Manual-2.6-Render-Freestyle-Color_Distance_From_Camera.jpg
   :width: 300px
   :align: right

Range Min and Range Max
   The limits of the mapping from "distance to camera" to "color in ramp".
   If the current point of the stroke is at *Range Min* or less from the active camera,
   it will take the start color of the ramp, and conversely,
   if it is at *Range Max* or more from the camera, it will take the end color of the ramp.
   These values are in the current scene's units, not in pixels!

Fill Range by Selection
   Set the min/max range values from the distances between the current selected objects and the camera.

The other settings are those of the standard Blender color ramp!


Distance from Object
--------------------

The *Distance from Object* color modifier alters the base color with a new one from
a given color ramp, using the distance to a given object as the parameter.

.. figure:: /images/Manual-2.6-Render-Freestyle-Color_Distance_From_Object.jpg
   :width: 300px
   :align: right

Target
   The object to measure distance from.

Range Min and Range Max
   The limits of the mapping from "distance to object" to "color in ramp".
   If the current point of the stroke is at *Range Min* or less from the target,
   it will take the start color of the ramp, and conversely,
   if it is at *Range Max* or more from the target, it will take the end color of the ramp.
   These values are in the current scene's units, not in pixels!

Fill Range by Selection
   Set the min/max range values from the distances between the current selected objects and the target.

The other settings are those of the standard Blender color ramp!


Material
--------

The *Material* color modifier alters the base color with a new one taken from the
current material under the stroke.

.. figure:: /images/Manual-2.6-Render-Freestyle-Color_Material.jpg
   :width: 300px
   :align: right

You can use various properties of the materials, among which many are mono-component (i.e.
give B&W results). In this case,
an optional color ramp can be used to map these grayscale values to colored ones.

If used with the *Split by Material* option in the *Stroke* tab,
the result will not be blurred between materials along the strokes.


.. figure:: /images/Lilies_Color_Material.jpg
   :width: 400px
   :align: center

   Material modifiers demo by T.K.
   `File:Lilies_Color_Material.zip <http://wiki.blender.org/index.php/File:Lilies_Color_Material.zip>`__


Noise
-----

The *Noise* modifier uses a pseudo-random number generator to variably distribute color along the stroke. 

.. figure:: /images/render_freestyle_ui_color_noise.png
   :width: 300px
   :align: right

Amplitude
   The maximum value of the noise. A higher amplitude means a less transparent (more solid) stroke.

Period
   The period of the noise. This means how quickly the color value can change. A higher value means a more smoothly
   changing color along the stroke.

Seed
   Seed used by the pseudo-random numer generator. 

Color Ramp
   A standard Blender color ramp that maps noise values to a stroke color.


Tangent 
-------

This modifier bases its effect on the traveling direction of the stroke evaluated at the stroke's vertices.

.. figure:: /images/render_freestyle_ui_color_tangent.png
   :width: 300px
   :align: right

Color Ramp
   A standard Blender color ramp that maps the traveling directio to a stroke color.

Min Angle and Max Angle 
   The range of input values to the mapping. Out-of-range input values will be clamped by the Min and Max angles 
   and their corresponding color values.


3D Curvature 
------------

.. figure:: /images/render_freestyle_color_curvature3d.png
   :width: 400px
   :align: center

   3D Curvature modifier demo by T.K.
   `File:Render_freestyle_modifier_curvature_3d.blend
   <http://wiki.blender.org/index.php/File:Render_freestyle_modifier_curvature_3d.blend>`__

A modifier based on radial curvatures of the underlying 3D surface.  The `curvature
<https://en.wikipedia.org/wiki/Curvature>`__ of a 2D curve at a point is a measure of how quickly the curve turns at the
point.  The quicker the turn is, the larger the curvature is at the point.  The curvature is zero if the curve is a
straight line.  Radial curvatures are those computed for a 2D curve that appears at the cross-section between the 3D
surface and a plane defined by the view point (camera location) and the normal direction of the surface at the point.

For radial curvatures to be calculated (and therefore for this modifier to have any effect), the *Face Smoothness* 
option has to be turned on and the object needs to have *Smooth Shading*. 

.. figure:: /images/render_freestyle_ui_color_curvature3d.png
   :width: 300px
   :align: right

Color Ramp
   A standard Blender color ramp that maps the radial curvature to a stroke color.
   
Min Curvature and Max Curvature 
   The limits of the color ramp.
   If the current point of the stroke is at *Min Curvature* or less from the target,
   it will take the start color of the mapping, and conversely,
   if it is at *Max Curvature* or more from the target, it will take the end color of the mapping.


Crease Angle 
------------

.. figure:: /images/render_freestyle_color_crease_angle.png
   :width: 400px
   :align: center

   Crease Angle modifier demo by T.K.
   `File:Render_freestyle_modifier_crease_angle.blend
   <http://wiki.blender.org/uploads/b/b4/Render_freestyle_modifier_crease_angle.blend>`__

A modifier based on the Crease Angle (angle between two adjacent faces). If a stroke segment doesn't lie on a crease, 
(the edge doesn't have the `Crease Angle nature
<http://www.blender.org/api/blender_python_api_2_75_0/freestyle.types.html#freestyle.types.Nature>`__)
it's values are not touched by this modifier. 

.. figure:: /images/render_freestyle_ui_color_crease_angle.png
   :width: 300px
   :align: right


Color Ramp
   A standard Blender color ramp that maps the radial curvature to a stroke color.

Min Angle and Max Angle 
   The range of input values to the mapping. Out-of-range input values will be clamped by the Min and Max angles 
   and their corresponding color values.
