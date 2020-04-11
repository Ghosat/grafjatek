#version 300 es

precision highp float;

in vec4 rayDir;
uniform struct { samplerCube envTexture; } material;
out vec4 fragmentColor;

void main(void) {
  vec3 d = normalize(rayDir.xyz);

  fragmentColor = texture (material.envTexture, d);
}
