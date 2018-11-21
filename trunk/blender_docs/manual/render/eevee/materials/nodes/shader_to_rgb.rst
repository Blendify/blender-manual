
*************
Shader To RGB
*************

Eevee supports the conversion of BSDF outputs into color inputs to make any kind of custom shading.

This is supported using the "Shader to RGB" node.
While this is supported, this is breaking the PBR pipeline and thus makes the result unpredictable when other effects are used.

Here unpredictable means that it will not have the desired result. This might be the case if you use effects that need temporal accumulation to converge. Namely Ambient Occlusion, Contact Shadows, Soft Shadows, Screen Space Refraction.

For instance if you quantize the result of the ambient occlusion you will not get a fully quantized output but an accumulation of a noisy quantized output which may or may not converge to a smooth result.
(TODO Image)

If a "Shader to RGB" node is used, any upstream BSDF will invisible to the following effects:
* Screen Space Reflection
* Sub Surface Scattering

(TODO Example of Toon shading)