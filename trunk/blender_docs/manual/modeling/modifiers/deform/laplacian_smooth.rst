.. _bpy.types.LaplacianSmoothModifier:

*************************
Laplacian Smooth Modifier
*************************

The Laplacian Smooth Modifier allows you to reduce noise on a mesh's surface with minimal changes to its shape.

It can also exaggerate the shape using a negative *Factor*.

The Laplacian Smooth is useful for objects that have been reconstructed from the
real world and contain undesirable noise. It removes noise while still
preserving desirable geometry as well as the shape of the original model.

The Laplacian Smooth Modifier is based on a curvature flow Laplace Beltrami operator in a diffusion equation.


Options
=======

.. figure:: /images/modeling_modifiers_deform_laplacian-smooth_panel.png

   Laplacian Smooth Modifier.

Repeat
   Repetitions allow you to run the Laplacian smoothing multiple times.
   Each repetition causes the flow curvature of the mesh to be recalculated again,
   and as a result it removes more noise with every new iteration using a small *Factor* < 1.0.

   When on 0, no smoothing is done.

   .. note::

      More repetitions will take longer to calculate.
      So beware of doing so on meshes with a large number of vertices.

   .. list-table:: With a factor of 0.5.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_repeat0.jpg
             :width: 130px

             Repeat: 0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_repeat1.jpg
             :width: 130px

             Repeat: 1.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_repeat5.jpg
             :width: 130px

             Repeat: 5.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_repeat10.jpg
             :width: 130px

             Repeat: 10.

   .. list-table:: With a factor of 2.0.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-repeat0.png
             :width: 130px

             Repeat: 0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-repeat1.png
             :width: 130px

             Repeat: 1.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-repeat5.png
             :width: 130px

             Repeat: 5.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-repeat10.png
             :width: 130px

             Repeat: 10.

   .. list-table:: With a factor of -0.5.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-repeat0.jpg
             :width: 130px

             Repeat: 0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-repeat1.jpg
             :width: 130px

             Repeat: 1.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-repeat5.jpg
             :width: 130px

             Repeat: 5.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-repeat10.jpg
             :width: 130px

             Repeat: 10.

Factor
   Controls the amount of displacement of every vertex along the curvature flow.

   - Using a small *Factor*, you can remove noise from the shape without affecting desirable geometry.
   - Using a large *Factor*, you get smoothed versions of the shape at the cost of fine geometry details.
   - Using a negative *Factor*, you can enhance the shape, preserving desirable geometry.
   - When the *Factor* is negative, multiple iterations can magnify the noise.

   .. list-table::

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_lambda0-0.jpg
             :width: 130px

             Factor: 0.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_lambda0-5.jpg
             :width: 130px

             Factor: 0.5.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_lambda.jpg
             :width: 130px

             Factor: 2.5.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_lambda5-0.jpg
             :width: 130px

             Factor: 5.0.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-lambda0-0.png
             :width: 130px

             Factor: 0.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-lambda1-0.jpg
             :width: 130px

             Factor: 1.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-lambda10-0.jpg
             :width: 130px

             Factor: 10.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-lambda50-0.jpg
             :width: 130px

             Factor: 50.0.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-lambda0-0.jpg
             :width: 130px

             Factor: 0.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-lambda20-0.jpg
             :width: 130px

             Factor: -20.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-lambda50-0.jpg
             :width: 130px

             Factor: -50.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-lambda300-0.jpg
             :width: 130px

             Factor: -300.0.

