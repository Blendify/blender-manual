
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


Editing Properties
==================


User Interface
--------------

Custom properties can be edited using the panel available for data types that support it.

TODO (include image).


Python Access
-------------

Custom properties can be accessed in a similar way to
`dictionaries <http://docs.python.org/3/tutorial/datastructures.html#dictionaries>`__,
with the constraints that keys and only be strings,
and values can only be strings, numbers, arrays and nested properties.

See the API
`documentation <https://www.blender.org/api/blender_python_api_current/info_quickstart.html#custom-properties>`__
for details.

