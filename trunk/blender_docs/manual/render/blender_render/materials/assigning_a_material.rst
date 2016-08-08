.. |material-icon| image:: /images/icons_material.png
   :width: 1.1em

********************
Assigning a Material
********************

Materials available in the currently-open blend-file can be investigated by clicking 
on the Materials icon |material-icon| in the Properties editor Header. 
In this section we look at how to assign or remove a material to/from the Active Object in Blender, either by:

- creating a new material,
- re-using an existing material, or
- deleting a material.

We also give hints about practical material usage.


Creating a new Material
=======================

Every time a new Object is created it has no material linked to it.
You can create a new material for the object by

- Selecting the object
- In the Properties editor, click on the object button
- Click on the Materials button in the Properties editor header (1)


The Shading panel then appears. This contains the following elements:

.. figure:: /images/materials_creating.jpg

   Add new material.


- Context - The currently-selected scene and object
- Object Material Slots (3) - this panel shows the "slots"
  for the material (or materials) that this object data contains.
- Active Material (2). Initially empty, asking for "New".

To add a new material, click "+" in the Active Material box.
This action has a series of effects:

.. figure:: /images/materials_new.jpg

   Materials Panel with New Entry.


- opens the new material in the Active Material box,
- brings up additional buttons in the immediate panel,
- adds the new material to the Available Materials list,
- adds the new material to the Object Material Slots list for the active object (or its object data - see below)
- brings up a :doc:`preview </editors/properties/material>` of the new material,
- provides you with a range of panels allowing you to select the
  :doc:`properties </render/blender_render/materials/properties/introduction>` of the new material.


New Material Panel Buttons
--------------------------

Details of the additional buttons which appear in the Material panel for a new Active
Material are as follows:

.. rubric:: Active Material

.. figure:: /images/icons_material-dropdown.jpg

   Available Materials
   See Reusing Existing Materials below.

Name
   Like other data-blocks, Blender will automatically set the name of the new material to
   "Material", "Material.001" and so on.
   You can change this by over-typing with your own choice of name.
Number of Users
   Specifies the number of meshes which use this material.
F - Fake User
   When enabled, this material will always be saved within the blend-file,
   even if it has no meshes which use it (see Deleting a Material).
X
   Delete this material (see Deleting a Material).


.. tip:: Naming materials

   It's a very good idea to give your materials clear names so you can keep track of them,
   especially when they're linked to multiple objects.
   Try to make your names descriptive of the material,
   not its function (e.g. "Yellow Painted" rather than "Kitchen Table Color")


.. rubric:: Nodes

.. figure:: /images/icons_node.jpg

   If dark, use the Shader Nodes to generate the material.

Data
   Specifies whether the material is to be linked to the Object or to the Object Data.


.. figure:: /images/material-matmenu-linkobjdata.jpg

   Link material to object or to object's data.


The Link pop-up menu has two choices, Data and Object.
These two menu choices determine whether the material is linked to the object or to the data,
(in this case) the mesh (or curve, nurbs, etc.).
The Data menu item determines that this material will be linked to the mesh's
data-block which is linked to the object's data-block.
The Object menu item determines that the material will be linked to the object's data block directly.
This has consequences of course. For example, different objects may share the same mesh data-block.
Since this data-block defines the shape of the object,
any change in edit mode will be reflected on all of those objects.
Moreover, anything linked to that mesh data-block will be shared by every object that shares that mesh.
So, if the material is linked to the mesh, every object will share it.
On the other hand, if the material is linked directly to the object data-block,
the objects can have different materials and still share the same mesh.
Short explanation: If connected to the object,
you can have several instances of the same obData using different materials.
If linked to mesh data, you cannot. See :doc:`Data System </data_system/introduction>` for more information.


Object Render Format (menu)
   This menu has four options which define how the object is to be rendered:
Surface
   Material applied to object planes.
Wire
   Material applied to wires following the object edges
Volume
   Material applied to the object volume.
Halos
   Material applied to halos around each object vertex.


.. list-table::

   * - .. figure:: /images/materials_render_surface.jpg

          Surface.

     - .. figure:: /images/materials_render_wire.jpg

          Wire.

   * - .. figure:: /images/materials_render_volume.jpg

          Volume.


     - .. figure:: /images/materials_render_halo.jpg

          Halo.


Reusing Existing Materials
==========================

Blender is built to allow you to reuse *anything*, including material settings,
between many objects. Instead of creating duplicate materials,
you can simply re-use an existing material.
There are several ways to do this using the Available Materials menu:

   *Single Object -* With the object selected, click the sphere located to the left of the Material name.
   A drop-down list appears showing all the materials available in the current blend-file.
   To use one, just click on it.


.. figure:: /images/material-matmenu-addfirst-select_exist_button.jpg

   Select an existing material.


.. figure:: /images/material-matmenu-searchlist.jpg

   List of available materials.


.. tip:: Searching for Materials

   The search field at the bottom of the material list allows you to search the names in the list.
   For example, by entering "wood" all existent materials are filtered so that
   only materials containing "wood" are displayed in the list.


   *Multiple Objects -* In the 3D View, with :kbd:`Ctrl-L`
   you can quickly link all selected objects to the material (and other aspects)
   of the :ref:`active object <object-active>`.
   Very useful if you need to set a large number of objects to the same material;
   just select all of them,
   then the object that has the desired material, and :kbd:`Ctrl-L` link them to that "parent".
   (See Tip on Linking Data in Creating about data linking.)


Deleting a Material
===================

To delete a material, select the material and click X in the Available Materials List entry.

Although the material will seem to disappear immediately,
the Delete action can depend on how the material is used elsewhere.

If the material is linked to the Object and there are other objects which use this material,
then the material will be removed from that object (but remain on all its other objects).

If the "Fake User" button (F) has been lit in the Available Materials list,
then the material will be retained when the file is saved, even if it has no users.

Only if it has 0 "real" users, and no "Fake" user, will the material be permanently deleted.
Note that it will still remain in the Materials list until the blend-file is saved,
but will have disappeared when the file is reloaded.
