#version 300 es

in vec4 vertexPosition;
in vec2 vertexTexCoord;
out vec4 rayDir;

uniform struct{
	mat4 rayDirMatrix;
} camera;


void main(void) {
  rayDir = vertexPosition * camera.rayDirMatrix;

  gl_Position = vec4(vertexPosition.xy, 0.999999, 1);
}