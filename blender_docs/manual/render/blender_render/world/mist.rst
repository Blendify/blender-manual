.. _bpy.types.WorldMistSettings:

****
Mist
****

Mist can greatly enhance the illusion of depth in your rendering. To create mist,
Blender makes objects farther away more transparent (decreasing their Alpha value)
so that they mix more of the background color with the object color. With Mist enabled,
the further the object is away from the camera the less its alpha value will be.


Options
=======

.. figure:: /images/render_blender-render_world_mist_panel.png
   :width: 305px

   Mist panel.

Mist checkbox
   Toggles mist on and off.
Minimum
   An overall minimum intensity, or strength, of the mist.
Start
   The distance from the camera at which the mist starts to fade in.
Depth
   The distance from *Start* of the mist, that it fades in over.
   Objects further from the camera than *Start + Depth* are completely hidden by the mist.
Height
   Makes the mist intensity decrease with height, for a more realistic effect.
   If greater than 0, it sets, in Blender units,
   an interval around z=0 in which the mist goes from maximum intensity (below) to zero (above).
Falloff
   The decay rate of the mist (*Quadratic*, *Linear*, *Inverse Quadratic*).
   These settings control the rate of change of the mist's strength further and further into the distance.

.. note:: Mist distances

   To visualize the mist distances in the 3D View, select your camera, go to the camera menu, and enable *Show Mist*.

   The camera will show mist limits as a line projecting from the camera starting from
   *Start* and of distance *Depth*.

   To get a better view to evaluate the *Mist* visualization,
   :kbd:`Shift-Numpad1` with the camera selected and
   :kbd:`Numpad5` to toggle perspective view on and off.
   This will place the 3D View right over the camera looking down.


Transparency
============

Because *Mist* works by adjusting transparency,
this can sometimes cause objects to be partially transparent when they should not be.
One workaround is to set the Mist settings as desired, but turn Mist off.
The Mist data is still available for compositing even though it is off.
Use :doc:`Do Composite </compositing/index>`
and the :doc:`Node Editor </editors/node_editor/index>` to feed the Mist pass to
an :doc:`Alpha Over </compositing/types/color/alpha_over>` to blend the background color
(or a render layer with just the sky) with the rendered image.
This produces the mist effect but since Mist is off the object transparency (or lack of) is preserved.


Examples
========

.. figure:: /images/render_blender-render_world_mist_example1.jpg

   Mist example.

In this example (`blend-file <https://wiki.blender.org/index.php/:File:25-Manual-World-Mist-Example1.blend>`__)
the :menuselection:`Mist --> Height` options has been limited to create smoke covering the floor.
