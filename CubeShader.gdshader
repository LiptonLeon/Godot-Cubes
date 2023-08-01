shader_type spatial;

uniform sampler3D noise;

void vertex () {
	//if(NODE_POSITION_WORLD.x < 100.0 && NODE_POSITION_WORLD.y > -1.0 && NODE_POSITION_WORLD.z < 100.0) {
		vec3 noise_coords = ((NODE_POSITION_WORLD + TIME * 0.1) * 0.005);
		float scale = texture(noise, noise_coords).r;
		scale = clamp(scale - 0.89, 0.0, 1.0);
		scale = clamp(scale * 300.0, 0.0, 1.0);
		VERTEX *= scale;
	//}
	
}

void fragment() {
	//ALBEDO *= 1.5;
}
