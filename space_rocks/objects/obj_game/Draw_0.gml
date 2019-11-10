/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3BAF99D0
/// @DnDArgument : "expr" "room"
var l3BAF99D0_0 = room;
switch(l3BAF99D0_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 68B04004
	/// @DnDParent : 3BAF99D0
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 466D2470
		/// @DnDParent : 68B04004
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 1D0668B4
		/// @DnDParent : 68B04004
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "770dd05f-877c-4a0d-bc29-a33668d61dd5"
		var l1D0668B4_0 = sprite_get_width(spr_lives);
		var l1D0668B4_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l1D0668B4_2 = __dnd_lives; l1D0668B4_2 > 0; --l1D0668B4_2) {
			draw_sprite(spr_lives, 0, 20 + l1D0668B4_1, 40);
			l1D0668B4_1 += l1D0668B4_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3529DC9C
	/// @DnDParent : 3BAF99D0
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 243E87AB
		/// @DnDParent : 3529DC9C
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 01EE4715
		/// @DnDParent : 3529DC9C
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l01EE4715_0=($FF00FFFF >> 24);
		draw_set_alpha(l01EE4715_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 01C0C85B
		/// @DnDParent : 3529DC9C
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""SPACE ROCKS""
		draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4813561B
		/// @DnDParent : 3529DC9C
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4813561B_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4813561B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2E7692DB
		/// @DnDParent : 3529DC9C
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with the UP/LEFT/RIGHT keys ""
		draw_text(250, 230, string("Move with the UP/LEFT/RIGHT keys ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 346E410E
		/// @DnDParent : 3529DC9C
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press SPACE to shoot: ""
		draw_text(250, 260, string("Press SPACE to shoot: ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6B21BB20
		/// @DnDParent : 3529DC9C
		/// @DnDArgument : "color" "$FF00FFFF"
		draw_set_colour($FF00FFFF & $ffffff);
		var l6B21BB20_0=($FF00FFFF >> 24);
		draw_set_alpha(l6B21BB20_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 18D230E5
		/// @DnDParent : 3529DC9C
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" ""PRESS ENTER TO START ""
		draw_text(250, 350, string("PRESS ENTER TO START ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6AC52D16
		/// @DnDParent : 3529DC9C
		draw_set_colour($FFFFFFFF & $ffffff);
		var l6AC52D16_0=($FFFFFFFF >> 24);
		draw_set_alpha(l6AC52D16_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6D93EAA6
		/// @DnDParent : 3529DC9C
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7736C43E
	/// @DnDParent : 3BAF99D0
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 357AF333
		/// @DnDParent : 7736C43E
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 08D90449
		/// @DnDParent : 7736C43E
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l08D90449_0=($FF0000FF >> 24);
		draw_set_alpha(l08D90449_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 37541BB9
		/// @DnDParent : 7736C43E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE ""
		draw_text_transformed(250, 150, string("YOU LOSE ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2B2E7723
		/// @DnDParent : 7736C43E
		draw_set_colour($FFFFFFFF & $ffffff);
		var l2B2E7723_0=($FFFFFFFF >> 24);
		draw_set_alpha(l2B2E7723_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 70C71E14
		/// @DnDParent : 7736C43E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5EF05D4F
		/// @DnDParent : 7736C43E
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">>PRESS ENTER TO RESTART<<""
		draw_text(250, 300, string(">>PRESS ENTER TO RESTART<<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 54E2D93A
		/// @DnDParent : 7736C43E
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 04C644CF
	/// @DnDParent : 3BAF99D0
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 323C5E20
		/// @DnDParent : 04C644CF
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7450D211
		/// @DnDParent : 04C644CF
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l7450D211_0=($FF0000FF >> 24);
		draw_set_alpha(l7450D211_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3D106908
		/// @DnDParent : 04C644CF
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN ""
		draw_text_transformed(250, 150, string("YOU WIN ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6949C329
		/// @DnDParent : 04C644CF
		draw_set_colour($FFFFFFFF & $ffffff);
		var l6949C329_0=($FFFFFFFF >> 24);
		draw_set_alpha(l6949C329_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 403FE40D
		/// @DnDParent : 04C644CF
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2E743D0C
		/// @DnDParent : 04C644CF
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">>PRESS ENTER TO RESTART<<""
		draw_text(250, 300, string(">>PRESS ENTER TO RESTART<<") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7A3BA5E9
		/// @DnDParent : 04C644CF
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}