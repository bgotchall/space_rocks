/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 03D156D0
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4CC5004E
	/// @DnDParent : 03D156D0
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0B9AFCC9
		/// @DnDParent : 4CC5004E
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "fdf56c81-556f-48f4-8442-f0ba8104f2a9"
		audio_play_sound(snd_win, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 38D039C5
		/// @DnDParent : 4CC5004E
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "417d2723-683d-4703-ad54-fafd07c63ac2"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 7D9080FD
	/// @DnDParent : 03D156D0
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5132554F
		/// @DnDParent : 7D9080FD
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "a16cdb6f-2578-4c24-a139-a4008682a929"
		audio_play_sound(snd_lose, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 16286A52
		/// @DnDParent : 7D9080FD
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "19f1595e-05a5-4cc4-83c5-06f154138f19"
		room_goto(rm_gameover);
	}
}