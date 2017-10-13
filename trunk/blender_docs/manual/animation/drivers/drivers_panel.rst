
*************
Drivers Panel
*************

.. figure:: /images/animation_panel_drivers.png
   :align: right

   Drivers Panel.


This panel is located in the :doc:`Graph Editor </editors/graph_editor/introduction>` with the mode set to Drivers.

The drivers panel is for setting up *Driver Variables* or a *Scripted Expression* which
will determine the value of the *Driver Value*.


Settings
--------

Update Dependencies
   This will force an update for the Driver Value dependencies.
Remove Driver
   Removes the driver from the property.

Type
   There are two categories of scripts: built-in (average, sum, minimum and maximum) and
   custom scripts (Scripted Expressions).

   Average Value
      Uses the average value of the referenced Driver Variables.
   Sum Values
      Uses the sum of the referenced Driver Variables.
   Scripted Expression
      Uses a Scripted Expression. See Expression.
      You must write a Python expression which performs your own calculations on the Driver Variables.
   Minimum Value
      Uses the lowest value from the referenced Driver Variables.
   Maximum Value
      Uses the highest value from the referenced Driver Variables.

Expression
   Scripted Expression.
   Here you can add variables, real numbers, math operators, math functions, Python properties, driver functions.
   See Driver Expression below for some examples.
Use Self
   This allows for drivers to references their own data using the variable ``self``.
   Useful for objects, bones, to avoid having to create a variable pointing to its self.
Show Debug Info
   Shows the *Driver Value*.
Driver Value
   The output value of the driver script.


Driver Variables
----------------

.. list-table::

   * - .. figure:: /images/animation_driver_transform_channel2.png

          Transform Channel Setup.

     - .. figure:: /images/animation_driver_distance.png

          Distance Setup.

Variable are references to properties or delta transformations which are a reference to two properties.

Add Variable
   Adds a new Driver Variable.
Copy/Paste
   ToDo.
Name
   Name to use for scripted expressions/functions.
   No spaces or dots are allowed and must start with a letter.

Variable Type
   The type of variable to use.

   Single Property
      Use the value from some RNA property.
      For example, the Ambient shading color from a material.
      First select the type of ID-block, then the ID of the ID-block, then copy and
      paste an RNA property :kbd:`Ctrl-V`.
      See also :doc:`/data_system/custom_properties`.

      ID-Type
         The ID-Block type. Example: Key, Image, Object, Material.
      ID
         The ID of the ID-Block type. Example: "Material.001".
      RNA Path
         The RNA id name of the property. Example: 'ambient' from material shading.

   Transform Channel
      Use one of the Transform channels from an object or bone.

      ID
         ID of the object. Example: Cube, Armature, Camera.
      Bone
         ID of the Armature bone. Example: "Bone", "Bone.002", "Arm.r".
         This option is for armatures.
      Type
         Example, X Location, X Rotation, X Scale.
      Space
         World Space, Transform Space, Local Space.

   Rotational Difference
      Use the rotational difference between two objects or bones.
   Distance
      Use the distance between two objects or bones.

Value
   Shows the value of the variable.


Example
^^^^^^^^^^

.. figure:: /images/animation_driver_single_property.jpg

   Setup of a Single Property.

.. seealso::

   - :ref:`Extending Blender with Python <scripting-index>`.

   - `Python <https://www.python.org>`__ and its `documentation <https://docs.python.org/>`__.
   - `functions.wolfram.com <http://functions.wolfram.com/>`__.
