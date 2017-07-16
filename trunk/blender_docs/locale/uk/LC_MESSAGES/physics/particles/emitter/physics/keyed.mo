��          �               \  r  ]  ;   �  \     +  i     �     �     �     �     �  R   �       v   #  D  �  �   �     ~  �   �  @   0	  
   q	  �   |	  �  
  r  �  ;   T  \   �  +  �          %     +     C     H  R   N     �  v   �  D    �   c       �   	  @   �  
   �  �       An example: let us assume that you have two keyed systems in a chain and a third system as target. The particle lifetime of the first system shall be 50 keys. The particles will travel in 25 frames from the first keyed system to the second, and in further 25 frames from the second system to the target. If you use the Timed button for the first system, the Time slider appears in the second systems panel. Its default value is 0.5, so the time is equally split between the systems. If you set Time to 1, the movement from the first system to the second will get all the lifetime (the particles will die at the second system). Click the :kbd:`Plus` to add a key, then select the object. If you set Time to 0 the particles will start at the second system and travel to the target. If you use only one keyed system the particles will travel in their lifetime from the emitter to the target. A shorter lifetime means faster movement. If you have more than one keyed system in a chain, the lifetime will be split equally. This may lead to varying particle speeds between the targets. Key Targets Keyed Keyed Physics Settings. Keys Loops Sets the number of times the keys are looped. Disabled if *Use Timing* is enabled. Setup The first system has keyed physics, and it needs the option First activated. This will be the system thats is visible. The particle paths of keyed particles are determined from the emitter to another particle system's particles. This allows creation of chains of systems with keyed physics to create long strands or groovy moving particles. Basically the particles have no dynamics but are interpolated from one system to the next at drawtime. The second system may be another keyed system but without the option First, or a normal particle system. This second system is the target of the keyed system. Timing Timing works together with the Time slider for the other keyed systems in a chain. The Time slider allows to define a fraction of particle lifetime for particle movement. To setup Keyed particles you need at least two particle systems. Use Timing You have to enter the name of the object which bears the target system and if there are multiple particle systems the number of the system. Project-Id-Version: Blender Reference Manual 2.76
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-09-29 14:14-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: uk
Language-Team: uk <LL@li.org>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 An example: let us assume that you have two keyed systems in a chain and a third system as target. The particle lifetime of the first system shall be 50 keys. The particles will travel in 25 frames from the first keyed system to the second, and in further 25 frames from the second system to the target. If you use the Timed button for the first system, the Time slider appears in the second systems panel. Its default value is 0.5, so the time is equally split between the systems. If you set Time to 1, the movement from the first system to the second will get all the lifetime (the particles will die at the second system). Click the :kbd:`Plus` to add a key, then select the object. If you set Time to 0 the particles will start at the second system and travel to the target. If you use only one keyed system the particles will travel in their lifetime from the emitter to the target. A shorter lifetime means faster movement. If you have more than one keyed system in a chain, the lifetime will be split equally. This may lead to varying particle speeds between the targets. Key Targets Keyed Keyed Physics Settings. Keys Loops Sets the number of times the keys are looped. Disabled if *Use Timing* is enabled. Setup The first system has keyed physics, and it needs the option First activated. This will be the system thats is visible. The particle paths of keyed particles are determined from the emitter to another particle system's particles. This allows creation of chains of systems with keyed physics to create long strands or groovy moving particles. Basically the particles have no dynamics but are interpolated from one system to the next at drawtime. The second system may be another keyed system but without the option First, or a normal particle system. This second system is the target of the keyed system. Timing Timing works together with the Time slider for the other keyed systems in a chain. The Time slider allows to define a fraction of particle lifetime for particle movement. To setup Keyed particles you need at least two particle systems. Use Timing You have to enter the name of the object which bears the target system and if there are multiple particle systems the number of the system. 