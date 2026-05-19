#version 330 core
// Recebe a position no location = 0
// e as uniforms mat4 modelTransformation, viewTransformation e projectionMatrix
// 
// Converte a position para o clip space usando as transformações e armazena em gl_Position.

layout (location = 0) in vec3 position;

uniform mat4 modelTransformation;
uniform mat4 viewTransformation;
uniform mat4 projectionMatrix;


// SEU CÓDIGO AQUI //////////////////////////////////////////////////////////////////////////

void main()
{
    gl_Position = projectionMatrix * viewTransformation * modelTransformation * vec4(position, 1.0);
}

/////////////////////////////////////////////////////////////////////////////////////////////