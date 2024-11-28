varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float uniform_valid_placement; // Declare the uniform variable

void main() {
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord); // Get the original color of the sprite

    // Apply a subtle tint based on placement validity
    if (uniform_valid_placement == 1.0) {
        color.rgb = mix(color.rgb, vec3(0.0, 1.0, 0.0), 0.3); // Green tint for valid placement (30% green)
    } else {
        color.rgb = mix(color.rgb, vec3(1.0, 0.0, 0.0), 0.3); // Red tint for invalid placement (30% red)
    }

    // Keep the original alpha
    color.a = 1.0; // Set to fully opaque for preview; adjust if necessary
    gl_FragColor = color * v_vColour; // Final color
}
