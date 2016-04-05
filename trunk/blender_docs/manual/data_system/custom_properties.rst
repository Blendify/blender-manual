
*****************
Custom Properties
*****************

Custom properties are a way to store your own meta-data in Blender's data-blocks
which can be used for rigging (where bones and objects can have custom properties driving other properties),
and Python scripts, where its common to define new settings not available in Blender.

Only certain data supports custom properties.

- All :ref:`data-blocks types <data_system-datablock_types>`.
- Bones and Pose-Bones.
- Sequence strips.

To add a custom property find the *Custom Properties* panel,
found at the bottom of most :doc:`Properties Region </editors/properties/index>`, and hit *Add*.

.. figure:: /images/data_custom_properties_add.png

   Custom Properties Panel.


Editing Properties
==================


User Interface
--------------

Custom properties can be edited using the panel available for data types that support it.

.. figure:: /images/data_custom_properties_edit.png

   Custom Properties Edit Region.

Property Name
   The name of the custom property
Property Value
   Todo.
Min
   The minimum value the custom property can take.
Max
   The maximum value the custom property can take.
Use Soft Limits
   Todo.

   Soft Min
      Todo.
   Soft Max
      Todo.

Tooltip
   Allows you to write a custom :doc:`Tooltip </getting_started/help>` for your property.


Python Access
-------------

Custom properties can be accessed in a similar way to
`dictionaries <https://docs.python.org/3/tutorial/datastructures.html#dictionaries>`__,
with the constraints that keys and only be strings,
and values can only be strings, numbers, arrays and nested properties.

See the API
`documentation <https://www.blender.org/api/blender_python_api_current/info_quickstart.html#custom-properties>`__
for details.
