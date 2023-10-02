#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;

out vec4 fragColor;

bool isgray(vec4 a) {
    return a.r == 0 && a.g == 0 && a.b == 0 && a.a < 0.3 && a.a > 0.29;
}

bool isdarkgray(vec4 a) {
	return a.r == 0 && a.g == 0 && a.b == 0 && a.a == 0.4;
}

void main() {

    vec4 color = vertexColor;
	
    if (color.a == 0.0) {
        discard;
    }
	
    fragColor = color * ColorModulator;
	
	if(isgray(fragColor)){
		discard;
	}
	if(isdarkgray(fragColor)){
		discard;
	}
}
// Made by Reytz#9806 for minecraft 1.18.2