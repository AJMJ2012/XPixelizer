vec2 screenDimensions = textureSize(InputTexture, 0);
float pixWidth = pixHeight * pixAspect * (screenDimensions.x/screenDimensions.y);

void main() {
	FragColor = vec4(texelFetch(InputTexture, ivec2(vec2(floor(TexCoord.x * pixWidth) / pixWidth, floor(TexCoord.y * pixHeight) / pixHeight) * screenDimensions), 0));
}