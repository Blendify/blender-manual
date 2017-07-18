��                        �  Y   �  :   G     �     �     �     �     �     �     �  }  �  .   @  �   o  �  5     �  \   �  #   6     Z  T   a     �  
   �     �     �  	   �     �     �     	  \  $	     �
  �    Y   �  :   �     /     6     I     O     U     ^     f  �  o  6   ,  �   c  �  ^     �  o     2   t     �  n   �          %     2     9  	   ?     I     d     �    �  �      :abbr:`BSSRDF (Bidirectional subsurface scattering distribution function)` shader output. A skin-toned SSS shader with color radius (1.0, 0.8, 0.5). BSSRDF Christensen-Burley Color Cubic Examples Falloff Gaussian Gives a smoother falloff following a normal distribution, which is particularly useful for more advanced materials that use measured data that was fitted to one or more such Gaussian functions. The function is :math:`e^{-8x^2/ radius^2}`, such that the radius roughly matches the maximum falloff distance. To match a given measured variance *v*, set :math:`radius = sqrt(16 × v)`. Global scale factor for the scattering radius. How far the color scatters on average can be configured per RGB color channel. For example, for skin, red colors scatter further, which gives distinctive red-colored shadows, and a soft appearance. How much of the texture will be blurred along with the lighting, mixing the texture at the incoming and outgoing points on the surface. Note that the right choice depends on the texture. Consider for example a texture created from a photograph of skin, in this cases the colors will already be pre-blurred and texture blur could be set to 0. Even for hand painted textures no or minimal blurring might be appropriate, as a texture artist would likely paint in softening already, one would usually not even know what an unblurred skin texture looks like, we always see it blurred. For a procedural texture on the other hand this option would likely have a higher value. Inputs Is a sharp falloff useful for many simple materials. The function is :math:`(radius - x)^3`. Lighting distance falloff function. Normal Normal used for shading; if nothing is connected the default shading normal is used. Outputs Properties Radius Scale Sharpness Subsurface Scattering Node Subsurface Scattering Node. Texture Blur The *Subsurface Scattering* node is used to add simple subsurface multiple scattering, for materials such as skin, wax, marble, milk and others. For these materials, rather than light being reflect directly off the surface, it will penetrate the surface and bounce around internally before getting absorbed or leaving the surface at a nearby point. Used only with *Cubic* falloff. Values increasing from 0 to 1 prevents softening of sharp edges and reduces unwanted darkening. Project-Id-Version: Blender 2.77 Manual 2.77
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-10-07 09:50-0400
PO-Revision-Date: 2017-06-10 20:06+0200
Last-Translator: phan <phahoatho@gmail.com>
Language: uk
Language-Team: français <bf-docboard@blender.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Sortie Shader :abbr:`BSSRDF (Bidirectional subsurface scattering distribution function)`. A skin-toned SSS shader with color radius (1.0, 0.8, 0.5). BSSRDF Christensen-Burley Color Cubic Exemples Falloff Gaussian Donne une baisse plus douce suivant une distribution normale, qui est particulièrement utile pour des matériaux plus avancés qui utilisent des données mesurées qui ont été ajustées sur un ou plus fonctions Gaussian. La fonction est :`e^{-8x^2/ rayon^2}`, telle que le rayon correspond grossièrement à la distance de baisse maximale. Pour faire correspondre une variance mesurée *v *donnée, définissez (math:`rayon = sqrt(16 × v)`. Facteur d'échelle global pour le rayon de dispersion. La distance à laquelle la couleur diffracte en moyenne peut être configurée par canal de couleur RVB. Par exemple, pour la peau, les couleurs rouges diffractent plus loin, ce qui donne des ombres couleur rouge distinctives, et une apparence douce. How much of the texture will be blurred along with the lighting, mixing the texture at the incoming and outgoing points on the surface. Note that the right choice depends on the texture. Consider for example a texture created from a photograph of skin, in this cases the colors will already be pre-blurred and texture blur could be set to 0. Even for hand painted textures no or minimal blurring might be appropriate, as a texture artist would likely paint in softening already, one would usually not even know what an unblurred skin texture looks like, we always see it blurred. For a procedural texture on the other hand this option would likely have a higher value. Entrées Est une baisse *sharp* utile pour un grand nombre de matériaux simples. La fonction est :math:`(rayon - x)^3`. Fonction de baisse selon la distance d'éclairage. Normal Normale utilisée pour l'ombrage ; si rien n'est connecté, la normale de l'ombrage par défaut est utilisée. Sorties Propriétés Radius Scale Sharpness Node Subsurface Scattering Node Subsurface Scattering. Texture Blur Le node *Subsurface Scattering* est utilisé pour ajouter une dispersion multiple subsurface simple. pour les matériaux tels que skin, wax, marble, milk and others. Pour ces matériaux, plutôt que la lumière étant réfléchie directement de la surface, il va pénétrer la surface et rebondir autour inter avant d'être absorbée ou quittant la surface à un point à proximité. Utilisé uniquement avec la baisse *Cubic*. Les valeurs augmentant de 0 à 1 prévient l'adoucissement des bords nets et réduit l'assombrissement non voulu. 