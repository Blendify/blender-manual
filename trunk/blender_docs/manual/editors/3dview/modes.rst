
.. _modes:

*****
Modes
*****

*Modes* are a Blender-level object-oriented feature,
which means that *the whole Blender application* is always in *one and only one mode*,
and that the available modes vary depending on the selected active object's type -
most of them only enable the default *Object* mode (like cameras, lamps, etc.).
Each mode is designed to edit an aspect of the selected object. See the *Blender's Modes* table below for details.


.. figure:: /images/ModeSelect.jpg

   Mode selection example (mesh object).


You set the current mode in the *Mode* drop-down list of *3D View* header
(see *Mode selection example (mesh object)*).


 .. warning::

   You can only select objects in *Object* mode. In all others, the
   current object selection is "locked" (except, to some extent, with an
   armature's *Pose* mode).

Modes might affect many things in Blender:

- They can modify the panels and/or controls available in some *Buttons* windows' contexts.
- They can modify the behavior of whole windows, like e.g.
  the *UV/Image Editor* window (and obviously, *3D View* s!).
- They can modify the available header tools (menus and/or menu entries, as well as other controls...).
  For example, in the *3D View* window,
  the *Object* menu in *Object* mode changes to a *Mesh* menu in *Edit* mode (with an active mesh object!),
  and a *Paint* menu in *Vertex Paint* mode...

.. list-table::
   Blender's Modes
   :header-rows: 1

   * - Icon
     - Name
     - Shortcut
     - Details
   * - .. figure:: /images/IconObjectMode.jpg
     - *Object* mode
     - *None* :sup:`1`
     - The default mode, available for all object types,
       as it is dedicated to *Object* data-block editing (i.e. position/rotation/size).
   * - .. figure:: /images/IconEditMode.jpg
     - *Edit* mode
     - :kbd:`Tab`:sup:`1`
     - A mode available for all renderable object types,
       as it is dedicated to their "shape" *ObData* data-block editing
       (i.e. vertices/edges/faces for meshes, control points for curves/surfaces, etc.)
   * - .. figure:: /images/IconSculptMode.jpg
     - *Sculpt* mode
     - *None* :sup:`1`
     - A mesh-only mode, that enables Blender's mesh 3D-sculpting tool.
   * - .. figure:: /images/IconVertexPaint.jpg
     - *Vertex Paint* mode
     - *None* :sup:`1`
     - A mesh-only mode, that allows you to set your mesh's vertices colors (i.e. to "paint" them).
   * - .. figure:: /images/IconTexturePaint.jpg
     - *Texture Paint* mode
     - *None* :sup:`1`
     - A mesh-only mode, that allows you to paint your mesh's texture directly on the model, in the 3D views.
   * - .. figure:: /images/IconWeightPaint.jpg
     - *Weight Paint* mode
     - :kbd:`Ctrl-Tab`:sup:`2`
     - A mesh-only mode, dedicated to vertex group weighting.
   * - .. figure:: /images/IconParticleMode.jpg
     - *Particle* mode
     - *None* :sup:`1`
     - A mesh-only mode, dedicated to particle systems, useful with editable systems (hair).
   * - .. figure:: /images/IconPoseMode.jpg
     - *Pose* mode
     - :kbd:`Ctrl-Tab`:sup:`2`
     - An armature-only mode, dedicated to armature posing.


Notes about modes shortcuts:

- :kbd:`Tab` toggles *Edit* mode.
- :kbd:`Ctrl-Tab` switches between the *Weight Paint* (meshes) / *Pose* (armatures) modes,
  and the other current one (by default, the *Object* mode).
  However, the same shortcut has other, internal meanings in some modes
  (e.g. in *Sculpt* mode, it is used to select the current brush)...

As you can see, using shortcuts to switch between modes can become quite tricky,
especially with meshes...

We won't detail further more modes' usages here.
Most of them are tackled in the :doc:`modeling chapter </modeling/index>`, as they are mainly related to this topic.
The *Particle* mode is discussed in the :doc:`particle section </physics/particles/mode>`,
and the *Pose* and *Edit* modes for armatures, in the :doc:`rigging one </rigging/index>`.


.. note::

   If you are reading this manual and some button or menu option is referenced that does not appear on your screen,
   it may be that you are not in the proper mode for that option to be valid.
