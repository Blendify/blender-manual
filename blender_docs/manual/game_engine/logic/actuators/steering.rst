
..    TODO/Review: {{review|void=X}} .

*****************
Steering Actuator
*****************

The steering actuator moves an object towards a target object, with options to seek, flee, or follow a path. This actuator will not actually try to avoid obstacles by deviating the objects course.  

See :doc:`Actuator Common Options </game_engine/logic/actuators/common_options>` for common options.

Special Options:



Options
=======

.. figure:: /images/Doc_Manual_BGE_Game_Actuator_Steering_-_Steering_Panel.jpg
	Steering Actuator Panel


Behavior:
    Seek, Flee, Path following

Target Object:
    The game object to seek.


Navigation Mesh Object:
    The name of the navigation mesh object used by the Steering Actuator when in Path following behavior.  
    The game object will use the Navigation Mesh to create a path to follow the Target Object.
    You can create your own mesh to use for navigation and make it a Navigation Mesh in:
    Properties menu -> 	Physics button -> Physics tab -> Physics Type: Navigation Mesh
    Or you can let Blender create a Navigation Mesh, then select a mesh.  (Floor or ground or etc.)
    Properties menu -> Scene button -> Navigation mesh tab -> Build navigation mesh


Dist:
    The maximum distance for the game object approach the Target Object.


Velocity:
    The velocity used to seek the Target Object.


Acceleration:
    The maximum acceleration to use when seeking the Target Object.


Turn Speed:
    The maximum turning speed to use when seeking the Target Object. 


Facing:
    Set a game object axis that always faces the Target Object.


Axis:
    The game object axis that always faces the Target Object.
    Axis:  X and minus X.  Y and minus Y.  Z and minus Z.

Axis N:
    Use the Normal of the Navigation Mesh to align the up vector of the game object. 


Self Terminated:
    
Disabled:  Stops moving toward the Target Object once it reaches the maximum distance to approach the Target Object.  Will follow the Target Object if it moves further away than the maximum distance.

    Enabled:   Stops moving toward the Target Object once it reaches the maximum distance to approach the Target Object.  Won't follow even if the Target Object moves further away than the maximum distance. 


Visualize:

    Enable:  Show debug visualization.
    Disable:  Don't show debug visualization.