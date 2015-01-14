
********************
Blender Game Physics
********************

Blender includes advanced physics simulation in the form of the Bullet Physics Engine
(`BulletPhysics.org <http://bulletphysics.org>`__).
Most of your work will involve setting the right properties on the objects in your scene,
then you can sit back and let
the engine take over. The physics simulation can be used for Games, but also for Animation.

The Blender Game Engine (BGE) is based on Rigid-Body Physics,
which differs significantly from the complementary set of
tools available in the form of Soft Body Physics Simulations. Though the BGE does have a Soft Body type, it is not
nearly as nuanced as the non-BGE Soft Body.
The inverse is even more true: it is difficult to get the non-BGE physics to
resemble anything like a stiff shape.
Rigid Body Physics does not have, as an effect or a cause, any mesh deformations.
For a discussion on how to partially overcome this, see:
`Mesh Deformations`_.


Global Options
==============

The global Physics Engine settings can be found in the :doc:`World Properties </game_engine/world>`, which
include the Gravity constant and some important engine performance tweaks.


Object Physics
==============

.. figure:: /images/Manual-BGE-Physics-PropertiesTabs.jpg


.. _game_engine-physics-types:

Physics Type
============

.. figure:: /images/Manual-BGE-Physics-PhysicsType.png

:doc:`No Collision </game_engine/physics/object/no_collision>`
   Is not affected by the simulation nor affects other objects.
:doc:`Static </game_engine/physics/object/static>`
   Participates in the simulation, affecting other objects, but is not affected by it.
:doc:`Dynamic </game_engine/physics/object/dynamic>`
   Object that can move besides colliding and being collided with.
:doc:`Rigid Body </game_engine/physics/object/rigid_body>`
   Has rigid body dynamics.
:doc:`Soft Body </game_engine/physics/object/soft_body>`
   Soft body dynamics.
:doc:`Character Controller </game_engine/physics/object/character>`
   Character controller.
:doc:`Vehicle Controller </game_engine/physics/object/vehicle>`
   Vehicle controller.
:doc:`Occluder </game_engine/physics/object/occluder>`
   Prevents calculation of rendered objects (not their physics, though!).
:doc:`Sensor </game_engine/physics/object/sensor>`
   Detects presence without restituting collisions.
:doc:`Navigation Mesh </game_engine/physics/object/navigation_mesh>`
   To make pathfinding paths. Useful for Artificial Intelligence.


Material Physics
================
Physics can be associated with a material on the material properties tab. These are settings that one would normally
associate with a material,
such has it's friction and they are meant to be used in conjunction with the object physics
settings, not replace it.


Constraints
===========

It is imperative to understand that the Blender Constraints generally don't work inside the BGE.
This means interesting effects such as *Copy Rotation* are unavailable directly.

Your options include:

- :doc:`Parenting </modeling/objects/groups_and_parenting>` - But not Vertex Parenting.
- :doc:`Rigid Body Joint </rigging/constraints/relationship/rigid_body_joint>` -
  This is the one Constraint that you can set up through the UI that works in the BGE.
  It has several options, and can be very powerful - see ITS page for a detailed description and demo .blend.
  Don't forget that you can loop through objects using ``bpy`` instead of clicking thousands of
  times to set up chains of these Constraints.
- Rigid Body Joints on the Fly -
  You can add/remove them after the BGE starts by using ``bge.constraints.createConstraint()``.
  This can be good either to simply automate their setup, or to truly make them dynamic.
  A simple demo can be viewed in: `BGE-Physics-DynamicallyCreateConstraint.blend
  <http://wiki.blender.org/index.php/Media:BGE-Physics-DynamicallyCreateConstraint.blend>`__
- `Python Controllers </game_engine/logic/controllers/python>`__ - As always, in the BGE,
  you can get the most power when you drop into Python and start toying with the settings directly.
  For instance, the *Copy Rotation* mentioned above is not hard --
  All you have to do is something to the effect of ``own.worldOrientation =
  bge.logic.getCurrentScene().objects['TheTargetObject'].worldOrientation``


Visualizing Physics
===================

.. figure:: /images/Manual-BGE-Physics-Visualization.jpg

Go to :menuselection:`Game --> Show Physics Visualization` to show lines representing various attributes
of the Bullet representation of your objects.
Note that these might be easier to see when you turn on Wireframe Mode (:kbd:`Z`)
before you press :kbd:`P`.
Also note that you can see how the Bullet triangulation is working
(it busts all your Quads to Tris at run-time, but the BGE meshes are still quads at run-time).


