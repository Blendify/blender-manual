
**********
Screw Tool
**********

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Panel:    :menuselection:`Edit Mode --> Mesh Tools` or :kbd:`T` :menuselection:`--> Add --> Screw Button`


he *Screw* tool combines a repetitive *Spin* with a translation,
to generate a screw-like, or spiral-shaped, object. Use this tool to create screws, springs,
or shell-shaped structures (Sea shells, Wood Screw Tips, Special profiles, etc).

The main difference between the Screw Tool and the :doc:`Screw Modifier </modeling/modifiers/generate/screw>`
is that the Screw Tool can calculate the angular progressions using the basic profile angle automatically.
Or it can adjusting the Axis angular vector without using a second modifier (for example,
using the Screw Modifier with a Bevel Modifier, Curve Modifier, etc...),
resulting in a much cleaner approach for vertex distribution and usage.

This tool works using open or closed profiles, as well as profiles closed with faces.
You can use profiles like an open-edge part that is a part of a complete piece,
as well as a closed circle or a half-cut sphere, which will also close the profile end.

You can see some examples of Meshes generated with the *Screw* tool
in Fig. :ref:`fig-mesh-screw-wood` and Fig. :ref:`fig-mesh-screw-spring`.

.. list-table::

   * - .. _fig-mesh-screw-wood:

       .. figure:: /images/modeling_mesh_screw_screw_example_shell.png
          :width: 320px

          Wood Screw tip done with the screw tool.

     - .. _fig-mesh-screw-spring:

       .. figure:: /images/modeling_mesh_screw_screw_example_spring.png
          :width: 320px

          Spring done with the screw tool.


Usage
=====

This tool works only with Meshes.
In *Edit Mode*, the button for the *Screw* tool operation is located in the *Mesh Tools* Panel,
:kbd:`T` :menuselection:`--> Add --> Screw Button`.
To use this tool, you need to create at least one open profile or line to be used as a vector for the height,
angular vector and to give Blender a direction.

The *Screw* function uses two points given by the open line to create an initial vector to calculate the height
and basic angle of the translation vector that is added to the "Spin" for each full rotation (see examples below).
If the vector is created with only two vertices at the *same* (X, Y, Z) location
(which will not give Blender a vector value for height), this will create a normal "Spin".

Having at least one vector line,
you can add other closed support profiles that will follow this vector during the extrusions (See limitations).
The direction of the extrusions is calculated by two determinant factors,
your point of view in Global Space and the position of your cursor in the 3D View using Global coordinates.
The profile and the vector must be fully selected in *Edit Mode* before you click the *Screw Button*
(See Limitations.)
When you have the vector for the open profile and the other closed profiles selected, click the *Screw* Button.


Limitations
===========

There are strict conditions about your profile selection when you want to use this tool.
You must have at least one open line or open profile,
giving Blender the starting Vector for extrusion,
angular vector and height. (e.g. a simple edge, a half circle, etc...).
You need only to ensure that at least one reference line has two "free" ends.
If two open Lines are given, Blender will not determine which of them is the vector,
and will then show you an error message,
``"You have to select a string of connected vertices too"``.
You need to select all of the profile vertices that will participate in the *Screw*
Tool operation; if they are not properly selected,
Blender will also show you the same message.

Note that the open line is always extruded, so if you only use it to "guide" the screw,
you will have to delete it after the tool completion (use linked-selection,
:kbd:`Ctrl-L`, to select the whole extrusion of the open line).

If there is any problem with the selection or profiles,
the tool will warn you with the error message:
``"You have to select a string of connected vertices too"`` as seen
in Fig. :ref:`fig-mesh-screw-error-info` and Fig. :ref:`fig-mesh-screw-error-popup`,
both in the Info Editor and at the place where you clicked to start performing the operation
(when you click the Screw Button).

.. _fig-mesh-screw-error-info:

.. figure:: /images/modeling_mesh_screw_error_msg_info_editor.jpg

   Screw Error message in the Header of the Info editor.

.. _fig-mesh-screw-error-popup:

.. figure:: /images/modeling_mesh_screw_error_msg_screw_tool.png

   Error message when clicking in the Screw Tool with an incorrect or bad selection.


