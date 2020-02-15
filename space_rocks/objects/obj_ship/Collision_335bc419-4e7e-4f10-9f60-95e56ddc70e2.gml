/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5E7C3C42
/// @DnDArgument : "msg" ""collision detected""
show_debug_message(string("collision detected"));

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 18E85C07
/// @DnDApplyTo : 2ae2cfc0-581f-4c7e-a6b9-5599fca06459
with(obj_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5D4B11AF
	/// @DnDParent : 18E85C07
	/// @DnDArgument : "steps" "room_speed"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 77D5BA1E
	/// @DnDParent : 18E85C07
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4E9F5D32
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "f4d94cb7-53c0-489e-9902-23ae527612c4"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 720BF90A
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 0C4624CB
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4ACC72BA
	/// @DnDParent : 0C4624CB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "fc228a16-0677-4173-a3b7-5c16e78e495c"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}