- **RGB/XYZ Widget** - Representing the object's Local Orientation and Origin.
- **Green** - "sleeping meshes" that are not moving, saving calculations until an external event "wakes" it.
- **White** - White lines represent active bounding meshes at are undergoing physics calulations,
  untill such calculations are so small that the object is put to rest.
  This is how you can see the effects of the *Collision Bounds*.
  - **Thick, or Many White Lines** - A compound collision mesh/meshes.
- **Violet** - Bounding meshes for Soft bodies.
- **Red** - The Bounding Box, the outer boundary of object.
  It is always aligned with global X Y and Z, and is used to optimize calculations.
  Also represents meshes that have been forced into "no sleep" status.
- **Yellow** - Normals.
- **Black** - When in wireframe, this is your mesh's visual appearance.

If you want finer-grained control over the display options,
you can add this as a Python Controller and uncomment whichever pieces you want to see:

::


   import bge
   debugs = (
   #bge.constraints.DBG_DRAWWIREFRAME, # Draw wireframe in debug.
   bge.constraints.DBG_DRAWAABB, # Draw Axis Aligned Bounding Box in debug.
   #bge.constraints.DBG_DRAWFREATURESTEXT, # Draw freatures text in debug.
   #bge.constraints.DBG_DRAWCONTACTPOINTS, # Draw contact points in debug.
   #bge.constraints.DBG_NOHELPTEXT, # Debug without help text.
   #bge.constraints.DBG_DRAWTEXT, # Draw text in debug.
   #bge.constraints.DBG_PROFILETIMINGS, # Draw profile timings in debug.
   #bge.constraints.DBG_ENABLESATCOMPARISION, # Enable sat comparision in debug.
   #bge.constraints.DBG_DISABLEBULLETLCP, # Disable Bullet LCP.
   #bge.constraints.DBG_ENABLECCD, # Enable Continous Colision Detection in debug.
   #bge.constraints.DBG_DRAWCONSTRAINTS, # Draw constraints in debug.
   #bge.constraints.DBG_DRAWCONSTRAINTLIMITS, # Draw constraint limits in debug.
   #bge.constraints.DBG_FASTWIREFRAME, # Draw a fast wireframe in debug.
   #bge.constraints.POINTTOPOINT_CONSTRAINT,
   #bge.constraints.LINEHINGE_CONSTRAINT,
   #bge.constraints.ANGULAR_CONSTRAINT,
   #bge.constraints.CONETWIST_CONSTRAINT,
   #bge.constraints.VEHICLE_CONSTRAINT,
   )
   for d in debugs:
   bge.constraints.setDebugMode(d)


Show Framerate and Profile
--------------------------

.. figure:: /images/Manual-BGE-Physics_ProfileStats.jpg

   A shot of `Manual-BGE-Physics-DancingSticks.blend
   <http://wiki.blender.org/index.php/Media:Manual-BGE-Physics-DancingSticks.blend>`__ with
   [Game → Show Framerate and Profile] enabled


If you enable :menuselection:`Game --> Show Framerate and Profile`,
it will put some statistics in the upper-left area of the game window.

These can be very informative, but also a bit cryptic.
Moguri has elaborated on their meanings, for us:
http://mogurijin.wordpress.com/2012/01/03/bge-profile-stats-and-what-they-mean/


Mesh Deformations
=================

As mentioned above, Rigid Body physics do not affect mesh deformations,
nor do they account for them in the physics model. This leaves you with a few options:


Soft Bodies
-----------

You can try using a :doc:`Soft Body </game_engine/physics/object/soft_body>`,
but these are fairly hard to configure well.


Actions
-------

To use an :doc:`Action Actuator </game_engine/logic/actuators/action>`
to do the deformation, you have to make a choice. If you use Shapekeys in the Action,
you will be fine as far as the overall collisions (but see below for the note on ``reinstancePhysicsMesh()``).
The mesh itself is both a display and a physics mesh, so there is not much to configure.

