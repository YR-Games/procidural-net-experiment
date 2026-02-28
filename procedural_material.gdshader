shader_type spatial;
uniform float scale;
#include "shader_modules/library.gdshaderinc"

void fragment() {
 vec2 uv=UV*scale;
 vec2 new_uv=uv+bn(uv)*(1.-bn(uv*32.));

	ALBEDO=colorize(bn(new_uv),vec3(0.5, 0.5, 0.5),vec3(0.5, 0.5, 0.5), vec3(1.0, 1.0, 1.0),vec3(0.00, 0.33, 0.67));


}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
/*

*/