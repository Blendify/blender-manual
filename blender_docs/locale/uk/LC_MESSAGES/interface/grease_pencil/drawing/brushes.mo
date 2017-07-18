��    %      D              l  �   m  �   9  >   �     	            )   $  �  N  F  �  �     w   �  >   '     f     v     }     �  H   �  K   �     4	  
   D	  1   O	  	   �	     �	     �	  �   �	     (
     /
     D
     R
     [
  �   m
  �   A  �  �  	   o  �   y  �     �  �  �   o  �   ;  >   �                 )   &  �  P  F  �  �     w   �  >   )     h     x          �  H   �  K   �     6  
   F  1   Q  	   �     �     �  �   �     *     1     F     T     ]  �   o  �   C  �  �  	   q  �   {  �      A :ref:`ui-list-view` of preset brushes. You can switch between the brushes using keyboard numbers from :kbd:`1` to :kbd:`0`. The selected drawing brush is the brush in the list located at that position. Adjust the sensibility of the thickness to the pressure of the pencil on the tablet. This pressure can be disabled using the right small button. Amount of randomness to add new new strokes after subdivision. Angle Brush Curves Brushes Define a jitter randomness in the stroke. Defines how many times smoothing is applied. On each additional round of smoothing performed, the strength of the smoothing applied is halved, i.e. on the first round, it will be 100% of smoothing factor, then 50%, then 25%, etc. This setting is most useful for improving the quality of heavily subdivided strokes, where the multiple rounds of smoothing can help reduce "faceting" artifacts. Defines how many times the stroke will be subdivided. Each time the stroke is subdivided, extra stroke points are added between each pair of existing stroke points. The main use of this setting is to make strokes look less "faceted" (especially large strokes drawn quickly). Strokes are subdivided before smoothing is applied. Defines how much smoothing is applied (using the same method as the "Smooth" Brush). It is used to get rid of jagged edges and jitter/hand shake. Defines the angle when the thickness of the stroke will be 100%. Any change in the direction will change the thickness. Defines the effect for drawing angle changes in the thickness. Drawing Brushes Factor Jitter Mode:     Stroke Edit Mode Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Brush Curves` Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Drawing Brushes` Preset Brushes. Randomness Read more about using the :ref:`ui-curve-widget`. Reference Sensibility Sensitivity Similar to sensibility, but affect the alpha value of the color. This parameter allows to get effects as color fading or watercolor. Smooth Smoothing Iterations Stoke Quality Strength Subdivision Steps The *Angle* and *Angle Factor* parameters allow to create drawing brushes such as markers that change the thickness depending of the angle of drawing. This gets a more artistic drawing and less "computer" lines. The properties for *Sensibility* and *Strength* additionally have a randomness factor which can be enabled using the jagged line icon to the right of the number sliders. These settings are per-brush settings that are applied after each stroke is drawn (when converting from 2D/screen space coordinates to 3D/data space coordinates). These are per-brush settings so that you can apply varying proprieties to different types of brushes. E.g higher smoothing and/or subdivision for final "beauty", and less smoothing/subdivision for initial "blocking" strokes. Thickness This panel allows you to adjust the parameters used with tablets to get personal preferences. The available curves that can be edited are: Width of full pressure strokes in pixels constant to the viewport i.e. not affected by the zoom. The thickness can be lower depending of the pressure. Project-Id-Version: Blender 2.77 Manual 2.77
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-01-23 17:43-0500
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: uk
Language-Team: uk <LL@li.org>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 A :ref:`ui-list-view` of preset brushes. You can switch between the brushes using keyboard numbers from :kbd:`1` to :kbd:`0`. The selected drawing brush is the brush in the list located at that position. Adjust the sensibility of the thickness to the pressure of the pencil on the tablet. This pressure can be disabled using the right small button. Amount of randomness to add new new strokes after subdivision. Angle Brush Curves Brushes Define a jitter randomness in the stroke. Defines how many times smoothing is applied. On each additional round of smoothing performed, the strength of the smoothing applied is halved, i.e. on the first round, it will be 100% of smoothing factor, then 50%, then 25%, etc. This setting is most useful for improving the quality of heavily subdivided strokes, where the multiple rounds of smoothing can help reduce "faceting" artifacts. Defines how many times the stroke will be subdivided. Each time the stroke is subdivided, extra stroke points are added between each pair of existing stroke points. The main use of this setting is to make strokes look less "faceted" (especially large strokes drawn quickly). Strokes are subdivided before smoothing is applied. Defines how much smoothing is applied (using the same method as the "Smooth" Brush). It is used to get rid of jagged edges and jitter/hand shake. Defines the angle when the thickness of the stroke will be 100%. Any change in the direction will change the thickness. Defines the effect for drawing angle changes in the thickness. Drawing Brushes Factor Jitter Mode:     Stroke Edit Mode Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Brush Curves` Panel:    :menuselection:`Tool Shelf --> Grease Pencil --> Drawing Brushes` Preset Brushes. Randomness Read more about using the :ref:`ui-curve-widget`. Reference Sensibility Sensitivity Similar to sensibility, but affect the alpha value of the color. This parameter allows to get effects as color fading or watercolor. Smooth Smoothing Iterations Stoke Quality Strength Subdivision Steps The *Angle* and *Angle Factor* parameters allow to create drawing brushes such as markers that change the thickness depending of the angle of drawing. This gets a more artistic drawing and less "computer" lines. The properties for *Sensibility* and *Strength* additionally have a randomness factor which can be enabled using the jagged line icon to the right of the number sliders. These settings are per-brush settings that are applied after each stroke is drawn (when converting from 2D/screen space coordinates to 3D/data space coordinates). These are per-brush settings so that you can apply varying proprieties to different types of brushes. E.g higher smoothing and/or subdivision for final "beauty", and less smoothing/subdivision for initial "blocking" strokes. Thickness This panel allows you to adjust the parameters used with tablets to get personal preferences. The available curves that can be edited are: Width of full pressure strokes in pixels constant to the viewport i.e. not affected by the zoom. The thickness can be lower depending of the pressure. 