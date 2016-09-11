..    TODO/Review: {{review|im=old screenshot: Need to update}}.

***********
Editing UVs
***********

After unwrap, you will likely need to arrange the UV maps into something that can be logically
textured or painted. Your goals for editing are:


- Stitch some pieces (UV maps) back together.
- Minimize wasted space in the image.
- Enlarge the faces where you want more detail.
- Re-size/enlarge the faces that are stretched.
- Shrink the faces that are too grainy and have too much detail.

With a minimum of dead space,
the most pixels can be dedicated to giving the maximum detail and fineness to the UV Texture.
A UV face can be as small as a pixel (the little dots that make up an image)
or as large as an entire image. You probably want to make some major adjustments first,
and then tweak the layout.


Transforming UVs
================

UVs can be:

- Translated :kbd:`G`
- Rotated :kbd:`R`
- Scaled :kbd:`S`

They can also be hidden or shown using the :kbd:`H` and :kbd:`Alt-H` respectively,
the same way as in Edit Mode.


Axis Locking
------------

Transformations can be locked to an axis by pressing :kbd:`X` or :kbd:`Y` after
one of the transform tools. Also,
holding the :kbd:`MMB` will constrain movement to the X or Y axis.


Pivot Points
------------

The UV/Image editor has a 2D cursor.
Its position can be changed by :kbd:`LMB` clicking in the UV/Image editor.
You can also manually adjust its position in the Properties region.
The range by default is from 0 to 256 starting from the lower left corner.
By enabling *Normalized* under *Coordinates*,
the range changes from 0 to 1.

The 2D Cursor can be snapped to nearest pixels or to selected elements,
by selecting *UVs Menu* under *Snap*.

The Pivot Point can be changed to:

- Bounding Box Center
- Median Point
- 2D Cursor Location


Proportional Editing
--------------------

Proportional Editing is available in UV editing. The controls are the same as in the 3D View.
See :doc:`Proportional Editing in 3D </editors/3dview/transform/transform_control/proportional_edit>`
for full reference.


Snapping
--------

Snapping in UV is also similar to
:doc:`Snapping in 3D </editors/3dview/transform/transform_control/precision/snap>`,
but only snapping to UVs works, however,
the *Snap to Pixels* option in the *UVs Menu* will force the UVs to snap to the pixels of an image if loaded.

Additional tools can be found in the *UVs Menu* under the *Snap* Submenu:

Snap Pixels
   Moves selection to nearest pixel.
Snap to Cursor
   Moves selection to 2D cursor location.
Snap to Adjacent Unselected
   Moves selection to adjacent unselected element.


Weld and Align
--------------

The *Weld* tool, :kbd:`W-1` will move selected UVs to their average position.

*Align*, :kbd:`W-2`, :kbd:`W-3`, and :kbd:`W-4`
will line up selected UVs on the X axis, Y axis, or automatically chosen axis.


Mirror
------

Components can be mirrored on the Y axis or the X axis. You can select *Mirror X*
and *Mirror Y* from the *Snap* sub menu in the *UV* menu.

You can also use the hotkey :kbd:`Ctrl-M`, then enter :kbd:`X` or :kbd:`Y`,
or hold the :kbd:`MMB` and drag in the mirror direction.


Stitch
------

*Stitch*, :kbd:`V`, will join selected UVs that share vertices.
You set the tool to limit stitching by distance in the Tool Settings,
by activating *Use Limit* and adjusting the *Limit Distance*


Minimize Stretch
-----------------

The *Minimize Stretch* tool, :kbd:`Ctrl-V`,
reduces UV stretch by minimizing angles. This essentially relaxes the UVs.


Face Mirror and Rotate UVs
--------------------------

The orientation of the UV Texture is defined by each face.
If the image is, for example, upside down or laying on its side,
use the :menuselection:`Face --> Rotate UVs` (in the 3D View in Face Select mode)
menu to rotate the UVs per face in 90-degree turns.

