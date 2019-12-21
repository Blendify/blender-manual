*****
Basic
*****

These rig types are used to generate simple single-bone features,
and for custom rigging done directly in the metarig.


``basic.copy_chain``
====================

Will copy the bone chain keeping all the parent relations untouched. Useful as utility rig-type for custom rigs.

Requirement: A chain of at least two connected bones.

control (boolean)
   When checked control bones and widgets will be created.
deform (boolean)
   When checked deform bones will be created.

``basic.super_copy``
====================

Will copy the bone. Useful as utility rig type for adding custom features or specific deform bones to your rigs.

Requirement: A single bone.

control (boolean)
   When checked control bone and widgets will be created.
widget (boolean)
   When checked a circle widget will be created in replacement to the standard.
deform (boolean)
   When checked deform bone will be created.

