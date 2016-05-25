
************************
Object Solver Constraint
************************

The *Object Solver* constraint gives the owner of this constraint, the location and rotation of the "solved object motion".

The "solved object motion" is where blender thinks the physical, real world (tracked)object was, relative to the camera that filmed it.

Can be used to add a mesh to video for example.

.. tip::

	This constraint only works after you have set up a minimum of eight markers and pressed :doc:`Solve object Motion </editors/movie_clip_editor/tracking/clip/tools>`.

	If it says *solve camera motion* instead of * solve object motion* then go into the properties shelf --> Objects --> and switch it from the camera, to an object.