The :menuselection:`Face --> Mirror UVs` tool mirrors the UVs per face,
which flips the image over, showing you the image reversed.


Pinning
=======

You can pin UVs so they do not move between multiple unwrap operations.

.. >

When Unwrapping a model it is sometimes useful to "Lock" certain UVs,
so that parts of a UV layout stay the same shape, and/or in the same place.

Pinning is done selecting a UV, then by selecting *Pin* from the *UVs* menu,
or the shortcut :kbd:`P`. You can *Unpin a UV* with the shorctut :kbd:`Alt-P`

Pinning is most effective when using the Unwrap method of UV mapping, for organic objects.
An example is when you are modeling a symmetrical object using the
:doc:`Mirror Modifier </modeling/modifiers/generate/mirror>`.
Some of the UVs on the mirror axis may be shared across the mirrored counterparts.
You could pin the UVs that correspond to the midline, then align them on the X axis,
and they will stay in that location.

Pinning also work great with the Live Unwrap tool. If you pin two or more UVs,
with Live Unwrap on, dragging pinned UVs will interactively unwrap the model.
This helps with fitting a UV island to a certain shape or region.


Optimizing the UV Layout
========================

When you have unwrapped, possibly using seams,
your UV layout may be quite disorganized and chaotic.
You may need to proceed with the following tasks: Orientation of the UV mapping,
arranging the UV maps, stitching several maps together.

The next step is to work with the UV layouts that you have created through the unwrap process.
If you do add faces or subdivide existing faces when a model is already unwrapped,
Blender will add those new faces for you. In this fashion,
you can use the UV Texture image to guide additional geometry changes.

When arranging, keep in mind that the entire view is your workspace,
but only the UV coordinates within the grid are mapped to the image. So,
you can put pieces off to the side while you arrange them. Also,
each UV unwrap is its own linked set of coordinates.

You can lay them on top of one another, and they will onionskin
(the bottom one will show through the top one). To grab only one though,
:kbd:`RMB` select one of the UV coordinates,
and use :menuselection:`Select --> Linked UVs`, :kbd:`Ctrl-L`
to select connected UVs, not border select because UVs from both will be selected.


Combining UV Maps
-----------------

.. figure:: /images/uv-unwrap-bad.png
   :width: 300px

   Bad Unwrap-Note Ear and Neck.


Very often you will unwrap an object, such as the face example we have been using,
and get it "mostly right" but with parts of the mesh that did not unwrap properly,
or are horribly confusing. The picture to the right shows an initial unwrap of the face using
the Unwrap from sphere option. The issues are with the ear; it is just a mush of UVs,
and the neck, it is stretched and folded under. Too much work to clean up.

.. figure:: /images/uv-unwrap-face.png
   :width: 300px

   Unwrap Face Only, without Ear or Neck.


We can tell that the ear would unwrap nicely with just a straightforward projection from the
side view, and the neck with a tubular unwrap. So,
our general approach will be to unwrap different parts of the object (face, ears, and so on)
using different unwrap calculations,
selecting each calculation according to whatever works best for that piece. So let us begin:
We select only the "face" faces, unwrap them using the *Sphere* calculation, and scale and
rotate them somewhat to fit logically within the image area of the UV/Image Editor.

.. figure:: /images/uv-unwrap-ear.png
   :width: 300px

   Unwrap Projection: Ear.


Once we are satisfied with the face, it is time to turn our attention to the ear. First,
unselect the faces you were working with. Their
UVs will disappear from the UV/Image Editor, but they are still there, just not shown.
(To verify this,
you can select a few faces in 3D View and it will show up in the UV/Image Editor.)

To work on the ear, in the 3D View, we now select only the "ear" faces.
You can use Vertex Groups to select the ear faces. Selecting sub-meshes is easy too,
since they are not connected to the rest of the mesh.
Simply selecting Linked vertices will select that entire submesh. Basically,
since you are in edit mode, all of the selecting/unselecting features are available to you.

