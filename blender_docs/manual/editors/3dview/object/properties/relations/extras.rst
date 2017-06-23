.. _bpy.types.Object.use_slow_parent:
.. _bpy.types.Object.slow_parent_offset:
.. _bpy.types.Object.track_axis:
.. _bpy.types.Object.up_axis:
.. _bpy.types.Object.use_extra:

****************
Relations Extras
****************

Tracking Axes
   TODO.

   Axis
      Axis that points in the "forward" direction.
      (Applies to *DupliFrame* when parent *Follow* is enabled).
   Up Axis
      Axis that points in the upward direction.
      (Applies to *DupliFrame* when parent *Follow* is enabled).

Show Parent
   Create a delay in the parent relation.

   .. warning::

      This may be unsafe for renderfarms as it may be invalid after jumping around the time line.

   Offset
      Delay in the parent offset.

Extra Object Update
   Refresh the object agian on frame changes.
Extra Data Update
   Refresh the object's data again on frame changes.
