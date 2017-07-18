��                        �     �  m     
   r  �   }  �       �     �  *   �     '  5   B     x     ~     �  (  �     �     �  
   �     �     �       �   #  �  �  8   ~	  B   �	  �   �	  l   �
  /   �
  ]   +  �  �     b  m   y  
   �  �   �  �  }     D     U  *   q     �  5   �     �     �        (       6     I  
   Q     \     s     �  �   �  �  T  8   �  B   ,  �   o  l     /   p  ]   �   Adaptive QMC settings. Amount to gamma correct the brightness of illumination. Higher values give more contrast and shorter falloff. Area Shape Area light ray-traced shadows are described here: :doc:`Raytraced Shadows </render/blender_render/lighting/lamps/area/raytraced_shadows>`. Choosing the appropriate shape for your *Area* light will enhance the believability of your scene. For example, you may have an indoor scene and would like to simulate light entering through a window. You could place a *Rectangular* area lamp in a window (vertical) or from neons (horizontal) with proper ratios for *Size X* and *Size Y*. For the simulation of the light emitted by a TV screen a vertical *Square* area lamp would be better in most cases. Commons Options. Constant Jittered settings. Dimensions for the *Square* or *Rectangle* Distance, Energy and Color Emit light from either a square or a rectangular area Gamma Introduction Lamp options Note that the *Distance* setting is much more sensitive and important for *Area* lamps than for others; usually any objects within the range of *Distance* will be blown out and overexposed. For best results, set the *Distance* to just below the distance to the object that you want to illuminate. Rectangle options. Shadows Shape Tips Size / Size X / Size Y Square / Rectangular Square options. The *Area* lamp does not have light falloff settings. It uses an "inverse quadratic" attenuation law. The only way to control its falloff is to use the *Distance* and/or *Gamma* settings. The *Area* lamp simulates light originating from a surface (or surface-like) emitter. For example, a TV screen, your supermarket's neon lamps, a window, or a cloudy sky are just a few types of area lamp. The area lamp produces shadows with soft borders by sampling a lamp along a grid the size of which is defined by the user. This is in direct contrast to point-like artificial lights which produce sharp borders. The *Shadow* panel when *Area* light source is selected. The shape of the area light can be set to *Square* or *Rectangle*. These settings are common to most types of lamps, and are described in :doc:`Light Properties </render/blender_render/lighting/lights/lamp_panel>`. These settings control what the lamp affects, as described in :ref:`What Light Affects <bi-lamp-influence>`. This Layer Only, Negative, Specular and Diffuse When an *Area* light source is selected, the *Shadow* panel has the following default layout: Project-Id-Version: Blender Reference Manual 2.76
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-08 23:23-0500
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: uk
Language-Team: uk <LL@li.org>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Adaptive QMC settings. Amount to gamma correct the brightness of illumination. Higher values give more contrast and shorter falloff. Area Shape Area light ray-traced shadows are described here: :doc:`Raytraced Shadows </render/blender_render/lighting/lamps/area/raytraced_shadows>`. Choosing the appropriate shape for your *Area* light will enhance the believability of your scene. For example, you may have an indoor scene and would like to simulate light entering through a window. You could place a *Rectangular* area lamp in a window (vertical) or from neons (horizontal) with proper ratios for *Size X* and *Size Y*. For the simulation of the light emitted by a TV screen a vertical *Square* area lamp would be better in most cases. Commons Options. Constant Jittered settings. Dimensions for the *Square* or *Rectangle* Distance, Energy and Color Emit light from either a square or a rectangular area Gamma Introduction Lamp options Note that the *Distance* setting is much more sensitive and important for *Area* lamps than for others; usually any objects within the range of *Distance* will be blown out and overexposed. For best results, set the *Distance* to just below the distance to the object that you want to illuminate. Rectangle options. Shadows Shape Tips Size / Size X / Size Y Square / Rectangular Square options. The *Area* lamp does not have light falloff settings. It uses an "inverse quadratic" attenuation law. The only way to control its falloff is to use the *Distance* and/or *Gamma* settings. The *Area* lamp simulates light originating from a surface (or surface-like) emitter. For example, a TV screen, your supermarket's neon lamps, a window, or a cloudy sky are just a few types of area lamp. The area lamp produces shadows with soft borders by sampling a lamp along a grid the size of which is defined by the user. This is in direct contrast to point-like artificial lights which produce sharp borders. The *Shadow* panel when *Area* light source is selected. The shape of the area light can be set to *Square* or *Rectangle*. These settings are common to most types of lamps, and are described in :doc:`Light Properties </render/blender_render/lighting/lights/lamp_panel>`. These settings control what the lamp affects, as described in :ref:`What Light Affects <bi-lamp-influence>`. This Layer Only, Negative, Specular and Diffuse When an *Area* light source is selected, the *Shadow* panel has the following default layout: 