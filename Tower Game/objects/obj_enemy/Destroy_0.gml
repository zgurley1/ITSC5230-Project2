/// @description Insert description here
// You can write your code in this editor

//global.num_enemy--;
var sound_id = audio_play_sound(snd_monster_damage, 1, false); // Play the sound (replace 'snd_example' with your sound asset name)
audio_sound_pitch(sound_id, 2); // Increase playback speed (1.5x faster)