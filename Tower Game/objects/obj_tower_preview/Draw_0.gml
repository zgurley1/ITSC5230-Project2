/// @description Insert description here
// You can write your code in this editor

// Activate the shader
shader_set(sdr_preview);

// Retrieve the uniform location
var uniform_loc = shader_get_uniform(sdr_preview, "uniform_valid_placement");

// Ensure the uniform location is valid
if (uniform_loc != -1) {
    // Pass the value to the shader based on whether the placement is valid
    shader_set_uniform_f(uniform_loc, can_place ? 1.0 : 0.0);
}

// Draw the preview sprite at the current position
draw_sprite(sprite_index, image_index, x, y);

// Reset the shader to default after drawing
shader_reset();