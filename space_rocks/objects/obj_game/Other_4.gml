/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C575B04
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 069EA6BD
	/// @DnDParent : 6C575B04
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 2250811A
		/// @DnDInput : 2
		/// @DnDParent : 069EA6BD
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19D51906
		/// @DnDParent : 069EA6BD
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 16EC6F0E
			/// @DnDParent : 19D51906
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width*.3"
			var xx = (random_range(0, room_width*.3));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 058E4C31
		/// @DnDParent : 069EA6BD
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5AD8B79D
			/// @DnDParent : 058E4C31
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_width*.7"
			/// @DnDArgument : "max" "room_width"
			var xx = (random_range(room_width*.7, room_width));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 00BA200B
		/// @DnDInput : 2
		/// @DnDParent : 069EA6BD
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B3B4ECE
		/// @DnDParent : 069EA6BD
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5184CB92
			/// @DnDParent : 4B3B4ECE
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_height*.3"
			var yy = (random_range(0, room_height*.3));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 25FE55B4
		/// @DnDParent : 069EA6BD
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 4FE500C8
			/// @DnDParent : 25FE55B4
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_height*.7"
			/// @DnDArgument : "max" "room_height"
			var yy = (random_range(room_height*.7, room_height));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6DB62B3E
		/// @DnDParent : 069EA6BD
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "401537f5-fbdd-4f02-b423-d4736011a606"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 01A0EDEB
	/// @DnDParent : 6C575B04
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1CE476A4
	/// @DnDParent : 6C575B04
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "a19c5200-32a4-4e4e-a4e0-633d9796645f"
	audio_stop_sound(msc_song);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5ACBE829
	/// @DnDParent : 6C575B04
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "a19c5200-32a4-4e4e-a4e0-633d9796645f"
	audio_play_sound(msc_song, 0, 1);
}