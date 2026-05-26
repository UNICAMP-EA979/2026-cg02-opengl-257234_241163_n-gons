#version 330 core

// Utilize como base o 01-vertex.vs
// Adicione o input da UV na location=1, e crie uma nova saída para fornecer a UV ao fragment

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 TexCoord;

uniform mat4 modelTransformation;
uniform mat4 viewTransformation;
uniform mat4 projectionMatrix;

out vec2 uv;

// SEU CÓDIGO AQUI //////////////////////////////////////////////////////////////////////////

void main()
{
    gl_Position = projectionMatrix * viewTransformation * modelTransformation * vec4(position, 1.0);
    uv = TexCoord;
}

/////////////////////////////////////////////////////////////////////////////////////////////