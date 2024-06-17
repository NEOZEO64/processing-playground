

uniform sampler2D u_tex;

varying vec4 vertTexCoord;

void main() {
    fragColor = texture(u_tex, vertTexCoord.xy) - vec3(0.02);
}