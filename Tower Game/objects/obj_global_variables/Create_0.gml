/// @description Insert description here
// You can write your code in this editor
global.num_enemy = 0; 
global.num_enemy_player = 0;
global.num_enemy_tower = 0;

enum ENEMY_STATE {
	Follow,
	Chase,
	Attack,
	
};

enum PLAYER_STATE {
	Idle,
	Walking,
	Harvesting,
	Attacking,
	Upgrading_Tower,
	
};
	
	
enum TOWER_NODE_STATE {
	Empty,
	Placed,
}