/// @description Insert description here
// You can write your code in this editor

// Check if we're in placement mode and the player clicks to place the tower
if (mouse_check_button_pressed(mb_left)) {
    // Create the preview object if it doesn’t already exist
    if (!instance_exists(obj_tower_preview)) {
        instance_create_layer(mouse_x, mouse_y, "overlay_sequences_layer", obj_tower_preview);
    }
}

// Place the tower when the player releases the left mouse button
if (mouse_check_button_released(mb_left) && instance_exists(obj_tower_preview)) {
    // Check if the preview position is valid for placement
    if (obj_tower_preview.can_place) {
        // Create the actual tower at the preview's location
        instance_create_layer(obj_tower_preview.x, obj_tower_preview.y, "overlay_sequences_layer", obj_tower);

        // Destroy the preview object
        with (obj_tower_preview) instance_destroy();
    }
}