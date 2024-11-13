/// @description Insert description here
// You can write your code in this editor

if room == room_end_game || room == room_win_game {
	if keyboard_check_pressed(vk_space) {
	
		var arr = layer_get_all_elements("Assets_1")
	
		var eid = arr[0]
	
		if layer_sequence_is_finished(eid){
			
			game_end()
		}
	
	}
}