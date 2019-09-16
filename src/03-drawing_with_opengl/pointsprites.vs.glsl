#version 330

layout (location = 0) in vec4 position;

uniform mat4 model_matrix;
uniform mat4 projection_matrix;

void main() {
    vec4 pos = projection_matrix * (model_matrix * position);
    gl_PointSize = (1.0 - pos.z / pos.w) * 64.0;
    gl_Position = pos;
}
