
*******
Actions
*******

When animating objects and properties in Blender, Actions record and contain the data.

.. figure:: /images/animation_actions_data3.png

   Actions.


So when you animate an object by changing its location with keyframes,
the animation is saved to the Action.

Each property has a channel which it is recorded to, for example,
Cube.location.x is recorded to Channel X Location.

.. figure:: /images/animation_actions_keyframes.png

   Graph Editor. Each Channel has an F-Curve represented by the lines between the keyframes.


Actions
   Record and contain animation data.
Groups
   Are groups of channels.
Channels
   Record properties.
F-Curves
   :doc:`F-Curve </editors/graph_editor/fcurves/introduction>` are used to
   interpolate the difference between the keyframes.
Keyframes
    :doc:`Keyframes </animation/keyframes/introduction>` are used to
    set the values of properties bind to a point in time.


.. _animation-basics-actions-working-with-actions:

Working with Actions
====================

.. figure:: /images/animation_actions_create.png
   :align: right

   The Action data-block menu.


When you first animate an object by adding keyframes,
Blender creates an *Action* to record the data.

*Actions* can be managed with the *Action data-block menu*
in the :doc:`DopeSheet </editors/dope_sheet/introduction>`
*Action Editor* header, or the properties region of the :doc:`NLA Editor </editors/nla/properties_modifiers>`.

If you are making multiple actions for the same object,
press the *F* button for each action,
this will give the actions a *Fake User* and will make Blender save the unlinked actions.

Objects can only use one *Action* at a time for editing,
the :doc:`NLA Editor </editors/nla/index>` is used to blend multiple actions together.


Bake Action
===========

.. admonition:: Reference
   :class: refbox

   | Mode:     Object and Pose Modes
   | Menu:     :menuselection:`3D View --> Object/Pose --> Animation --> Bake action`


The *Bake Action* tool will apply interpolated frames into individual key frames.

This can be useful for adding deviation to a cyclic action like a :term:`walk cycle`.
This can also useful for keyframe animations created from drivers or constraints.