Now re-unwrap the ear using the *Project* calculation from side view,
and scale and rotate them somewhat (discussed in the next section),
and place them off to the side. You can do this repetitively, using different UV calculations;
each re-calculation just puts those UVs for the selected faces somewhere else. Choose the
calculation for each piece that gives you the best fit and most logical layout for subsequent
painting of that piece.

.. figure:: /images/uv-unwrap-all.png
   :width: 300px

   UV Maps together.


When all of the pieces of the mesh have been unwrapped using the various calculations,
you should end up with something that looks like to the Example to the right.
All of the sections of the mesh have been mapped,
and all those maps are laid out in the same UV Texture map. Congratulations! From here,
it is a simple matter of "stitching" (discussed in the next section)
to construct the entire UV Map as a single map.

.. figure:: /images/uv-unwrap-combo.png
   :width: 300px

   UV Maps Arranged and Stitched.


When you have completed arranging and stitching, you will end up with a consolidated UV Map,
like that shown to the right, arranged such that a single image will cover, or paint,
all of the mesh that needs detailed painting.
All of the detailed instructions on how to do this are contained in the next section.
The point of this paragraph is to show you the ultimate goal.
Note that the mesh shown is Mirrored along the Z axis,
so the right side of the face is virtual; it is an exact copy of the right,
so only one set of UVs actually exist. (If more realism is desired,
the *Mirror* modifier would be applied, resulting in a physical mirror and a complete head.
You could then make both side physically different by editing one side and not the other.
Unwrapping would produce a full set of UVs (for each side)
and painting could thus be different for each side of the face, which is more realistic.)


Average Island Scale
--------------------

Using the *Average Island Scale* tool, shortcut :kbd:`Ctrl-A`,
will scale each UV island so that they are all approximately the same scale.


Packing Islands
---------------

The *Pack Islands* tool, shortcut :kbd:`Ctrl-P`, will uniformly scale,
then individually transform each Island so that they fill up the UV space as much as possible.
This is an important tool for efficiently making use of the texture space.


Constraining to Image Bounds
----------------------------

Turning on *Constrain to Image Bounds* will prevent UVs from being moved outside the
0 to 1 UV range.


Iteration and Refinement
------------------------

At least for common people, we just do not "get it right the first time." It takes building on
an idea and iterating our creative process until we reach that magical milestone called
"Done." In software development, this is called the Spiral Methodology.

Applied to Computer Graphics, we cycle between modeling, texturing, animating,
and then back to making some modifications to mesh, re-UV mapping, tweaking the animation,
adding a bone or two, finding out we need a few more faces, so back to modeling, etc.
We continue going round and round like this until we either run out of time, money,
or patience, or, in some rare cases, are actually happy with our results.


Refining the Layout
===================

Refinement comes into play when we finally look at our character,
and realize that we need more detail in a particular spot. For example,
areas around the eyes might need crow's feet, or we need to add a logo to the vest.
As you start to edit the image,
you realize that there just are not enough pixels available to paint the detail that you want.

Your only choice is to expand the size (scale out) that UV face.
Using the minimize stretch or scale commands,
you expand the UV faces around the eyes or chest, allocating more pixels to those areas,
but at the same time taking away pixels (detail) from something else,
like the back of the head. After refining the UV map,
you then edit the image so that it looks right and contains the details you want.


Reusing Textures
----------------

Another consideration is the need to conserve resources. Each image file is loaded in memory.
If you can re-use the same image on different meshes, it saves memory. So, for example,
you might want to have a generic face painting, and use that on different characters,
but alter the UV map and shape and props (sunglasses) to differentiate.

You might want to have a "faded blue jeans" texture,
and unwrap just the legs of characters to use that image.
It would be good to have a generic skin image, and use that for character's hands, feet, arms,
legs, and neck. When modeling a fantasy sword,
a small image for a piece of the sword blade would suffice,
and you would Reset Unwrap the sword faces to re-use that image down the length of the blade.
