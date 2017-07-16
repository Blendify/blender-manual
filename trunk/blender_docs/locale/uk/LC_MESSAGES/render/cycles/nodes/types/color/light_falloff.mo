��          �               \     ]  Z   f     �     �     �     �  4   �     -  J   4       
   �  	   �  i   �       �        �  �  �     �     �  �  �     �  Z   �     �          
       4   1     f  J   m     �  
   �  	   �  i   �     ?	  �   F	     +
  �  4
     �     �   Constant Constant light falloff, where the distance to the light has no influence on its intensity. Examples Inputs Light Falloff Node Light Falloff Node. Light strength before applying falloff modification. Linear Linear light falloff, giving a slower decrease in intensity over distance. Outputs Properties Quadratic Quadratic light falloff; this will leave strength unmodified if smooth is 0.0 and corresponds to reality. Smooth Smooth intensity of light near light sources. This can avoid harsh highlights, and reduce global illumination noise. 0.0 corresponds to no smoothing; higher values smooth more. The maximum light strength will be strength/smooth. Strength The *Light Falloff* node allows you to manipulate how light intensity decreases over distance. In reality light will always fall off quadratically; however, it can be useful to manipulate as a non-physically based lighting trick. Note that using Linear or Constant falloff may cause more light to be introduced with every global illumination bounce, making the resulting image extremely bright if many bounces are used. This node has no properties. Todo. Project-Id-Version: Blender 2.77 Manual 2.77
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-10-07 09:50-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: uk
Language-Team: uk <LL@li.org>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Constant Constant light falloff, where the distance to the light has no influence on its intensity. Examples Inputs Light Falloff Node Light Falloff Node. Light strength before applying falloff modification. Linear Linear light falloff, giving a slower decrease in intensity over distance. Outputs Properties Quadratic Quadratic light falloff; this will leave strength unmodified if smooth is 0.0 and corresponds to reality. Smooth Smooth intensity of light near light sources. This can avoid harsh highlights, and reduce global illumination noise. 0.0 corresponds to no smoothing; higher values smooth more. The maximum light strength will be strength/smooth. Strength The *Light Falloff* node allows you to manipulate how light intensity decreases over distance. In reality light will always fall off quadratically; however, it can be useful to manipulate as a non-physically based lighting trick. Note that using Linear or Constant falloff may cause more light to be introduced with every global illumination bounce, making the resulting image extremely bright if many bounces are used. This node has no properties. Todo. 