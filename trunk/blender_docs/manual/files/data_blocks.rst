.. _bpy.types.ID:
.. _bpy.types.BlendData:

***********
Data-Blocks
***********

The base unit for any Blender project is the data-block. Examples of data-blocks include:
meshes, objects, materials, textures, node trees, scenes, texts, brushes, and even screens.

.. figure:: /images/data-system_outliner_blender_file_view.png
   :align: right

   Blender File view of the Outliner.

A data-block is a generic abstraction of very different kinds of data,
which features a common set of basic features, properties and behaviors.

Some common characteristics:

- They are the primary contents of the blend-file.
- They can reference to each other, for reuse and instancing.
  (child/parent, object/object-data, materials/images, in modifiers or constraints too...).
- Their names are unique within a blend-file, for a given type.
- They can be added/removed/edited/duplicated.
- They can be linked between files (only enabled for a limited set of data-blocks).
- They can have their own animation data.
- They can have :ref:`Custom Properties <files-data_blocks-custom-properties>`.

User will typically interact with the higher level data types (objects, meshes, etc.).
When doing more complex projects, managing data-blocks becomes more important,
especially when inter-linking blend-files.
The main editor for that is the :doc:`Outliner </editors/outliner>`.

Not every data in Blender is a data-block,
bones, sequence strips or vertex groups e.g. are not,
they belong to armature, scene and mesh types respectively.


Life Time
=========

Every data-block is ref-counted, when there is more than one, you can see the number
of current users of a data-block to the right of its name in the UI.

Blender follows the general rule that unused data is eventually removed.

Since it is common to add and remove a lot of data while working,
this has the advantage of not having to manually manage every single data-block.

This works by skipping zero user data-blocks when writing blend-files.


.. _data-system-datablock-fake-user:

Protected
---------

Since zero user data-blocks are not saved,
there are times when you want to force the data to be kept irrespective of its users.

If you are building a blend-file to serve as a library of things that you intend to link to and from other files,
you will need to make sure that they do not accidentally get deleted from the library file.

To protect a data-block, use the "shield" button next to its name.
The data-block will then never be silently deleted by Blender,
but you can still do it manually if needed.


Sharing
=======

Data-blocks can be shared among other data-blocks.

Examples where sharing data is common:

- Sharing textures among materials.
- Sharing meshes between objects (instances).
- Sharing animated actions between objects,
  for example to make all the lights dim together.

You can also share data-blocks between files, see:

- :doc:`linked libraries </files/linked_libraries>`.


.. _data-system-datablock-make-single-user:

Making Single User
==================

When a data-block is shared between several users, you can make a copy of it for a given user.
To do so, click on the user-count button to the right of its name.
This will duplicate that data-block and assign the newly created copy to that usage only.

.. note::

   Objects have a set of more advanced actions to become single-user,
   see :doc:`their documentation </scene_layout/object/editing/duplication>`.


Removing Data-Blocks
====================

As covered in `Life Time`_, data-blocks are typically removed when they are no longer used.

They can also be manually *unlinked* or *deleted*.

Unlinking a data-block means that its user won't use it anymore.
This can be achieved by clicking on the "X" icon next to a data-block's name.

If you unlink a data-block from all of its users,
it will eventually be deleted by Blender as described above (unless it is a protected one).

Deleting a data-block directly erases it from the blend-file, automatically unlinking it from all of its users.
This can be achieved by Shift-clicking on the "X" icon next to its name.

.. warning::

   Deleting some data-blocks can lead to deletion of some of its users, which would become invalid without it.
   The main example is that object-data deletion (like mesh, curve, camera...) will also delete all objects using it.

Those two operations are also available in the contextual menu when right-clicking on a data-block in the *Outliner*.


.. _data-system-datablock-types:

Data-Block Types
================

.. EDITORS NOTE:
   Mostly we want to avoid long lists of data -- but in this case,
   it is the only comprehensive list of data-blocks, and something which you cannot
   find directly just through looking at the interface.
   ::
   (TODO add) links to related docs for each type.

.. Image source Scene tab --> Active keying set panel --> ID-block (sound replaced).

.. figure:: /images/data-system_data-blocks_id-types.png
   :align: right

   Data-blocks types with their icon.

For reference, here is a table of data-blocks types stored in blend-files.

:Link:
   Library Linking, supports being linked into other blend-files.
:Pack:
   File Packing, supports file contents being packed into the blend-file
   *(not applicable for most data-blocks which have no file reference)*.

.. EDITORS NOTE:
   For each data-block, we have 2 lines.
   1) a terse description.
   2) how its used.
   ::
   Keep these short.

.. container:: lead

   .. clear

.. |tick|  unicode:: U+2713
.. |cross| unicode:: U+2717
.. |none|  unicode:: U+2014

