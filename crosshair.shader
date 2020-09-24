shader_type canvas_item;

uniform bool center_enabled = true;
uniform bool legs_enabled = true;
uniform bool inverted = false;
uniform int color_id = 0;
uniform vec4 color_0 = vec4(0., 1, 0., 1.);
uniform vec4 color_1 = vec4(1., 0., 0., 1.);
uniform vec4 color_2 = vec4(0., 0., 1., 1.);
uniform float center_radius = .002;
uniform float width = .003;
uniform float len = .03;
uniform float spacing = .008;
uniform float spread = 1.;


void fragment(){

	float a = SCREEN_PIXEL_SIZE.x / SCREEN_PIXEL_SIZE.y;
	vec2 UVa = vec2(UV.x / a, UV.y);
	vec2 center = vec2(.5 / a, .5);

	float point = step(distance(UVa, center), center_radius);

	float h = step(center.x - len - spacing*spread, UVa.x) - step(center.x - spacing*spread, UVa.x);
	h += step(center.x + spacing*spread, UVa.x) - step(center.x + len + spacing*spread, UVa.x);
	h *= step(center.y - width, UVa.y) - step(center.y + width, UVa.y);
	
	float v = step(center.y - len - spacing*spread, UVa.y) - step(center.y - spacing*spread, UVa.y);
	v += step(center.y + spacing*spread, UVa.y) - step(center.y + len + spacing*spread, UVa.y);
	v *= step(center.x - width, UVa.x) - step(center.x + width, UVa.x);

	float crosshair;

	crosshair = (h+v) * float(legs_enabled) + point * float(center_enabled);

	if(!inverted){
		COLOR = (color_0 * float(color_id == 0) + color_1 * float(color_id == 1) + color_2 * float(color_id == 2)) * crosshair;
	}else{
		COLOR = vec4((cos(textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb * 3.1415926534) + 1.)/2., 1.) * crosshair;
	}
}