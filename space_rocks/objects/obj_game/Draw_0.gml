/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 466D2470
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(20, 20, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 1D0668B4
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