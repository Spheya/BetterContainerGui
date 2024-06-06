#version 150

in vec3 Position;
in vec2 UV0;

uniform sampler2D Sampler0;
uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform float GameTime;

out vec2 texCoord0;

void main() {
    vec3 pos = Position;
    texCoord0 = UV0;

    ivec4 data = ivec4(texelFetch(Sampler0, ivec2(0), 0) * 255.5);
    if(data.a != 0 && data.a != 255) {
        texCoord0 = vec2[](vec2(0, 0), vec2(0, 1), vec2(1, 1), vec2(1, 0))[gl_VertexID % 4];
        pos.xy += (texCoord0 - 0.5) * (ivec2(256) - data.zw);
        int frame = int(GameTime * data.y * 1200.0) % data.x; 
        ivec2 cells = textureSize(Sampler0, 0) / 256;
        texCoord0 = (texCoord0 + ivec2(frame % cells.x, frame / cells.y)) / cells;
    }

    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
}
