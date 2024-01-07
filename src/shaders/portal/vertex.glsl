varying vec2 vUv;

void main()
{
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    vec4 viewPostion = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPostion;

    gl_Position = projectionPosition;

    vUv = uv;
}