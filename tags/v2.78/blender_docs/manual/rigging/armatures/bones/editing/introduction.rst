
************
Introduction
************

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Hotkey:   :kbd:`Tab`


As with any other object, you edit your armature in *Edit Mode* :kbd:`Tab`.

Editing an armature means two main domains of action:

- :doc:`Editing the bones </rigging/armatures/bones/editing/bones>` - i.e.
  adding/inserting/deleting/extruding/sub-dividing/joining them...
- :doc:`Editing the bones' properties </rigging/armatures/bones/editing/properties>` - this includes key features,
  like transform properties (i.e. grab, scale, etc...) and relationships between bones (parenting and connecting),
  as well as bones' names, influence, behavior in *Pose Mode*, etc.

These are standard editing methods, quite similar for example to
:doc:`meshes </modeling/meshes/editing/introduction>` editing.
Blender also features a more advanced "armature sketching" tool,
called :doc:`Etch-a-Ton </rigging/armatures/bones/editing/sketching>`.
The same tool might also be used in :doc:`templating </rigging/armatures/bones/editing/templating>`,
i.e. using another armature as template for the current one...


.. important::

   One important thing to understand about armature editing is that you
   edit the *rest position* of your armature, i.e. its "default state".
   An armature in its *rest position* has all bones with *no* rotation and scaled to 1.0 in their own local space.

The different :doc:`poses </rigging/posing/index>` you might create afterwards are based on this rest position.
So if you modify it in *Edit Mode*, all the poses already existing will also be modified.
Thus you should in general be sure that your armature is definitive before starting
to :doc:`skin </rigging/skinning/index>` and :doc:`pose </rigging/posing/index>` it!


.. note::

   Please note that some tools work on bones' ends, while others work on bones themselves.
   Be careful not to get confused.