You may have as many profiles as you like (like circles, squares, and so on)
-- Note that not all vertices in a profile need to be in the same plane,
even if this is the most common case. You may also have other, more complex,
selected closed islands, but they have to be closed profiles because Blender will seek for
only one open profile for the translation, height and angular vector.
Some closed meshes that overlap themselves may not screw correctly (for example:
Half UVsphere works fine, but
more than half could cause the Screw Tool to have wrong behavior or errors),
and profiles that are closed with faces (like a cone or half sphere)
will be closed automatically at their ends, like if you were extruding a region.


.. tip:: Simple way to not result in error

   Only one open Profile, all of the others can be closed, avoid volumes and some profiles closed with faces...


Options
=======

This tool is an interactive and modal tool, and only works in the *Edit Mode*.

Once you click in the *Screw* tool in the Mesh Tools Panel,
Blender will enter in the *Screw* interactive mode, and the Operator Panel at the
end of the Mesh Tools Panel will be replaced so you can adjust the values explained below.
To show the Mesh Tools Panel,
use the shortcut :kbd:`T` in the Edit Mode of the 3D View editor.

Once you perform any other operation,
Blender leaves the interactive mode and accepts all of the values. Because it is modal, you
cannot return to the interactive mode after completing/leaving the operation or changing from
*Edit Mode* to *Object Mode*.
If you want to restart the operation from its beginning,
you can press :kbd:`Ctrl-Z` at any time in *Edit Mode*.

The basic location of the cursor at the point of view (using Global coordinates)
will determine around which axis the selection is extruded and spun at first
(See Fig. :ref:`fig-mesh-screw-transform-panel`).
Blender will copy your cursor location coordinates to the
values present in the *Center* values of the *Screw* interactive Panel.
Depending on the Global View position, Blender will automatically add a value of 1 to one of the Axis Vectors,
giving the profiles a starting direction for the Screw Operation and also giving a direction for the extrusions.
(See examples below.)

The position of the 3D cursor will be the starting center of the rotation.
Subsequent operations (e.g. pressing the Screw button again), will start from the last selected element.
Continuous operations without changing the selection will repeat the operation continuously from the last point.

.. _fig-mesh-screw-transform-panel:

.. figure:: /images/modeling_mesh_screw_cursor_basic_location.png

   :menuselection:`Properties region --> Cursor`.

.. _fig-mesh-screw-interactive-panel:

.. figure:: /images/modeling_mesh_screw_screw_interactive_panel.jpg

   Screw Tools Operator Panel (Edit Mode).


Center
   These numeric fields specify the center of the spin. When the tool is called for the first time,
   it will copy the (X, Y, Z) location (Global Coordinates)
   of the cursor presently in the 3D View to start the operation.
   You can specify the cursor coordinates using the Transform Panel in 3D View,
   using shortcut :kbd:`T` to toggle the Panel, and typing in the 3D Cursor Location coordinates.
   You can adjust these coordinates interactively and
   specify another place for the spin center during the interactive session.
   (See Fig. :ref:`fig-mesh-screw-interactive-panel`)
Steps
   This number button specifies how many extrusion(s) will be done for each 360 degree turn.
   The steps are evenly distributed by dividing 360 degree by the number of steps given. The minimum value is 3;
   the maximum is 256 (See Fig. :ref:`fig-mesh-screw-interactive-panel`)
Turns
   This number button specifies how many turns will be executed.
   Blender will add a new full 360 degree turn for each incremental number specified here.
   The minimum value is 1; the maximum is 256. (See Fig. :ref:`fig-mesh-screw-interactive-panel`)
Axis
   These three numeric fields vary from (-1.0 to 1.0) and are clamped above those limits.
   These values correspond to angular vectors from (-90 to 90) degrees. Depending on the position where you
   started your cursor location and Object operation in the viewport and its axis positions in Global View space and
   coordinates, Blender will give the proper Axis vector a value of 1, giving the angular vector of the profile
   a starting direction and giving the extrusions a starting direction based on your view. Blender will let you
   adjust your axis angular vectors and you can tweak your object such that you can revert the direction of the screw
   operation (by reverting the angular vector of the height),
   meaning you can revert the clockwise and counterclockwise direction of some operations,
   and also adjust the angular vectors of your profile, bending it accordingly.
   (See Fig. :ref:`fig-mesh-screw-interactive-panel`)