To use an Armature as the deformer will require a bit of extra thought and effort.
Basically the Armature will only deform a mesh if the Armature is the parent of that mesh.
But at that point, your mesh will lose its physics responsivenes, and only hang in the air
(it's copying the location/rotation of the Armature).
To somewhat fix this you can then parent the Armature to a collision mesh
(perhaps a simple box or otherwise very-low-poly mesh).
This "Deformation Mesh" will be the physics representative, being type: Dynamic or Rigid Body,
but it will be set to Invisible. Then "Display Mesh" will be the opposite set to type:
No Collision, but visible.
This still leaves us with the problem mentioned in the previous paragraph.

When you deform a display mesh, it does not update the corresponding physics mesh.
You can view this evidently when you
enable physics visualization (`Visualizing Physics`_) - the collision bounds will remain exactly as when they began.
To fix this, you must call ``own.reinstancePhysicsMesh()`` in some form.
Currently this only works on *Triangle Mesh* bounds, not *Convex Hull*.
We have prepared a demonstration file in
`Manual-BGE-Physics-DancingSticks.blend
<http://wiki.blender.org/index.php/Media:Manual-BGE-Physics-DancingSticks.blend>`__.
Note that we had to increase the
:menuselection:`World --> Physics --> Physics Steps --> Substeps` to make the collisions work well.
The more basic case is the case the Shapekeyed Action, which you can see in the back area of the scene.
Since it is the only object involved, you can call ``reinstancePhysicsMesh()`` unadorned,
and it will do the right thing.

The more complicated case is the :menuselection:`Collision Mesh --> Armature --> Display Mesh` cluster,
which you can see in the front of the scene.
What it does in the .blend is call ``reinstancePhysicsMesh(viz)``, that is,
passing in a reference to the visual mesh.
If we tried to establish this relationship without the use of Python,
we would find that Blender's dependency check system would reject it as a cyclic setup.
This is an example of where Blender's checking is too coarsely-grained,
as this circle is perfectly valid: the grandparent object (the Collision Mesh)
controls the location/rotation, while the middle object (the Armature)
receives the animated Action, where the child (the Display Mesh) receives the deformation,
and passes that on up to the top, harmlessly. Something to note is that the Collision Mesh is
merely a plane -- that is all it requires for this,
since it will be getting the mesh data from ``viz``.


Ragdolls
--------

A third option is to create your items out of many sub-objects, connected together with Rigid Body Joints or similar.
This can be quite a bit more work, but the results can be much more like a realistic response to collisions.
For an Add-on that can help you out in the process, check out the
`Blender Ragdoll Implementation Kit
<http://wiki.blender.org/index.php/Extensions:2.6/Py/Scripts/Game_Engine/BRIK_ragdolls>`__.


Digging Deeper
==============

Sometimes you will want to look at:

- The main Bullet Physics page - http://bulletphysics.org/wordpress/
- The Bullet Wiki - http://www.bulletphysics.org/mediawiki-1.5.8/index.php?title=Documentation
- The Bullet API Docs - http://www.continuousphysics.com/Bullet/BulletFull/index.html
- The Bullet Forums - http://www.bulletphysics.org/Bullet/phpBB3/

Then there is always:


Reading the Blender and Bullet Source Files
-------------------------------------------

This might sound intimidating, even if you know C/C++, but it can be very informative.
You can see how Blender sets up the objects to pass to Bullet, add ``printf()`` s in places,
or otherwise experiment and ``svn revert`` to get back to normalcy.

Here is an example of the trail to get to the bottom of the handling of the options.
We will observe the handling of the ``use_shape_match`` property, as an example.

- Start by getting `The Blender Source Tree <http://wiki.blender.org/index.php/Dev:Doc/Building_Blender>`__

- If you search it for ``use_shape_match`` (e.g., by ``grep -r use_shape_match .``),
  this will lead you to `blender/source/blender/makesrna/intern/rna_object_force.c
  <https://svn.blender.org/svnroot/bf-blender/trunk/blender/source/blender/makesrna/intern/rna_object_force.c>`__,
  which says:

::


   prop = RNA_def_property(srna, "use_shape_match", PROP_BOOLEAN, PROP_NONE);
   RNA_def_property_boolean_sdna(prop, NULL, "flag", OB_BSB_SHAPE_MATCHING);
   RNA_def_property_ui_text(prop, "Shape Match", "Enable soft body shape matching goal");


- From this we see that the internal flag is set from the value of ``OB_BSB_SHAPE_MATCHING``
- Searching for that leads us to:

  - Its simple initialization in
    `blender/blenkernel/intern/bullet.c <https://svn.blender.org/svnroot/bf-blender/trunk/blender/source/blender/blenkernel/intern/bullet.c>`__
  - Its assignment to ``objprop.m_gamesoftFlag``, an object of type ``KX_ObjectProperties``,
    in `gameengine/Converter/BL_BlenderDataConversion.cpp
    <https://svn.blender.org/svnroot/bf-blender/trunk/blender/source/gameengine/Converter/BL_BlenderDataConversion.cpp>`__ --
    so far, only passing the value, no actual decision-making.
- Searching for that leads us to `gameengine/Physics/Bullet/CcdPhysicsController.cpp
  <https://svn.blender.org/svnroot/bf-blender/trunk/blender/source/gameengine/Physics/Bullet/CcdPhysicsController.cpp>`__
  where we can find the following:

::


   if (m_cci.m_gamesoftFlag & CCD_BSB_SHAPE_MATCHING)//OB_SB_GOAL)
   {
   psb→setPose(false,true);//
   } else
   {
   psb→setPose(true,false);
   }


- Here is the first bit of logic. It inverts the arguments to ``setPose`` depending on the value. Now then,
  since ``psb`` is of type ``btSoftBody``, we have officially launched into Bullet territory.
  You have a couple options:

  - If you go to the `Bullet API Navigator
    <http://www.continuousphysics.com/Bullet/BulletFull>`__ and expand the *Class List* menu,
    you can :kbd:`Ctrl-F` for the ``btSoftBody`` class,
    and follow the link to the `btSoftBody Class Reference
    <http://www.continuousphysics.com/Bullet/BulletFull/classbtSoftBody.html>`__ Page.
    There you will see very sparse written documentation, but it will, at least,
    link you to a syntax-highlighted `line
    <http://www.continuousphysics.com/Bullet/BulletFull/btSoftBody_8cpp_source.html#l00626>`__
    where the method is implemented.
  - Get the Bullet Source with: ``svn checkout http://bullet.googlecode.com/svn/trunk/
    bullet-read-only`` and probably run something like ``ctags -r .`` from that tree every now
    and then to build the ``tags`` file. Now you can dig further.
    Something like ``vim -t setPose`` will lead you to the implementation in
    `src/BulletSoftBody/btSoftBody.cpp
    <http://bullet.googlecode.com/svn/trunk/src/BulletSoftBody/btSoftBody.cpp>`__
    (which is the same code as can be found through the Bullet API Navigator in the previous step).
- Through either approach, we find that the mysterious ``bool`` s above are for
  ``btSoftBody::setPose(bool bvolume,bool bframe)``,
  which are immediately assigned to ``m_pose.m_bvolume`` and ``m_pose.m_bframe``, respectively.

  - Subsequently searching for ``m_bvolume`` doesn't show much use in this file,
    other than the assignment and initialization.
    We could follow the trail deeper to the `btSoftBody::Pose Struct Reference
    <http://www.continuousphysics.com/Bullet/BulletFull/structbtSoftBody_1_1Pose.html>`__ docs,
    but for now let's try:
  - Searching for ``m_pose.m_bframe``.
    At this point, in this file, we have finally found the end of the simple passing of the
    flags, and we will see major chunks of code that are branched depending on this setting.
- Whether we can learn anything apparent at this point will depend on our ability to understand
  the code and concepts within the Bullet implementation.
  Perhaps we followed a multi-step process to find inscrutability,
  but at least we can see the very lines executed within the BGE.

  - Now we have some symbols to search for in `Google
    <https://www.google.com/search?q=bullet+setPose>`__ or in the `Bullet Forums
    <http://www.bulletphysics.org/Bullet/phpBB3/search.php?keywords=setPose>`__.
  - If we wanted to instrument this code with debugging ``printf()`` s,
    we could compile it and link it into our Blender build.

.. _game_engine-physics-bake-keyframes:

Recording to Keyframes
======================

Beyond gaming, sometimes you wish to render a complex scene that involves collisions,
multiple forces, friction between multiple bodies,
and air drag or even a simple setup that is just easier to achieve using the realtime physics.

Blender provides a way to ''bake'' or ''record'' a physics simulation into keyframes
allowing it then to be played as an action either for animation or games.
Keep in mind that the result of this method is a recording, no longer a simulation.
This means that the result is completely deterministic
(the same everytime it is run) and unable to interact with
new objects that are added to the physics simulation after it was recorded.
This may, or not, be desired according to the situation.

.. figure:: /images/Manual-BGE-Physics-RecordAnimation.jpg

   Menu to record Keyframes to the Dopesheet.

All you have to do to achieve this effect is go to the Info Editor
(the bar at the top of the window) :menuselection:`Game --> Record Animation`,
and it will lock away your keyframes for use in *Blender Render* mode.
You can go back to the 3D view and hit :kbd:`Alt-A` to play it back,
or :kbd:`Ctrl-F12` to render it out as an animation.

Note that you can also use Game Logic Bricks and scripting. Everything will be recorded.


Keyframe Clean-up
-----------------

.. figure:: /images/Manual-BGE-Physics-DopeSheetFull.jpg

   Resulting recorded animation

*Record Animation* keys redundant data (data that was did not change relative to the last frame).
Pressing :kbd:`O` while in the *DopeSheet* will remove all superfluous keyframes.
Unwanted channels can also be removed.


.. figure:: /images/Manual-BGE-Physics-DopeSheetCleaned.jpg

   Cleaned up recording


Exporting
=========

.bullet / Bullet compatible engines
-----------------------------------

You can snapshot the physics world at any time with the following code:

::


   import bge
   bge.constraints.exportBulletFile("test.bullet")


This will allow importing into other Bullet-based projects. See the
`Bullet Wiki on
Serialization <http://bulletphysics.org/mediawiki-1.5.8/index.php/Bullet_binary_serialization>`__ for more.
