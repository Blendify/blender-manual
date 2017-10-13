.. _bpy.types.bpy_struct:
.. _bpy.ops.wm.properties:

*****************
Custom Properties
*****************

.. figure:: /images/data-system_custom-properties_add.png
   :align: right

   Custom Properties Panel.

Custom properties are a way to store your own meta-data in Blender's data-blocks
which can be used for rigging (where bones and objects can have custom properties driving other properties),
and Python scripts, where it's common to define new settings not available in Blender.

Only certain data supports custom properties:

- All :ref:`data-blocks types <data-system-datablock-types>`.
- Bones and Pose-Bones.
- Sequence strips.

To add a custom property, find the *Custom Properties* panel,
found at the bottom of most :doc:`Properties Editor </editors/properties_editor>`, and hit *Add*.


Editing Properties
==================

User Interface
--------------

Custom properties can be edited using the panel available for data types that support it.

.. figure:: /images/data-system_custom-properties_edit.png
   :align: right

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
   Enables limits that the *Property Value* slider can be adjusted to
   without having to input the value numerically.

   Soft Min
      The minimum value for the soft limit.
   Soft Max
      The maximum value for the soft limit.
Tooltip
   Allows you to write a custom :doc:`Tooltip </getting_started/help>` for your property.


Python Access
-------------

Custom properties can be accessed in a similar way to
`dictionaries <https://docs.python.org/3/tutorial/datastructures.html#dictionaries>`__,
with the constraints that keys can only be strings,
and values can only be strings, numbers, arrays and nested properties.

See the `API documentation
<https://www.blender.org/api/blender_python_api_current/info_quickstart.html#custom-properties>`__
for details.
