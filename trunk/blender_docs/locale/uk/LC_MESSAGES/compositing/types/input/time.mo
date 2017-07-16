��          �               L  �   M                 g   "     �     �     �  
   �  �   �  
   �  �   �  ?  5  y   u     �  	     
     S   $  �  x  �        �     �     �  g   �     T	     f	     t	     |	  �   �	  
   k
  �   v
  ?    �   D  $   �     �       S   "   A speed of time factor (from 0.00 to 1.00) relative to the frame rate defined in the :ref:`Render Dimensions Panel <render-tab-dimensions>`. The factor changes according to the defined curve. Curve Example Factor Flipping the curve around reverses the time input, but doing so is easily overlooked in the node setup. Inputs Output values Outputs Properties Start frame and End frame of the range of time specifying the values the output should last. This range becomes the X-axis of the graph. The time input could be reversed by specifying a start frame greater than the end frame. Start, End The *Time node* generates a factor value (from 0.00 to 1.00) that changes according to the curve was drawn as time progresses through the *Timeline*. The :doc:`Map Value </compositing/types/vector/map_value>` node can be used to map the output to a more appropriate value. With sometimes curves, it is possible that the Time node may output a number larger than one or less than zero. To be safe, use the Min/Max clamping function of the Map Value node to limit output. The Y-value defined by the curve is the factor output. For the curve controls see: :ref:`Curve widget <ui-curve-widget>`. This node has no input sockets. Time Node Time Node. Time controls from left to right: no effect, slow down, freeze, accelerate, reverse Project-Id-Version: Blender Reference Manual 2.76
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-09-26 17:52-0400
PO-Revision-Date: 2016-09-30 07:08+0200
Last-Translator: phan <phahoatho@gmail.com>
Language: uk
Language-Team: français <bf-docboard@blender.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 A speed of time factor (from 0.00 to 1.00) relative to the frame rate defined in the :ref:`Render Dimensions Panel <render-tab-dimensions>`. The factor changes according to the defined curve. Courbe Example Factor Flipping the curve around reverses the time input, but doing so is easily overlooked in the node setup. Inputs (entrées) Output values Outputs Propriétés Start frame and End frame of the range of time specifying the values the output should last. This range becomes the X-axis of the graph. The time input could be reversed by specifying a start frame greater than the end frame. Start, End Le *Time node* génère une valeur (entre 0,00 et 1,00) qui change en fonction de la courbe pendant que le temps progresse sur la *Timeline*. The :doc:`Map Value </compositing/types/vector/map_value>` node can be used to map the output to a more appropriate value. With sometimes curves, it is possible that the Time node may output a number larger than one or less than zero. To be safe, use the Min/Max clamping function of the Map Value node to limit output. La valeur en Y définie par la courbe est le facteur de sortie. Pour les contrôles de la courbe, voir :ref:`Curve widget <ui-curve-widget>`. Ce node n'a pas de broche d'entrée. Time : Node de Temps Time : Node de Temps. Time controls from left to right: no effect, slow down, freeze, accelerate, reverse 