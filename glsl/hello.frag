#version 330 core

out vec4 FragColor;
uniform vec2 u_resolution;

void main() {
    vec2 uv = gl_FragCoord.xy / max(u_resolution, vec2(1.0));
    FragColor = vec4(uv.x, uv.y, 0.35, 1.0);
}