.. list-table::
   :header-rows: 1
   :class: valign
   :widths: 20 5 5 70

   * - Type
     - Link
     - Pack
     - Description
   * - Action
     - |tick|
     - |none|
     - | Stores animation F-Curves.
       | Used as data-block animation data,
       | and the Non-Linear-Editor.
   * - Armature
     - |tick|
     - |none|
     - | Skeleton used to deform meshes.
       | Used as object data & by the Armature Modifier.
   * - Brush
     - |tick|
     - |none|
     - | Used by paint tools.
   * - Camera
     - |tick|
     - |none|
     - | Used as object data.
   * - Curve
     - |tick|
     - |none|
     - | Used by camera, font & surface objects.
   * - Font
     - |tick|
     - |tick|
     - | References font files.
       | Used by Font object-data.
   * - GreasePencil
     - |tick|
     - |none|
     - | 2D/3D sketch data.
       | Used as overlay *helper* info, by the
       | 3D View, Image, Sequencer & Movie Clip editors.
   * - Group
     - |tick|
     - |none|
     - | Reference object's.
       | Used by dupli-groups & often library linking.
   * - Image
     - |tick|
     - |tick|
     - | Image files.
       | Used by textures & shader nodes.
   * - Lamp
     - |tick|
     - |none|
     - | Used as object-data.
   * - Lattice
     - |cross|
     - |none|
     - | Grid based lattice deformation.
       | Used as object data and by the Lattice Modifier.
   * - Library
     - |cross|
     - |tick|
     - | References to external blend-files.
       | Access from the Outliner's blend-file view.
   * - LineStyle
     - |tick|
     - |none|
     - | Used by the FreeStyle renderer.
   * - Mask
     - |tick|
     - |none|
     - | 2D animated mask curves.
       | Used by compositing nodes & sequencer strip.
   * - Material
     - |tick|
     - |none|
     - | Set shading and texturing render properties.
       | Used by objects, meshes & curves.
   * - Mesh
     - |tick|
     - |none|
     - | Geometry vertices/edges/faces.
       | Used as object-data.
   * - MetaBall
     - |tick|
     - |none|
     - | An isosurface in 3D space.
       | Used as object-data.
   * - MovieClip
     - |tick|
     - |cross|
     - | Reference to an image sequence or video file.
       | Used in the Movie Clip editor.
   * - NodeGroup
     - |tick|
     - |none|
     - | Collections of re-usable nodes.
       | Used in the node editors.
   * - Object
     - |tick|
     - |none|
     - | An entity in the scene with location,
       | scale, rotation.
       | Used by scenes & groups.
   * - Particle
     - |tick|
     - |none|
     - | Particle settings.
       | Used by particle systems.
   * - Palette
     - |tick|
     - |none|
     - | Store color presets.
       | Access from the paint tools.
   * - Scene
     - |tick|
     - |none|
     - | Primary store of all data displayed and animated.
       | Used as top-level storage for objects & animation.
   * - Screen
     - |cross|
     - |none|
     - | Screen layout.
       | Used by each window, which has its own screen.
   * - ShapeKeys
     - |cross|
     - |none|
     - | Geometry shape storage, which can be animated.
       | Used by mesh, curve, and lattice objects.
   * - Sounds
     - |tick|
     - |tick|
     - | References to sound files.
       | Used by speaker objects.
   * - Speaker
     - |tick|
     - |none|
     - | Sound sources for a 3D scene.
       | Used as object-data.
   * - Text
     - |tick|
     - |cross|
     - | Text data.
       | Used by Python scripts and OSL shaders.
   * - Texture
     - |tick|
     - |none|
     - | 2D/3D textures.
       | Used by materials, world and brushes.
   * - World
     - |tick|
     - |none|
     - | Used by scenes for render environment settings.
   * - WindowManager
     - |cross|
     - |none|
     - | The overarching manager for all of Blender's UI;
         this includes screens, notification system, operators, and keymaps.


.. _files-data_blocks-custom-properties:
.. _bpy.types.bpy_struct:
.. _bpy.ops.wm.properties:

Custom Properties
=================

.. figure:: /images/data-system_custom-properties_add.png
   :align: right

   Custom Properties panel.

Custom properties are a way to store your own metadata in Blender's data-blocks
which can be used for rigging (where bones and objects can have custom properties driving other properties),
and Python scripts, where it's common to define new settings not available in Blender.

Only certain data supports custom properties:

- All :ref:`data-blocks types <data-system-datablock-types>`.
- Bones and Pose-Bones.
- Sequence strips.

To add a custom property, find the *Custom Properties* panel,
found at the bottom of most :doc:`Properties Editor </editors/properties_editor>` or Sidebar region, and hit *Add*.


Editing Properties
------------------

User Interface
^^^^^^^^^^^^^^

Custom properties can be edited using the panel available for data types that support it.

.. figure:: /images/data-system_custom-properties_edit.png
   :align: right

   Custom Properties edit pop-up.

Property Name
   The name of the custom property.
Property Value
   This does two things: first it sets the current value of the custom property, and
   second, it defines the data type of the property.
   For example, custom properties can either be of type: Integers, Floats, or Booleans.
   See the table below for a list of examples for each:

   :Integers: 1, 2, 3, 4...
   :Floats: 3.141, 5.0, 6.125,
   :Booleans: ``True``, ``False``

   .. note::

      Booleans are handled very similar to integers and only work
      when using Min/Max values that are integers and that are no more than 1 apart.

      At this point, the booleans will still look like integers but behave like
      booleans having one lower, off, value and a higher, on, value.
Default Value
   This sets the default value of the property used by the Reset to Default Value operator.

   .. warning::

      Default values are used as the basis of :ref:`NLA blending <nla-blend-modes>`,
      and a nonsensical default (e.g. 0 for a property used for scaling) on a property intended for
      being keyframed is likely to cause issues.
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
Is Statically Overridable
   Specifies if the property can be overridden via the Static Overrides system
   (with an additional performance overhead).
Tooltip
   Allows you to write a custom :doc:`Tooltip </getting_started/help>` for your property.


Python Access
^^^^^^^^^^^^^

Custom properties can be accessed in a similar way to
`dictionaries <https://docs.python.org/3/tutorial/datastructures.html#dictionaries>`__,
with the constraints that keys can only be strings,
and values can only be strings, numbers, arrays and nested properties.

See the `API documentation
<https://www.blender.org/api/blender_python_api_current/info_quickstart.html#custom-properties>`__
for details.
