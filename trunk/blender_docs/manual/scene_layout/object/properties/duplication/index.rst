.. _bpy.types.Object.dupli_type:

##############
  Instancing
##############

There are currently four ways in Blender to procedurally instantiate (or duplicate) objects.
These options are located in the :menuselection:`Object --> Instancing` panel.

Vertices
   This creates an instance of all children of this object on each vertex
   (for mesh objects only).
Faces
   This creates an instance of all children of this object on each face
   (for mesh objects only).
Collection
   This creates an instance of the group with the transformation of the object.
   Collection Instancers can be animated using actions, or can get a :ref:`Proxy <object-proxy>`.

.. toctree::
   :maxdepth: 2

   dupliverts.rst
   duplifaces.rst
   dupligroup.rst
