
..    TODO/Review: {{review}} .

***************
Quick Rendering
***************

What is rendering?
==================

Rendering is the process of creating a 2D image. Blender creates this image by
taking into account your model and all of your materials, textures, lighting
and compositing.

- There are two main types of rendering engines built inside Blender, one for
  *Full render*, and other for *OpenGL render*. This page shows you basic
  information about rendering Images. For a deeper understanding about the
  *Full Render* Engine built inside Blender, called *Blender Internal*,
  consult the section about :doc:`Rendering with Blender Internal </render/introduction>`.
- There is also a section in this wiki manual dedicated to the new
  :doc:`Cycles </render/cycles/index>` Render Engine.


Rendering an image using ''Full Render'' - Blender Internal
===========================================================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Hotkey:   :kbd:`F12`


.. figure:: /images/basics-starting-header-render-menu.jpg
   :align: right

   Header of the Info Window


To start a *Full render* using *Blender Internal* you can use any of the following
options:

- Press :kbd:`F12`
- Go to :menuselection:`Properties Window --> Render context --> Render panel` and press the *Image* button
- Go to :menuselection:`Render --> Render Image` from the header of the *Info Window*
  (see: *Header of the Info Window*)
- Using Blender Search: press :kbd:`Spacebar`, type Render and click on *Render*.

To abort or quit the render, press :kbd:`Esc`.

.. _opengl_render:

Rendering an image using ''OpenGL Render''
==========================================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Hotkey:   Undefined -You can add one for your :doc:`Keymap </preferences/input>`


To start an *OpenGL render* you can use any of the following options:


.. figure:: /images/basics-starting-small-opengl-render-buttons.jpg

.. figure:: /images/basics-starting-small-search-render.jpg
   :align: right

   Search functionality


- Click on *OpenGL Render Active Viewport*, in the header of the 3D Window,
  using the small button showing a *Camera* (together with a small image showing a *slate*)
  in the header of the 3D View
- Go to :menuselection:`Render --> OpenGL Render Image` from the header of the *Info Window*
  (see: *Header of the Info Window* Image)
- Using Blender Search: press :kbd:`Spacebar`, type *Render* and click on *OpenGL Render*.

To abort or quit the render, press :kbd:`Esc`.


Adjusting the resolution
========================

.. figure:: /images/Starting-Vital-dimensions-panel.jpg
   :align: right

   Dimensions panel


The *Dimensions panel* of the *Render context* allows you to change the
resolution.
The default installation of Blender is set initially to **50%** of **1920 x 1080**,
resulting in a **960** x **540** Image. (Highlighted in yellow,
in Dimensions Panel Image.)
Higher resolutions and high percentage scales will show more detail,
but will also take longer to render.


Output format and output file
=============================

.. figure:: /images/Starting-Vital-output-panel.jpg
   :align: right

   Output panel


You can also choose an output format and the output location for your rendered image or animation.
By default they are saved in a temporary folder (/tmp), using an absolute path.
You can set up your file paths using instructions in the :doc:`File setup chapter </preferences/file>`;
however you can change this to a different folder by clicking the folder icon in the *Output panel*.
You can also choose the type of image or movie format for your work from the Menu Button.


Saving your image
=================

.. figure:: /images/Starting-Vital-save-as.jpg
   :align: right

   Save as dialog


Blender does not save your image automatically. To save your image, you can either press
:kbd:`F3` or click *Save As Image* from the *Image* menu of the
UV/Image editor window's header. This action will open the Blender Internal File Browser,
and then you can search for folders to place your Render.


Rendering an animation using ''Full Render'' - Blender Internal
===============================================================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Hotkey:   :kbd:`Ctrl-F12`


.. figure:: /images/Starting-Vital-dimensions-panel.jpg
   :align: right

   Dimensions panel


Rendering an animation is simple; the *Frame Range* (Highlighted in red,
in Dimensions Panel Image)
in the Output Panel is used to define the **number of frames** your animation will render.
The **time** is defined by the *Frames Per Second*, defined in the *Frame Rate*
(Highlighted in blue, in Dimensions Panel Image) drop-down list.
The default is set to **24 FPS** and **250** frames.

A quick example to understand those numbers:

- The Panel shows that the animation will start at frame **1** and end at frame **250**,
  and the FPS setting is set to **24**, so,
  the standard Blender installation will give you approximately **10** (ten)
  seconds of animation (250 / 24 = 10.41 sec).

To render an animation using *Full Render* with the *Blender Internal* Engine,
you can use any of the following options:

- Press :kbd:`Ctrl-F12`
- Go to :menuselection:`Properties Window --> Render context --> Render panel`
  and press the *Animation* button or
- Go to :menuselection:`Render --> Render animation` from the header of the *Info Window*
  (see: *Header of the Info Window* Image)

To abort or quit rendering the animation, press :kbd:`Esc`.


Rendering an animation using ''OpenGL Render''
==============================================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Hotkey:   Undefined -You can add one for your :doc:`Keymap </preferences/input>`


To Render an animation using *OpenGL Render*, you can use any of the following options:


.. figure:: /images/basics-starting-small-opengl-render-buttons.jpg

- Click on the small button showing a *slate*
  (together with a small image showing a *camera*) in the header of the 3D View
- Go to :menuselection:`Render --> OpenGL Render animation` from the header of the *Info Window*
  (see: *Header of the Info Window* Image)

To abort or quit rendering the animation, press :kbd:`Esc`.


Showing Only Rendered Objects
=============================

.. admonition:: Reference
   :class: refbox

   | Mode:     All modes
   | Hotkey:   Undefined - You can add one for your :doc:`Keymap </preferences/input>`


.. figure:: /images/basics-quick-render-display-only-render.jpg
   :align: right

   Transform Panel - Display Tab.


At render time (either Full or OpenGL),
there are some Objects in the scene that won't be rendered, either because of their type
(Bones, Empties, Cameras, etc.), because they are void or have no visible geometry
(Mesh without any vertex, curves not extruded, etc.),
or simply because they are set as not renderable.

Blender has an option to only show Objects in the Scene that will be rendered.

To access this option, put your Mouse in a 3D View (focusing on it),
use shortcut :kbd:`N` or click in the **+** sign in the upper right side,
to show the *Transform* Panel. Rolling through the options,
you will find the *Display* tab,
whose options are for controlling how Objects are displayed in the 3D View.

Just enable the *Only Render* option - now,
only Objects that will be rendered will be shown (see Fig: Transform Panel - Display Tab).
This option also works when generating Images using OpenGL Render.
Note that all of the other options for selective displaying will be disabled.


The purposes of OpenGL Rendering
================================

OpenGL rendering allows you to quickly inspect your animatic
(for things like object movements, alternate angles, etc.),
by giving you a draft quality rendering of the current viewport.

Because it is only rendered using OpenGL, it is much faster to generate,
even if it only looks as good as what you see in the 3D viewport.

This allows you to preview your animation with fluid playback,
which you would otherwise not be able to do in real time due to scene complexity (i.e.,
pressing :kbd:`Alt-A` results in too low of a *Frames Per Second* to get a good feel
for the animation).

This is an example of an OpenGL rendered image:


.. figure:: /images/OpenGL_rendered.jpg
   :align: center

   OpenGL Render


And then here is the *Full Render* using Blender Internal render engine:


.. figure:: /images/Full_render.jpg
   :align: center

   Full Render


You can use OpenGL to render both images and animations,
and change dimensions using the same instructions explained above. As with a normal render,
you can abort it with :kbd:`Esc`.

