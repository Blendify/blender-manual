��    ?                      z         �  �   �  �   �         �     �  ?   �  !  �  /   
     ;
  Z   C
  Z   �
  1   �
     +     3  �   B  G        Y    b     f    k     �  �  �  �   f  �  c     �  �     $   �  �   �  s   �            O       e  �     K   0     |     �  Z   �  	   �     �     �     �  $     	   =     G  -   P  �  ~  j  X  F   �  :  
  
   E  �   P  J   "     m     r    �     �!     �!     �!     �!  �  �!  �   f#  (   $  (  4$  �   ]%  j  U&     �(     �(  R   �(  !  2)  G   T*     �*  w   �*  w   +  0   �+     �+     �+  �   �+  b   �,     4-  4  =-     r.  i  w.     �/     �/  Q  2  �  Z3     05  �   ?5  .   
6  �   96  �   7     �7     �7  �  �7     =9  �   Y9  N   :     h:     l:  w   p:     �:     �:     �:     
;  0   #;  	   T;  	   ^;  0   h;  r  �;  �  ?  X   �@  :  &A  
   aB     lB  S   mC     �C     �C  �  �C     �F     �F     �F     �F   Adjust RGB Curves to control image colors before color space conversion. Read more about using the :ref:`ui-curve-widget`. An example of a linear workflow. Another common use case is when you want to inspect renders, to see details in dark shadows or bright highlights, or identify render errors. Such settings would be only used temporarily and not get used for final renders. Blender comes with a standard OpenColorIO configuration that contains a number of useful display devices and view transforms. The reference linear :term:`color space` used is the linear color space with Rec. 709 chromaticities and D65 white point. By default only renders are displayed and saved with the render view transformations applied. These are the Render Result and Viewer image data-blocks, and the files saved directly to a drive with the Render Animation operator. However, when loading a render saved to an intermediate OpenEXR file, Blender cannot detect automatically that this is a render (it could be e.g. an image texture or displacement map). We need to specify that this is a render and that we want the transformations applied, with these two settings: Color Management Color Space Color management can be disabled by setting the device to None. Color management is one of the most important tools that an artist can use. It allows an artist to make sure that an image stays the same from rendering, to saving, to post processing. Color management also allows an artist to tweak things like exposure, gamma, or the overall color grade. Conversion from linear to display device space. Default Default color space for byte precision images and files, *texture_paint* if not specified. Default color space for float precision images and files, *scene_linear* if not specified. Different views and exposures of the same render. Display Display Device Display the image data-block (not only renders) with view transform, exposure, gamma, RGB curves applied. Useful for viewing rendered frames in linear OpenEXR files the same as when rendering them directly. Does no extra conversion besides the conversion for the display device. Exposure Extra gamma correction applied after color space conversion. Note that the default sRGB or Rec709 color space conversions already include a gamma correction of approximately 2.2 (except the *Raw* and *Log* views), so this would be applied in addition to that. Film For correct results, different :term:`color spaces <color space>` are needed for rendering display and storage of images. Rendering and compositing is best done in scene *linear* color space, which corresponds more closely to nature, and makes computations more physically accurate. Gamma However, OpenColorIO was also designed to give a consistent user experience across `multiple applications <http://opencolorio.org/CompatibleSoftware.html>`__, and for this, a single shared configuration file can be used. Blender will use the standard OCIO environment variable to read an OpenColorIO configuration other than the default Blender one. More information about how to set up such a workflow can be found on the `OpenColorIO website <http://opencolorio.org/>`__. However, these values do not directly correspond to human perception or the way display devices work and image files are often stored in different color spaces, so we have to take care to do the right conversion into and out of this linear color space. If the colors are linear, it means that if in reality, we double the number of photons, the color values are also doubled. Put another way, if we have two photos/renders each with one of two lights on, and add those images together, the result would be the same as a render/photo with both lights on. It follows that such a radiometrically linear space is best for photo-realistic rendering and compositing. Image Files Image data-blocks will always store float buffers in memory in the scene linear color space, while a byte buffer in memory and files in a drive are stored in the color space specified with this setting: Image settings for color management. Intended for inspecting the image but not for final export. Log works similar to Raw but gives a more "flat" view of the image without very dark or light areas. Intended for inspecting the image but not for final export. Raw gives the image without any color space conversion. Log Look Most computer monitors are configured for the sRGB color space, and so when working on a computer usually this option should just be left to the default. It would typically be changed when viewing the image on another display device connected to the computer, or when writing out image files intended to be displayed on another device. OpenColorIO Configuration Option in the image save operator to apply the view transform, exposure, gamma, RGB curves. This is useful for saving linear OpenEXR to e.g. PNG or JPEG files in display space. Panel:    :menuselection:`Properties editor --> Scene --> Color Management` RRT Raw Rec709 is commonly used for HDTVs, while XYZ and DCI-P3 are common for digital projectors. Reference Render Save as Render Scene Linear Color Space Scene settings for color management. Sequencer Settings The device that the image is being viewed on. The standard Blender configuration also includes some support for `ACES <https://www.oscars.org/science-technology/sci-tech-projects/aces>`__ (`code and documentation <https://github.com/ampas/aces-dev>`__), even though we have a different linear color space. It is possible to load and save EXR files with the Linear ACES color space, and the RRT view transform can be used to view images with their standard display transform. However, the ACES gamut is larger than the Rec. 709 gamut, so for best results, an ACES specific configuration file should be used. OpenColorIO provides an `ACES configuration <http://opencolorio.org/configurations/index.html>`__ file, though it may need a few more tweaks to be usable in production. There is also an artistic choice to be made for renders. Partially that is because display devices cannot display the full spectrum of colors and only have limited brightness, so we can squeeze the colors to fit in the gamut of the device. Besides that, it can also be useful to give the renders a particular look, e.g. as if they have been printed on real film. These are different ways to view the image on the same display device. To achieve color management in Blender, the `OpenColorIO <http://opencolorio.org/>`__ (OCIO) library has been integrated into Blender. This library offers fine control over different :abbr:`LUT (Look Up Table)` along with integrating your own set of color profiles to keep your work linearized with other software. Use Curves Uses a technique known as film emulation to give renders a look similar to what might be expected from a film based camera. This is usually done by crushing the blacks and decreasing the contrast of the image. Uses the ACES Reference Rendering Transform, to simulate a film-like look. View View as Render When loading and saving media formats it is important to have color management in mind. File formats such as PNG or JPEG will typically store colors in a color space ready for display, not in a linear space. When they are, for example, used as textures in renders, they need to be converted to linear first, and when saving renders for display on the web, they also need to be converted to a display space. Other file formats like OpenEXR store linear color spaces and as such are useful as intermediate files in production. default_byte default_float default_sequencer scene_linear Project-Id-Version: Blender Reference Manual 2.76
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-19 13:41-0400
PO-Revision-Date: 2017-06-07 22:43+0200
Last-Translator: phan <phahoatho@gmail.com>
Language: uk
Language-Team: français <bf-docboard@blender.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Ajuste les courbes RVB pour contrôler les couleurs d'image avant la conversion de l'espace de couleurs. Apprendre plus sur l'utilisation de :ref:`ui-curve-widget`. Un exemple de flux de travail linéaire. un autre cas d'utilisation habituel concerne l'inspection des rendus, pour voir des détails dans des ombres sombres ou des rehauts lumineux, ou identifier les erreurs de rendu. De tels réglages devraient être utilisés seulement temporairement et ne pas être utilisés pour les rendus finaux. Blender comes with a standard OpenColorIO configuration that contains a number of useful display devices and view transforms. The reference linear :term:`color space` used is the linear color space with Rec. 709 chromaticities and D65 white point. Par défaut, seuls les rendus sont affichés et enregistrés avec les transformations de vue de rendu appliquées. Celles-ci sont les data-blocks *Render Result* et *Viewer image*,et les fichiers enregistrés directement sur disque avec l'opérateur *Render Animation*. Cependant, lors du chargement du rendu enregistré dans un fichier intermédiaire OpenEXR, Blender ne peut pas détecter automatiquement que c'est un rendu (ce pourrait être p. ex. une texture d'image ou un *displacement map*) . Nous devons spécifier que c'est un rendu et que nous voulons appliquer les transformations, avec ces deux réglages : Gestion de couleur Color Space La gestion de couleur peut être désactivée en réglant le dispositif à *None*. Color management is one of the most important tools that an artist can use. It allows an artist to make sure that an image stays the same from rendering, to saving, to post processing. Color management also allows an artist to tweak things like exposure, gamma, or the overall color grade. Conversion de l'espace linéaire à l'espace du dispositif d'affichage. Default espace de couleurs par défaut pour les images et les fichiers en précision *byte*, *texture_paint* si non spécifié. Espace de couleurs par défaut pour les images et les fichiers en précision *float*, *scene_linear* si non spécifié. Différentes vues et expositions du même rendu. Display Display Device Affiche le data-block image (pas seulement les rendus) avec view transform, exposure, gamma, RGB curves appliqués. Utile pour visionner les frames rendues dans les fichiers OpenEXR linéaires de la même manière que lors de leur rendu direct. Ne fait pas de conversion supplémentaire en plus de la conversion pour le dispositif d'affichage. Exposure Correction gamma supplémentaire après conversion de l'espace de couleurs. Notez que les conversions d'espaces de couleurs sRGB ou Rec709 comprennent déjà par défaut une correction gamma d'approximativement 2.2 (à l'exception des vues *Raw* et *Log*), aussi ceci devrait être appliqué en plus à cela. Film Pour des résultats corrects, différents :term:`espaces de couleurs <color space>` sont nécessaires pour l'affichage du rendu et l'enregistrement des images. Le rendu et le compositing sont mieux effectués dans l'espace de couleurs *linéaire* de la scène, qui correspond plus étroitement au monde naturel, et rendent les calculs plus précis physiquement. Gamma Cependant, OpenColorIO a été aussi conçu pour donner une expérience utilisateur cohérente à travers les `applications multiples <http://opencolorio.org/CompatibleSoftware.html>`__, et pour cela, un simple fichier de configuration partagé peut être utilisé. Blender utilisera la variable d'environnement OCIO standard pour lire une configuration OpenColorIO autre que celle de Blender par défaut. Plus d'informations sur la manière d'établir un tel flux de travail se trouve sur le `site web OpenColorIO <http://opencolorio.org/>`__. Cependant, ces valeurs ne correspondent pas directement à la perception humaine ou la manière dont fonctionnent les dispositifs d'affichage, et les fichiers image sont souvent enregistrés dans différents espaces de couleurs, aussi nous devons prendre soin de faire la bonne conversion vers et depuis cet espace de couleurs linéaire. Si les couleurs sont linéaires, cela signifie que si en réalité nous doublons la quantité de photons, les valeurs de couleur sont aussi doublées. Dit autrement, si nous avons deux photos/rendus, chacune avec une des deux lumières, et ajoutons ces images ensemble, le résultat serait le même qu'un rendu/photo avec les deux lumières ensemble. Il s'ensuit qu'un tel espace radiométriquement linéaire est meilleur pour le rendu photoréaliste et le compositing. Fichiers image Image data-blocks will always store float buffers in memory in the scene linear color space, while a byte buffer in memory and files in a drive are stored in the color space specified with this setting: Réglages d'image pour la gestion de couleurs. Destiné à l'inspection de l'image mais pas à l'exportation finale. Log fonctionne de façon semblable à *Raw* mais donne une vue plus "plate" de l'image sans zones très sombres ou très claires. Destiné à l'inspection de l'image mais pas à l'exportation finale. *Raw* rend l'image sans aucune conversion d'espace de couleurs. Log Look La plupart des moniteurs d'ordinateur sont configurés pour l'espace de couleurs sRVB, et ainsi pendant le travail sur ordinateur cette option devrait être laissée à sa valeur par défaut. Elle devrait être modifiée typiquement pendant le visionnage de l'image sur un autre dispositif d'affichage connecté à l'ordinateur, ou pendant l'écriture des fichiers d'image destinés à être visionnés sur un autre dispositif.  Configuration d'OpenColorIO Option pour appliquer les *view transform, exposure, gamma, RGB curves*. C'est utile pour enregistrer des fichiers OpenEXR linéaires en p. ex. fichiers PNG or JPEG dans l'espace d'affichage. Panneau :    :menuselection:`Properties Editor --> Scene --> Color Management` RRT Raw Rec709 est couramment utilisé pour les TV HD, tandis que XYZ et DCI-P3 sont communs pour les projecteurs numériques.  Référence Render Save as Render Scene Linear Color Space Réglages de scène pour la gestion de couleurs. Sequencer Réglages Le dispositif sur lequel l'image est visionnée. La configuration Blender standard comprend aussi une prise en charge de `ACES <https://www.oscars.org/science-technology/sci-tech-projects/aces>`__ (`code et documentation <https://github.com/ampas/aces-dev>`__), même si nous avons un espace de couleurs linéaire différent. Il est possible de charger et d'enregistrer des images EXR avec l'espace de couleurs *Linear ACES*, et les transformations de vues RRT peuvent être utilisées pour visualiser les images avec leur transformation d'affichage standard. Cependant, la gamme ACES est plus large que la gamme Rec. 709, aussi pour de meilleurs résultats un fichier de configuration ACES spécifique devrait être utilisé. OpenColorIO fournit un fichier de `configuration ACES <http://opencolorio.org/configurations/index.html>`__, bien qu'il puisse  nécessite quelques ajustements de plus pour être utilisable en production. Il y a aussi un choix artistique à faire pour les rendus. En partie cela est dû au fait que les dispositifs d'affichage ne peuvent pas afficher le spectre complet de couleurs et ont seulement une luminosité limitée, aussi nous pouvons presser les couleurs pour les faire correspondre à la gamme du dispositif. De plus il peut aussi être utile de donner aux rendus un look particulier, p. ex. comme s'ils avaient été tirés sur un vrai film. Ce sont différentes manières de visionner l'image sur le même dispositif d'affichage. To achieve color management in Blender, the `OpenColorIO <http://opencolorio.org/>`__ (OCIO) library has been integrated into Blender. This library offers fine control over different :abbr:`LUT (Look Up Table)` along with integrating your own set of color profiles to keep your work linearized with other software. Use Curves Utilise une technique connue comme une émulation de film pour donner aux rendus un look similaire à ce que pourrait être attendu d'une caméra basée par un film. C'est habituellement fait en écrasant les noirs et en diminuant le contraste de l'image.  Utilise la Transformation de rendu *ACES Reference*, pour simuler un look de film.  View View as Render Lors du chargement et de l'enregistrement des formats de media, il est important d'avoir la gestion de couleur à l'esprit. Les formats de fichier tels que PNG ou JPEG vont typiquement enregistrer les couleurs dans un espace de couleurs conçu pour l'affichage, non dans un espace linéaire. Quand ils sont utilisés, par exemple, comme textures dans les rendus, ils doivent d'abord être convertis en linéaire, et lors des enregistrements des rendus pour l'affichage sur le web, ils doivent aussi être convertis dans un espace d'affichage. D'autres formats de fichier comme OpenEXR enregistrent les espaces de couleurs linéaires et en tant que tels sont utiles comme fichiers intermédiaires en production.   default_byte default_float default_sequencer scene_linear 