void main() {
	vec2 screenDimensions = textureSize(InputTexture, 0);
	vec2 pixelDimensions = vec2(pixelSize, pixelSize);
	if (screenDimensions.x >= screenDimensions.y)
		pixelDimensions.x *= (screenDimensions.x/screenDimensions.y) * pixelAspect;
	else
		pixelDimensions.y *= (screenDimensions.y/screenDimensions.x) / pixelAspect;
	FragColor = vec4(texelFetch(InputTexture, ivec2(vec2(0.5 + (floor((TexCoord - 0.5) * pixelDimensions) / pixelDimensions)) * screenDimensions) + ivec2(floor((screenDimensions / pixelDimensions) / 2.0)), 0));
}