Examples
========

The Spring example
------------------

.. _fig-mesh-screw-circle:

.. figure:: /images/modeling_mesh_screw_screw_circle_moved_x_-3bu.png

   Circle placed at X (-3, 0, 0).


#. Open Blender and delete the default Cube.
#. Change from perspective to orthographic view using shortcut :kbd:`Numpad5`.
#. Change your view from *User Ortho* to *Front Ortho*, using the shortcut :kbd:`Numpad1`.
   You will see the X (red) and Z (blue) coordinate lines.
#. In case you have moved your cursor by clicking anywhere in the screen, again place your cursor at the Center,
   using the shortcut :kbd:`Shift-S` choosing *Cursor to Center* or the Transform Panel,
   placing your cursor at (0, 0, 0) typing directly into the Cursor 3D Location.
#. Add a circle using shortcut :kbd:`Shift-A` :menuselection:`--> Mesh --> Circle`.
#. Rotate this circle using the shortcut :kbd:`R X 9 0` and :kbd:`Return`.
#. Apply the Rotation using :kbd:`Ctrl-A` and choosing *Rotation*
#. Grab and move this circle three Blender Units on the *X-Axis* to the left;
   you can use the shortcut :kbd:`Ctrl` while grabbing with the mouse using the standard transform widgets
   (clicking on the red arrow shown with the object and grabbing while using shortcut
   :kbd:`Ctrl` until the down left info in the 3D View marks ``D. -3.0000 (3.0000) Global`` ),
   or press the shortcut :kbd:`G X Minus 3` and :kbd:`Return`.
   You can use the Transform Panel (toggled with the shortcut :kbd:`T` ,
   and type  :kbd:`Minus 3` and :kbd:`Return` in the Location too.
   (See the Fig. :ref:`fig-mesh-screw-circle`).
#. You will have to scale your circle using the shortcut :kbd:`S . 5`, then :kbd:`Return`.
#. Now enter *Edit Mode* using shortcut :kbd:`Tab`.
#. De-select all vertices using the shortcut :kbd:`A`.

Now we will create a height vector for Blender:

.. _fig-mesh-screw-profile:

.. figure:: /images/modeling_mesh_screw_spring_profile_ready.png

   Profile and vector created.


#. Press :kbd:`Ctrl` and Left click :kbd:`LMB` near the circle,
   in more or less at the light gray line of the square above the circle,
   and, while still pressing :kbd:`Ctrl`, Left Click :kbd:`LMB` again in the gray line below the circle.
   You have created two vertices and an Edge, which Blender will use as the first height and angle vector.
#. Now, in the Transform Panel, in the median, clicking in the Global coordinates,
   for the (X, Y, Z) coordinates, put (-2, 0, -1).
#. Right Click :kbd:`RMB` in the other vertex,
   and again, type its coordinates for (X, Y, Z) to (-2, 0, 1).
   This will create a straight vertical line with 2 Blender units of Height.
#. De-select and select everything again with the shortcut :kbd:`A`.
   (See Fig. :ref:`fig-mesh-screw-profile`)
#. Place again your cursor at the center. (Repeat step 2)
#. At this point, we will save this blend-file to recycle the
   Spring for another exercise; click with :kbd:`LMB` in *File*,
   it is placed at the header of the Info editor, (At the top left side), and choose *Save as*.
   Our suggestion is to name it *Screw Spring Example.blend* and click in *Save as blend-file*.
   You can also use the shortcut :kbd:`Shift-Ctrl-S`
   to open the File Browser in order to save your blend-file.
#. Click Screw and adjust the Steps and Turns as you like and we have a nice spring,
   but now here comes the interesting part!


Clockwise and Counterclockwise using the Spring Example
-------------------------------------------------------

Still in the interactive session of the *Screw Tool*,
you will see that the *Z-Axis* Value of the *Screw* Panel is set to 1.000.
Left click :kbd:`LMB` in the middle of the Value and set this value to -1.000.
At first, the Spring was being constructed in a Counterclockwise direction,
and you reverted the operation 180 degrees in the *Z-Axis*. This is because you have
changed the angular vector of the height you have given to Blender to the opposite direction
(remember, -90 to 90 = 180 degrees ?). See Fig. :ref:`fig-mesh-screw-clock`.

.. _fig-mesh-screw-clock:

.. list-table:: Spring direction.

   * - .. figure:: /images/modeling_mesh_screw_screw_spring_counterclockwise.png
          :width: 320px

          Counterclockwise direction.

     - .. figure:: /images/modeling_mesh_screw_screw_spring_clockwise.png
          :width: 320px

          Flipped to Clockwise direction.


It is also important to note that this vector is related to the same height vector axis used
for the extrusion and we have created a parallel line with the *Z-Axis*, so, the
sensibility of this vector is in practical sense reactive only to negative and positive values
because it is aligned with the extrusion axis. Blender will clamp the positive and negative to
its maximum values to make the extrusion follow a direction,
even if the profile starts reverted. The same rule applies to other Global axes when creating
the Object for the *Screw* Tool;
this means if you create your Object using the Top View
(Shortcut :kbd:`Numpad7` with a straight parallel line following another axis
(for the Top View, the *Y-Axis*), the vector that gives the height for extrusion will also
change abruptly from negative to positive and vice versa to give the extrusion a direction,
and you will have to tweak the corresponding Axis accordingly to achieve the Clockwise and
Counterclockwise effect.

.. note:: Vectors that are not parallel with Blender Axis

   The high sensibility for the vector does not apply to vectors that give the Screw Tool a starting angle
   (Ex: any non-parallel vector),
   meaning Blender will not need to clamp the values to stabilize a direction for the extrusion, as the inclination of
   the vector will be clear for Blender and you will have the full degree of freedom to change the vectors. Our
   example is important because it only changes the direction of the profile without the tilt and/or bending effect,
   as there is only one direction for the extrusion, parallel to one of the Blender Axes.


Bending the Profiles using the Spring Example
---------------------------------------------

Still using the Spring Example, we can change the remaining vector for the angles that are not
related to the extrusion Axis of our Spring, thus bending our spring with the remaining
vectors and creating a profile that will also open and/or close because of the change in
starting angular vector values. What we are really doing is changing the starting angle of the
profile prior to the extrusions. It means that Blender will connect each of the circles
inclined with the vector you have given.
Below we show two bent Meshes using the Axis vectors and the Spring example.
See Fig. :ref:`fig-mesh-screw-angle`. These two Meshes generated
with the *Screw* tool were created using the Top Ortho View.

.. _fig-mesh-screw-angle:

.. list-table:: Bended Mesh.

   * - .. figure:: /images/modeling_mesh_screw_angular_vector_example_1.png
          :width: 320px

          The Axis will give the profile a starting vector angle.

     - .. figure:: /images/modeling_mesh_screw_angular_vector_example_2.png
          :width: 320px

          The vector angle is maintained along the extrusions.


Creating perfect Screw Spindles
-------------------------------

Using the Spring Example, it is easy to create perfect Screw Spindles
(like the ones present in normal screws that we can buy in hardware stores).
Perfect Screw Spindles use a profile with the same height as its vector, and the beginning and
ending vertex of the profile are placed at a straight parallel line with the axis of
extrusion. The easiest way of achieving this effect is to create a simple profile where the
beginning and ending vertices create a straight parallel line. Blender will not take into account
any of the vertices present in the middle but those two to take its angular vector,
so the spindles of the screw (which are defined by the turns value)
will assembly perfectly with each other.

#. Open Blender and click in *File* located at the header of the Info editor again,
   choose *Open Recent* and the file we saved for this exercise.
   All of the things will be placed exactly the way you saved before.
   Choose the last saved blend-file; in the last exercise,
   we gave it the name *Screw Spring Example.blend*.
#. Press the shortcut :kbd:`A` to de-select all vertices.
#. Press the shortcut :kbd:`B`, and Blender will change the cursor; you are now in border selection mode.
#. Open a box that selects all of the circle vertices except the
   two vertices we used to create the height of the extrusions in the last example.
#. Use the shortcut :kbd:`X` to delete them.
#. Press the shortcut :kbd:`A` to select the remaining vertices.
#. Press the shortcut :kbd:`W` for the *Specials Menu*, and select *Subdivide*
#. Now, click with the Right Mouse button at the middle vertex.
#. Grab this vertex using the shortcut :kbd:`G X Minus 1` and :kbd:`Return`.
   See Fig. :ref:`fig-mesh-screw-spindle`.
#. At this point, we will save this blend-file to recycle the generated Screw for another exercise;
   click with :kbd:`LMB` in *File* --
   it is in the header of the Info editor (at the top left side), and choose *Save as*.
   Our suggestion is to name it *Screw Hardware Example.blend* and click in *Save as blend-file*.
   You can also use the shortcut :kbd:`Shift-Ctrl-S` to open the
   File Browser in order to save your blend-file.
#. Press shortcut :kbd:`A` twice to de-select and select all vertices again.
#. Now press Screw.
#. Change Steps and Turns as you like. Fig. :ref:`fig-mesh-screw-generated-mesh` - Shows you an example of the results.

.. list-table::

   * - .. _fig-mesh-screw-spindle:

       .. figure:: /images/modeling_mesh_screw_screw_perfect_spindle_profile.png
          :width: 320px

          Profile for a perfect screw spindle.

          The starting and ending vertices are forming a parallel line with the Blender Axis.

     - .. _fig-mesh-screw-generated-mesh:

       .. figure:: /images/modeling_mesh_screw_screw_generated_perfect_spindle.png
          :width: 320px

          Generated Mesh.

          You can use this technique to perform normal screw modeling.


Here, in Fig. :ref:`fig-mesh-screw-ramp`, we show you an example using a different profile,
but maintaining the beginning and ending vertices at the same position.
The generated mesh looks like a medieval ramp!

.. _fig-mesh-screw-ramp:

.. list-table:: Ramp.

   * - .. figure:: /images/modeling_mesh_screw_ramp_like_profile.png
          :width: 320px

          Profile with starting and ending vertices forming a parallel line with the Blender Axis.


     - .. figure:: /images/modeling_mesh_screw_ramp_like_generated.png
          :width: 320px

          Generated Mesh with the profile at the left. We have inclined the visualization a bit.


As you can see, the Screw spindles are perfectly assembled with each other,
and they follow a straight line from top to bottom.
You can also change the Clockwise and Counterclockwise direction using this example,
to create right and left screw spindles. At this point,
you can give the screw another dimension, changing the Center of the Spin Extrusion, making it
more suitable to your needs or calculating a perfect screw and merging its vertices with a
cylinder, modeling its head, etc.


A Screw Tip
-----------

As we have explained before,
the *Screw* tool generates clean and simple meshes to deal with; they are light,
well-connected and are created with very predictable results.
This is due to the Blender calculations taking into account not only the height of the vector,
but also its starting angle. It means that Blender will connect the vertices with each other
in a way that they follow a continuous cycle along the extruded generated profile.

In this example, you will learn how to create a simple Screw Tip
(like the ones we use for wood; we have shown an example at the beginning of this page).
To make this new example as short as possible, we will recycle our last example (again).

#. Open Blender and click in *File* located in the header of the Info editor again;
   choose *Open Recent* and the file we saved for this exercise.
   All of the things will be placed exactly the way you saved before.
   Choose the last saved blend-file; in the last exercise, we gave it the name *Screw Hardware Example.blend*.
#. Grab the upper vertex and move a bit to the left, but no more than you have moved your last vertex.
   (See Fig. :ref:`fig-mesh-screw-start`)
#. Press the shortcut :kbd:`A` twice to de-select and select all.
#. Press the shortcut :kbd:`Shift-S` and select *Cursor to Center*
#. Press Screw.

.. list-table::

   * - .. _fig-mesh-screw-start:

       .. figure:: /images/modeling_mesh_screw_profile_with_vector_angle.png
          :width: 320px

          Profile With Starting Vector Angle.


     - .. _fig-mesh-screw-start-mesh:

       .. figure:: /images/modeling_mesh_screw_generated_with_base_vector_angle.png
          :width: 320px

          Generated Mesh with the Profile.


As you can see in Fig. :ref:`fig-mesh-screw-start-mesh`,
Blender follows the basic angular vector of the profile, and the
profile basic angle determines whether the extruded subsequent configured turns will open or
close the resulting mesh following this angle. The vector of the extrusion angle is determined
by the starting and ending Vertex of the profile.
