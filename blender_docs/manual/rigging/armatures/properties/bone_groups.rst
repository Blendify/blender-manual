
***********
Bone Groups
***********

.. admonition:: Reference
   :class: refbox

   | Mode:     Pose Mode
   | Panel:    :menuselection:`Armature tab --> Motion Paths panel`
   | Menu:     :menuselection:`Pose --> Bone Groups --> ...`

.. figure:: /images/rigging_armatures_properties_bone-groups_panel.png

   The Bone Groups panel.

This panel allows the creation, deletion and editing of Bone Groups.
The panel *Bone Groups* is available in the tab *Armature* of the Properties editor.

Bone Groups can be used for selection or to assign a color theme to a set of bones.
In example to color the left parts of the rig as blue and right parts as red.

Active Bone Group
   The Bone Group :ref:`List view <ui-list-view>`.


Color Set
------------------------

.. figure:: /images/rigging_armatures_properties_bone-groups_color-list.png

   The Bone Color Set selector and the color buttons.

You can assign a "color theme" to a group (each bone will have these colors).
Remember you have to enable the *Colors* checkbox (*Display* panel) to see these colors.

Bone Color Set
   A select menu.

   - *Default Colors*: The default (gray) colors.
   - *nn* - *Theme Color Set*: One of the twenty Blender presets by the theme.
   - *Custom Set*: A custom set of colors, which is specific to each group.

Normal
   The first color button is the color of unselected bones.
Selected
   The second color button is the outline color of selected bones.
Active
   The third color button is the outline color of the active bone.

As soon as you alter one of the colors, it is switched to the *Custom Set* option.


Assign and Select
-----------------

In the 3D Views, using the :menuselection:`Pose --> Bone Groups` menu entries,
and/or the *Bone Groups* pop-up menu :kbd:`Ctrl-G`, you can:

Assign
   Assigns the selected bones to the active bone group.
   It is important to note that a bone can only belong to one group.
Remove
   Removes the selected bones from the active bone group.
Select
   Selects the bones in the active bone group.
Deselect
   Deselects the bones in the active bone group.

.. seealso::

   A single bone can be assign to a group in the :ref:`Relations panel <bone_relations_bone_group>`.

.. seealso::

   Bones belonging to multiple groups is possible with this add-on
   `Selection Sets <https://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts/Animation/SelectionSets>`__.
