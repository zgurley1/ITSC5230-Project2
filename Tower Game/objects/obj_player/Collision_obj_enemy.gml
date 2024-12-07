/// @description Insert description here
// You can write your code in this editor


// Take damage from the enemy object
health -= other.damage;
audio_play_sound(snd_player_damage, 0, false)
damaged_now = true

alarm_set(2, heal_buffer);

instance_destroy(other);