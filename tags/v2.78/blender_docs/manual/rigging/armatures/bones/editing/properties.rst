..    TODO/Review: {{review|copy=X}}.

**********
Properties
**********

.. _armature-bone-properties:

.. admonition:: Reference
   :class: refbox

   | Mode:     Edit Mode
   | Menu:     :menuselection:`Armature --> Bone Settings --> ...`
   | Hotkey:   :kbd:`Shift-W`, :kbd:`Ctrl-Shift-W`, :kbd:`Alt-W`

Most bones' properties (excepted the transform ones) are regrouped in each bone's panels,
in the *Bones* tab in *Edit Mode*. Let us detail them.

Note that some of them are also available in the 3D Views,
through the three pop-up menus within the same entry:

- *Toggle Setting*: :kbd:`Shift-W` or :menuselection:`Armature --> Bone Settings --> Toggle a Setting`
- *Enable Setting*: :kbd:`Ctrl-Shift-W` or :menuselection:`Armature --> Bone Settings --> Enable a Setting`
- *Disable Setting*: :kbd:`Alt-W` or :menuselection:`Armature --> Bone Settings --> Disable a Setting`

Draw Wire
   ..
Deform
   (also :kbd:`Shift-W` :menuselection:`--> (Deform, ...)`), 
Multiply Vertex Group by Envelope
   (also :kbd:`Shift-W` :menuselection:`--> (Multiply Vertex Group by Envelope, ...)`)

   These settings control how the bone influences its geometry, along with the bones' ends radius.
   This will be detailed in the :doc:`skinning part </rigging/skinning/index>`.
Inherit Rotation
   These settings affect the behavior of children bones while transforming their parent in *Pose Mode*,
   so this will be detailed in the :doc:`posing part </rigging/posing/index>` !
Inherit Scale
   ..
Lock
   (also :kbd:`Shift-W` :menuselection:`--> (Locked, ...)`)
   This will prevent all editing of the bone in *Edit Mode*;
   see :doc:`previous page </rigging/armatures/bones/editing/bones>`.