Border
   Since there is no way to calculate the curvature flow on border edges, they must be controlled separately.
   Border edges are smoothed using a much simpler method, using this property to control the influence.

   Positive values will smooth the vertex positions,
   while negative values will "enhance" them by transforming them in the opposite direction.

   .. list-table:: With a factor of 2.5.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_border0-0.jpg
             :width: 130px

             Border: 0.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_border1-0.jpg
             :width: 130px

             Border: 1.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_border.jpg
             :width: 130px

             Border: 2.5.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_border10-0.jpg
             :width: 130px

             Border: 10.0.

   .. list-table:: With a factor of 20.0.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-border0-0.jpg
             :width: 130px

             Border: 0.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-border1-0.jpg
             :width: 130px

             Border: 1.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-border5-0.jpg
             :width: 130px

             Border: 5.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-border20-0.jpg
             :width: 130px

             Border: 20.0.

   .. list-table:: With a factor of -30.0.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cup-0-0.jpg
             :width: 130px

             Border: 0.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cup-20-0.jpg
             :width: 130px

             Border: -20.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cup-50-0.jpg
             :width: 130px

             Border: -50.0.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cup-200-0.jpg
             :width: 130px

             Border: -200.0.

Axis
   Toggle buttons to enable/disable deforming vertices in the X, Y and/or Z axis directions.

   X, Y, Z

   .. list-table::

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-axis.png
             :width: 130px

             X, Y, Z: Unselected.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-axis-xyz.jpg
             :width: 130px

             X, Y, Z: Selected.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-axis-xy.jpg
             :width: 130px

             X, Y: Selected.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-axis-x.png
             :width: 130px

             X: Selected.

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-axis.png
             :width: 130px

             X, Y, Z: Unselected.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-axis-xyz.jpg
             :width: 130px

             X, Y, Z: Selected.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-axis-xy.jpg
             :width: 130px

             X, Y: Selected.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-axis-x.png
             :width: 130px

             X: Selected.

Preserve Volume
   The smoothing process can produce shrinkage.
   That is significant for large *Factor* or large *Repeat* values;
   to reduce that effect you can use this option.

   .. list-table::

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-volume-false.png
             :width: 130px

             Off.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-volume-true.jpg
             :width: 130px

             On.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-volume2-false.jpg
             :width: 130px

             Off.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_cube-volume2-true.jpg
             :width: 130px

             On.

Vertex Group
   A vertex group name, to constrain the effect to a group of vertices only.
   Allows for selective, real-time smoothing or enhancing, by painting vertex weights.

   .. list-table::
      :header-rows: 1

      * - Original Geometry
        - No Group Chosen
        - Vertex Weights
        - Result
      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_repeat0.jpg
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_lambda.jpg
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_femme-paint.jpg
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_femme-wgroup.jpg
             :width: 130px

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-normal.png
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-smooth.jpg
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-paint.jpg
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-wgroup.png
             :width: 130px

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-vertex0.jpg
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-vertex1.jpg
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-vertex2.jpg
             :width: 130px

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_camel-vertex3.jpg
             :width: 130px

Normalized
   When enabled, the results will depend on face sizes. When disabled, geometry spikes may occur.

   .. list-table::

      * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_monkey-normalized0.jpg
             :width: 130px

             Original Geometry.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_monkey-normalized1.jpg
             :width: 130px

             On.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_monkey-normalized2.jpg
             :width: 130px

             Off.

        - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_monkey-normalized3.jpg
             :width: 130px

             Off, High Factor.

.. hint::

   Meshes with a great number of vertices, more than ten thousand (10,000),
   may take several minutes for processing; you can use small portions of the mesh for testing
   before executing the modifier on the entire model.


Examples
========

.. list-table::

   * - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_repeat0.jpg
          :width: 200px

          `Femme Front blend-file
          <https://wiki.blender.org/index.php/Media:Apinzonf_GSOC_2012_Media_femme_front.blend>`__.

     - .. figure:: /images/modeling_modifiers_deform_laplacian-smooth_t-wgroup.png
          :width: 200px

          `Cube Smooth blend-file
          <https://wiki.blender.org/index.php/Media:Apinzonf_GSOC_2012_Media_cube_smooth.blend>`__.

.. seealso::

   :doc:`Smooth Modifier </modeling/modifiers/deform/smooth>`.
