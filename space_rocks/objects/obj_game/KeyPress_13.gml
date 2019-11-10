/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 0706B627
/// @DnDArgument : "expr" "room"
var l0706B627_0 = room;
switch(l0706B627_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 04B2B9A2
	/// @DnDParent : 0706B627
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 21639C04
		/// @DnDParent : 04B2B9A2
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "6023ff5e-2eed-48a2-8f79-53c0b4770cb1"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 45B5D265
	/// @DnDParent : 0706B627
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 71632FF1
		/// @DnDParent : 45B5D265
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 093B7D69
	/// @DnDParent : 0706B627
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 18E70CF5
		/// @DnDParent : 093B7D69
		game_restart();
		break;
}