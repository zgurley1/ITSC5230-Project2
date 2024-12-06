/// @description Insert description here
// You can write your code in this editor

if room == Room_title{
	if keyboard_check_pressed(vk_space) {
	
		var arr = layer_get_all_elements("Assets_1")
	
		var eid = arr[0]
	
		if layer_sequence_is_finished(eid){
			
			room_goto_next();
		}
	
	}
}

else if room == room_instructions_credits {
	if keyboard_check_pressed(vk_space)	 {
		room_goto_next();	
	}
	
}