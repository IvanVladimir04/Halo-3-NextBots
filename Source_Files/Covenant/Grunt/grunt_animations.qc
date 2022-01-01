// Created by Crowbar 0.68

$modelname "halo_3/characters/covenant/grunt.mdl"
$upaxis -y
$scale	1.065
$origin 	0 0 0 -90
$surfaceprop "flesh"

$cdmaterials "\models\halo_3\characters\covenant\grunt\"
$texturegroup "skinfamilies"
{
	{ "grunt_armor" }
	{ "grunt_armor_minor" }
	{ "grunt_armor_major" }
	{ "grunt_armor_heavy" }
	{ "grunt_armor_ultra" }
	{ "grunt_armor_specops" }
}
$BodyGroup "Misc"
{
	studio "halo_3_grunt_misc.smd"
}
$BodyGroup "Main"
{
	studio "grunt.smd"
}
$BodyGroup "Backpack"
{
	studio "grunt_backpack.smd"
	blank
}
$BodyGroup "Mask"
{
	studio "grunt_gasmask.smd"
	blank
}


//$ikchain r_foot r_calf knee  0.707 0.707 0.000
//$ikchain l_foot l_calf knee  0.707 0.707 0.000
$ikchain l_foot "l_foot" Z 0 height 36
$ikchain r_foot "r_foot" Z 0 height 36

$poseparameter "move_yaw" -180 180 loop 360
$PoseParameter "aim_yaw" -45 45 0
$PoseParameter "aim_pitch" -90 90 0
$attachment "methane_fx" "spine1" 9.00 -12.00 2.00 rotate -0 -120 0
//$attachment "1" "right hand" 4.50 1.50 1.50 rotate -10.00 -890.00 0.00


// 1 gut, 2 chest, 3 left arm, 4 right hand, 5 left leg, 6 right leg, 7 head

$weightlist weights_ranged {
"spine" 1
"spine1" 1
"pelvis" 0

}

$weightlist weights_fire {
"spine" 0.25
"spine1" 0.5
"l_clavicle" 0.15
"r_clavicle" 0.9
"neck" 0.45
"head" 0.7
"pelvis" 0

}


$animation "a_pistol_idle" "grunt_animations\combat_pistol_idle_var0.smd" {
	fps 30
}

$animation "a_missile_idle" "grunt_animations\combat_missile_idle.smd" {
	fps 30
}
//AIM MISSILE STILL UP

$animation "aim_missile_still_up_neutral" "grunt_animations\combat_missile_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_missile_still_up_down_left" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_missile_still_up_neutral" 0
}

$animation "aim_missile_still_up_down_center" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_missile_still_up_neutral" 0
}

$animation "aim_missile_still_up_down_right" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_missile_still_up_neutral" 0
}

$animation "aim_missile_still_up_mid_left" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_missile_still_up_neutral" 0
}

$animation "aim_missile_still_up_mid_center" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_missile_still_up_neutral" 0
}

$animation "aim_missile_still_up_mid_right" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_missile_still_up_neutral" 0
}

$animation "aim_missile_still_up_up_left" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_missile_still_up_neutral" 0
}

$animation "aim_missile_still_up_up_center" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_missile_still_up_neutral" 0
}

$animation "aim_missile_still_up_up_right" "grunt_animations\combat_missile_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_missile_still_up_neutral" 0
}

//AIM MISSILE STILL DOWN

$animation "aim_missile_still_down_neutral" "grunt_animations\combat_missile_aim_still_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_missile_still_down_down_left" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_missile_still_down_neutral" 0
}

$animation "aim_missile_still_down_down_center" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_missile_still_down_neutral" 0
}

$animation "aim_missile_still_down_down_right" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_missile_still_down_neutral" 0
}

$animation "aim_missile_still_down_mid_left" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_missile_still_down_neutral" 0
}

$animation "aim_missile_still_down_mid_center" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_missile_still_down_neutral" 0
}

$animation "aim_missile_still_down_mid_right" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_missile_still_down_neutral" 0
}

$animation "aim_missile_still_down_up_left" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_missile_still_down_neutral" 0
}

$animation "aim_missile_still_down_up_center" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_missile_still_down_neutral" 0
}

$animation "aim_missile_still_down_up_right" "grunt_animations\combat_missile_aim_still_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_missile_still_down_neutral" 0
}

//AIM MISSILE MOVE UP

$animation "aim_missile_move_up_neutral" "grunt_animations\combat_missile_aim_move_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_missile_move_up_down_left" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_missile_move_up_neutral" 0
}

$animation "aim_missile_move_up_down_center" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_missile_move_up_neutral" 0
}

$animation "aim_missile_move_up_down_right" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_missile_move_up_neutral" 0
}

$animation "aim_missile_move_up_mid_left" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_missile_move_up_neutral" 0
}

$animation "aim_missile_move_up_mid_center" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_missile_move_up_neutral" 0
}

$animation "aim_missile_move_up_mid_right" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_missile_move_up_neutral" 0
}

$animation "aim_missile_move_up_up_left" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_missile_move_up_neutral" 0
}

$animation "aim_missile_move_up_up_center" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_missile_move_up_neutral" 0
}

$animation "aim_missile_move_up_up_right" "grunt_animations\combat_missile_aim_move_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_missile_move_up_neutral" 0
}

//AIM MISSILE MOVE DOWN

$animation "aim_missile_move_down_neutral" "grunt_animations\combat_missile_aim_move_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_missile_move_down_down_left" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_missile_move_down_neutral" 0
}

$animation "aim_missile_move_down_down_center" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_missile_move_down_neutral" 0
}

$animation "aim_missile_move_down_down_right" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_missile_move_down_neutral" 0
}

$animation "aim_missile_move_down_mid_left" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_missile_move_down_neutral" 0
}

$animation "aim_missile_move_down_mid_center" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_missile_move_down_neutral" 0
}

$animation "aim_missile_move_down_mid_right" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_missile_move_down_neutral" 0
}

$animation "aim_missile_move_down_up_left" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_missile_move_down_neutral" 0
}

$animation "aim_missile_move_down_up_center" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_missile_move_down_neutral" 0
}

$animation "aim_missile_move_down_up_right" "grunt_animations\combat_missile_aim_move_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_missile_move_down_neutral" 0
}

//AIM MISSILE FC STILL UP

$animation "aim_missile_fc_still_up_neutral" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_missile_fc_still_up_down_left" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_missile_fc_still_up_neutral" 0
}

$animation "aim_missile_fc_still_up_down_center" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_missile_fc_still_up_neutral" 0
}

$animation "aim_missile_fc_still_up_down_right" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_missile_fc_still_up_neutral" 0
}

$animation "aim_missile_fc_still_up_mid_left" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_missile_fc_still_up_neutral" 0
}

$animation "aim_missile_fc_still_up_mid_center" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_missile_fc_still_up_neutral" 0
}

$animation "aim_missile_fc_still_up_mid_right" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_missile_fc_still_up_neutral" 0
}

$animation "aim_missile_fc_still_up_up_left" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_missile_fc_still_up_neutral" 0
}

$animation "aim_missile_fc_still_up_up_center" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_missile_fc_still_up_neutral" 0
}

$animation "aim_missile_fc_still_up_up_right" "grunt_animations\combat_missile_fc_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_missile_fc_still_up_neutral" 0
}

//AIM MISSILE FC STILL DOWN

$animation "aim_missile_fc_still_down_neutral" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_missile_fc_still_down_down_left" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_missile_fc_still_down_neutral" 0
}

$animation "aim_missile_fc_still_down_down_center" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_missile_fc_still_down_neutral" 0
}

$animation "aim_missile_fc_still_down_down_right" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_missile_fc_still_down_neutral" 0
}

$animation "aim_missile_fc_still_down_mid_left" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_missile_fc_still_down_neutral" 0
}

$animation "aim_missile_fc_still_down_mid_center" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_missile_fc_still_down_neutral" 0
}

$animation "aim_missile_fc_still_down_mid_right" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_missile_fc_still_down_neutral" 0
}

$animation "aim_missile_fc_still_down_up_left" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_missile_fc_still_down_neutral" 0
}

$animation "aim_missile_fc_still_down_up_center" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_missile_fc_still_down_neutral" 0
}

$animation "aim_missile_fc_still_down_up_right" "grunt_animations\combat_missile_fc_aim_still_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_missile_fc_still_down_neutral" 0
}

//AIM MISSILE FC MOVE UP

$animation "aim_missile_fc_move_up_neutral" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_missile_fc_move_up_down_left" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_missile_fc_move_up_neutral" 0
}

$animation "aim_missile_fc_move_up_down_center" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_missile_fc_move_up_neutral" 0
}

$animation "aim_missile_fc_move_up_down_right" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_missile_fc_move_up_neutral" 0
}

$animation "aim_missile_fc_move_up_mid_left" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_missile_fc_move_up_neutral" 0
}

$animation "aim_missile_fc_move_up_mid_center" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_missile_fc_move_up_neutral" 0
}

$animation "aim_missile_fc_move_up_mid_right" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_missile_fc_move_up_neutral" 0
}

$animation "aim_missile_fc_move_up_up_left" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_missile_fc_move_up_neutral" 0
}

$animation "aim_missile_fc_move_up_up_center" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_missile_fc_move_up_neutral" 0
}

$animation "aim_missile_fc_move_up_up_right" "grunt_animations\combat_missile_fc_aim_move_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_missile_fc_move_up_neutral" 0
}

//AIM MISSILE FC MOVE DOWN

$animation "aim_missile_fc_move_down_neutral" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_missile_fc_move_down_down_left" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_missile_fc_move_down_neutral" 0
}

$animation "aim_missile_fc_move_down_down_center" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_missile_fc_move_down_neutral" 0
}

$animation "aim_missile_fc_move_down_down_right" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_missile_fc_move_down_neutral" 0
}

$animation "aim_missile_fc_move_down_mid_left" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_missile_fc_move_down_neutral" 0
}

$animation "aim_missile_fc_move_down_mid_center" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_missile_fc_move_down_neutral" 0
}

$animation "aim_missile_fc_move_down_mid_right" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_missile_fc_move_down_neutral" 0
}

$animation "aim_missile_fc_move_down_up_left" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_missile_fc_move_down_neutral" 0
}

$animation "aim_missile_fc_move_down_up_center" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_missile_fc_move_down_neutral" 0
}

$animation "aim_missile_fc_move_down_up_right" "grunt_animations\combat_missile_fc_aim_move_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_missile_fc_move_down_neutral" 0
}

//AIM PISTOL STILL UP

$animation "aim_pistol_still_up_neutral" "grunt_animations\combat_pistol_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_pistol_still_up_down_left" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_pistol_still_up_neutral" 0
}

$animation "aim_pistol_still_up_down_center" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_pistol_still_up_neutral" 0
}

$animation "aim_pistol_still_up_down_right" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_pistol_still_up_neutral" 0
}

$animation "aim_pistol_still_up_mid_left" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_pistol_still_up_neutral" 0
}

$animation "aim_pistol_still_up_mid_center" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_pistol_still_up_neutral" 0
}

$animation "aim_pistol_still_up_mid_right" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_pistol_still_up_neutral" 0
}

$animation "aim_pistol_still_up_up_left" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_pistol_still_up_neutral" 0
}

$animation "aim_pistol_still_up_up_center" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_pistol_still_up_neutral" 0
}

$animation "aim_pistol_still_up_up_right" "grunt_animations\combat_pistol_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_pistol_still_up_neutral" 0
}

//AIM PISTOL STILL DOWN

$animation "aim_pistol_still_down_neutral" "grunt_animations\combat_pistol_aim_still_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_pistol_still_down_down_left" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_pistol_still_down_neutral" 0
}

$animation "aim_pistol_still_down_down_center" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_pistol_still_down_neutral" 0
}

$animation "aim_pistol_still_down_down_right" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_pistol_still_down_neutral" 0
}

$animation "aim_pistol_still_down_mid_left" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_pistol_still_down_neutral" 0
}

$animation "aim_pistol_still_down_mid_center" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_pistol_still_down_neutral" 0
}

$animation "aim_pistol_still_down_mid_right" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_pistol_still_down_neutral" 0
}

$animation "aim_pistol_still_down_up_left" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_pistol_still_down_neutral" 0
}

$animation "aim_pistol_still_down_up_center" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_pistol_still_down_neutral" 0
}

$animation "aim_pistol_still_down_up_right" "grunt_animations\combat_pistol_aim_still_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_pistol_still_down_neutral" 0
}

//AIM PISTOL MOVE UP

$animation "aim_pistol_move_up_neutral" "grunt_animations\combat_pistol_aim_move_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_pistol_move_up_down_left" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_pistol_move_up_neutral" 0
}

$animation "aim_pistol_move_up_down_center" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_pistol_move_up_neutral" 0
}

$animation "aim_pistol_move_up_down_right" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_pistol_move_up_neutral" 0
}

$animation "aim_pistol_move_up_mid_left" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_pistol_move_up_neutral" 0
}

$animation "aim_pistol_move_up_mid_center" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_pistol_move_up_neutral" 0
}

$animation "aim_pistol_move_up_mid_right" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_pistol_move_up_neutral" 0
}

$animation "aim_pistol_move_up_up_left" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_pistol_move_up_neutral" 0
}

$animation "aim_pistol_move_up_up_center" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_pistol_move_up_neutral" 0
}

$animation "aim_pistol_move_up_up_right" "grunt_animations\combat_pistol_aim_move_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_pistol_move_up_neutral" 0
}

//AIM PISTOL MOVE DOWN

$animation "aim_pistol_move_down_neutral" "grunt_animations\combat_pistol_aim_move_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_pistol_move_down_down_left" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_pistol_move_down_neutral" 0
}

$animation "aim_pistol_move_down_down_center" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_pistol_move_down_neutral" 0
}

$animation "aim_pistol_move_down_down_right" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_pistol_move_down_neutral" 0
}

$animation "aim_pistol_move_down_mid_left" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_pistol_move_down_neutral" 0
}

$animation "aim_pistol_move_down_mid_center" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_pistol_move_down_neutral" 0
}

$animation "aim_pistol_move_down_mid_right" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_pistol_move_down_neutral" 0
}

$animation "aim_pistol_move_down_up_left" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_pistol_move_down_neutral" 0
}

$animation "aim_pistol_move_down_up_center" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_pistol_move_down_neutral" 0
}

$animation "aim_pistol_move_down_up_right" "grunt_animations\combat_pistol_aim_move_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_pistol_move_down_neutral" 0
}

//AIM PISTOL CROUCH UP

$animation "aim_pistol_crouch_up_neutral" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_pistol_crouch_up_down_left" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_pistol_crouch_up_neutral" 0
}

$animation "aim_pistol_crouch_up_down_center" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_pistol_crouch_up_neutral" 0
}

$animation "aim_pistol_crouch_up_down_right" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_pistol_crouch_up_neutral" 0
}

$animation "aim_pistol_crouch_up_mid_left" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_pistol_crouch_up_neutral" 0
}

$animation "aim_pistol_crouch_up_mid_center" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_pistol_crouch_up_neutral" 0
}

$animation "aim_pistol_crouch_up_mid_right" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_pistol_crouch_up_neutral" 0
}

$animation "aim_pistol_crouch_up_up_left" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_pistol_crouch_up_neutral" 0
}

$animation "aim_pistol_crouch_up_up_center" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_pistol_crouch_up_neutral" 0
}

$animation "aim_pistol_crouch_up_up_right" "grunt_animations\crouch_pistol_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_pistol_crouch_up_neutral" 0
}

//AIM PISTOL CROUCH DOWN

$animation "aim_pistol_crouch_down_neutral" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_pistol_crouch_down_down_left" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_pistol_crouch_down_neutral" 0
}

$animation "aim_pistol_crouch_down_down_center" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_pistol_crouch_down_neutral" 0
}

$animation "aim_pistol_crouch_down_down_right" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_pistol_crouch_down_neutral" 0
}

$animation "aim_pistol_crouch_down_mid_left" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_pistol_crouch_down_neutral" 0
}

$animation "aim_pistol_crouch_down_mid_center" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_pistol_crouch_down_neutral" 0
}

$animation "aim_pistol_crouch_down_mid_right" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_pistol_crouch_down_neutral" 0
}

$animation "aim_pistol_crouch_down_up_left" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_pistol_crouch_down_neutral" 0
}

$animation "aim_pistol_crouch_down_up_center" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_pistol_crouch_down_neutral" 0
}

$animation "aim_pistol_crouch_down_up_right" "grunt_animations\crouch_pistol_aim_still_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_pistol_crouch_down_neutral" 0
}

//AIM GUN TURRET

$animation "aim_turret_up_neutral" "grunt_animations\turret_g_any_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_turret_up_down_left" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_turret_up_neutral" 0
}

$animation "aim_turret_up_down_center" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30

	frame 5 5
	subtract "aim_turret_up_neutral" 0
}

$animation "aim_turret_up_down_right" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_turret_up_neutral" 0
}

$animation "aim_turret_up_mid_left" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30
	frame 15 15
	subtract "aim_turret_up_neutral" 0
}

$animation "aim_turret_up_mid_center" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30
	frame 12 12
	subtract "aim_turret_up_neutral" 0
}

$animation "aim_turret_up_mid_right" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_turret_up_neutral" 0
}

$animation "aim_turret_up_up_left" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30
	frame 22 22
	subtract "aim_turret_up_neutral" 0
}

$animation "aim_turret_up_up_center" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30
	frame 19 19
	subtract "aim_turret_up_neutral" 0
}

$animation "aim_turret_up_up_right" "grunt_animations\turret_g_any_aim_still_up.smd" {
	fps 30
	frame 16 16
	subtract "aim_turret_up_neutral" 0
}

//AIM PATROL STILL DOWN

$animation "aim_patrol_still_down_neutral" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_still_down_down_left" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_still_down_neutral" 0
}

$animation "aim_patrol_still_down_down_center" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_still_down_neutral" 0
}

$animation "aim_patrol_still_down_down_right" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_still_down_neutral" 0
}

$animation "aim_patrol_still_down_mid_left" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_still_down_neutral" 0
}

$animation "aim_patrol_still_down_mid_center" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_still_down_neutral" 0
}

$animation "aim_patrol_still_down_mid_right" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_still_down_neutral" 0
}

$animation "aim_patrol_still_down_up_left" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_still_down_neutral" 0
}

$animation "aim_patrol_still_down_up_center" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_still_down_neutral" 0
}

$animation "aim_patrol_still_down_up_right" "grunt_animations\patrol_unarmed_aim_still_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_still_down_neutral" 0
}

//AIM PATROL MOVE DOWN

$animation "aim_patrol_move_down_neutral" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_move_down_down_left" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_move_down_neutral" 0
}

$animation "aim_patrol_move_down_down_center" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_move_down_neutral" 0
}

$animation "aim_patrol_move_down_down_right" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_move_down_neutral" 0
}

$animation "aim_patrol_move_down_mid_left" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_move_down_neutral" 0
}

$animation "aim_patrol_move_down_mid_center" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_move_down_neutral" 0
}

$animation "aim_patrol_move_down_mid_right" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_move_down_neutral" 0
}

$animation "aim_patrol_move_down_up_left" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_move_down_neutral" 0
}

$animation "aim_patrol_move_down_up_center" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_move_down_neutral" 0
}

$animation "aim_patrol_move_down_up_right" "grunt_animations\patrol_unarmed_aim_move_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_move_down_neutral" 0
}

//AIM PATROL PISTOL STILL DOWN

$animation "aim_patrol_pistol_still_down_neutral" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_pistol_still_down_down_left" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

$animation "aim_patrol_pistol_still_down_down_center" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

$animation "aim_patrol_pistol_still_down_down_right" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

$animation "aim_patrol_pistol_still_down_mid_left" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

$animation "aim_patrol_pistol_still_down_mid_center" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

$animation "aim_patrol_pistol_still_down_mid_right" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

$animation "aim_patrol_pistol_still_down_up_left" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

$animation "aim_patrol_pistol_still_down_up_center" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

$animation "aim_patrol_pistol_still_down_up_right" "grunt_animations\patrol_pistol_aim_still_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_pistol_still_down_neutral" 0
}

//AIM PATROL PISTOL STILL UP

$animation "aim_patrol_pistol_still_up_neutral" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_pistol_still_up_down_left" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

$animation "aim_patrol_pistol_still_up_down_center" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

$animation "aim_patrol_pistol_still_up_down_right" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

$animation "aim_patrol_pistol_still_up_mid_left" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

$animation "aim_patrol_pistol_still_up_mid_center" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

$animation "aim_patrol_pistol_still_up_mid_right" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

$animation "aim_patrol_pistol_still_up_up_left" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

$animation "aim_patrol_pistol_still_up_up_center" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

$animation "aim_patrol_pistol_still_up_up_right" "grunt_animations\patrol_pistol_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_pistol_still_up_neutral" 0
}

//AIM PATROL PISTOL MOVE DOWN

$animation "aim_patrol_pistol_move_down_neutral" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_pistol_move_down_down_left" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

$animation "aim_patrol_pistol_move_down_down_center" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

$animation "aim_patrol_pistol_move_down_down_right" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

$animation "aim_patrol_pistol_move_down_mid_left" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

$animation "aim_patrol_pistol_move_down_mid_center" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

$animation "aim_patrol_pistol_move_down_mid_right" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

$animation "aim_patrol_pistol_move_down_up_left" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

$animation "aim_patrol_pistol_move_down_up_center" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

$animation "aim_patrol_pistol_move_down_up_right" "grunt_animations\patrol_pistol_aim_move_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_pistol_move_down_neutral" 0
}

//AIM PATROL PISTOL MOVE UP

$animation "aim_patrol_pistol_move_up_neutral" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_pistol_move_up_down_left" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

$animation "aim_patrol_pistol_move_up_down_center" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

$animation "aim_patrol_pistol_move_up_down_right" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

$animation "aim_patrol_pistol_move_up_mid_left" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

$animation "aim_patrol_pistol_move_up_mid_center" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

$animation "aim_patrol_pistol_move_up_mid_right" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

$animation "aim_patrol_pistol_move_up_up_left" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

$animation "aim_patrol_pistol_move_up_up_center" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

$animation "aim_patrol_pistol_move_up_up_right" "grunt_animations\patrol_pistol_aim_move_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_pistol_move_up_neutral" 0
}

//AIM PATROL MISSILE STILL DOWN

$animation "aim_patrol_missile_still_down_neutral" "grunt_animations\patrol_missile_aim_still_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_missile_still_down_down_left" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_missile_still_down_neutral" 0
}

$animation "aim_patrol_missile_still_down_down_center" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_missile_still_down_neutral" 0
}

$animation "aim_patrol_missile_still_down_down_right" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_missile_still_down_neutral" 0
}

$animation "aim_patrol_missile_still_down_mid_left" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_missile_still_down_neutral" 0
}

$animation "aim_patrol_missile_still_down_mid_center" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_missile_still_down_neutral" 0
}

$animation "aim_patrol_missile_still_down_mid_right" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_missile_still_down_neutral" 0
}

$animation "aim_patrol_missile_still_down_up_left" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_missile_still_down_neutral" 0
}

$animation "aim_patrol_missile_still_down_up_center" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_missile_still_down_neutral" 0
}

$animation "aim_patrol_missile_still_down_up_right" "grunt_animations\patrol_missile_aim_still_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_missile_still_down_neutral" 0
}

//AIM PATROL MISSILE STILL UP

$animation "aim_patrol_missile_still_up_neutral" "grunt_animations\patrol_missile_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_missile_still_up_down_left" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_missile_still_up_neutral" 0
}

$animation "aim_patrol_missile_still_up_down_center" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_missile_still_up_neutral" 0
}

$animation "aim_patrol_missile_still_up_down_right" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_missile_still_up_neutral" 0
}

$animation "aim_patrol_missile_still_up_mid_left" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_missile_still_up_neutral" 0
}

$animation "aim_patrol_missile_still_up_mid_center" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_missile_still_up_neutral" 0
}

$animation "aim_patrol_missile_still_up_mid_right" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_missile_still_up_neutral" 0
}

$animation "aim_patrol_missile_still_up_up_left" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_missile_still_up_neutral" 0
}

$animation "aim_patrol_missile_still_up_up_center" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_missile_still_up_neutral" 0
}

$animation "aim_patrol_missile_still_up_up_right" "grunt_animations\patrol_missile_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_missile_still_up_neutral" 0
}
//AIM PATROL MISSILE MOVE DOWN
$animation "aim_patrol_missile_move_down_neutral" "grunt_animations\patrol_missile_aim_move_down.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_missile_move_down_down_left" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_missile_move_down_neutral" 0
}

$animation "aim_patrol_missile_move_down_down_center" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_missile_move_down_neutral" 0
}

$animation "aim_patrol_missile_move_down_down_right" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_missile_move_down_neutral" 0
}

$animation "aim_patrol_missile_move_down_mid_left" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_missile_move_down_neutral" 0
}

$animation "aim_patrol_missile_move_down_mid_center" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_missile_move_down_neutral" 0
}

$animation "aim_patrol_missile_move_down_mid_right" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_missile_move_down_neutral" 0
}

$animation "aim_patrol_missile_move_down_up_left" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_missile_move_down_neutral" 0
}

$animation "aim_patrol_missile_move_down_up_center" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_missile_move_down_neutral" 0
}

$animation "aim_patrol_missile_move_down_up_right" "grunt_animations\patrol_missile_aim_move_down.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_missile_move_down_neutral" 0
}

//AIM PATROL MISSILE MOVE UP

$animation "aim_patrol_missile_move_up_neutral" "grunt_animations\patrol_missile_aim_move_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_missile_move_up_down_left" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_missile_move_up_neutral" 0
}

$animation "aim_patrol_missile_move_up_down_center" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_missile_move_up_neutral" 0
}

$animation "aim_patrol_missile_move_up_down_right" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_missile_move_up_neutral" 0
}

$animation "aim_patrol_missile_move_up_mid_left" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_missile_move_up_neutral" 0
}

$animation "aim_patrol_missile_move_up_mid_center" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_missile_move_up_neutral" 0
}

$animation "aim_patrol_missile_move_up_mid_right" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_missile_move_up_neutral" 0
}

$animation "aim_patrol_missile_move_up_up_left" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_missile_move_up_neutral" 0
}

$animation "aim_patrol_missile_move_up_up_center" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_missile_move_up_neutral" 0
}

$animation "aim_patrol_missile_move_up_up_right" "grunt_animations\patrol_missile_aim_move_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_missile_move_up_neutral" 0
}


//REFERENCE

$animation "ref" "grunt_animations\REFERENCE.smd" {
	fps 30
}


//IDLE 2 COMBAT ANIMATIONS

$animation "combat_missile_fc_idle_2_combat_move_S" "grunt_animations\combat_missile_fc_idle_2_combat_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_idle_2_combat_move_W" "grunt_animations\combat_missile_fc_idle_2_combat_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_idle_2_combat_move_E" "grunt_animations\combat_missile_fc_idle_2_combat_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_idle_2_combat_move_N" "grunt_animations\combat_missile_fc_idle_2_combat_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_combat_2_idle_move_S" "grunt_animations\combat_missile_fc_move_back_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_combat_2_idle_move_W" "grunt_animations\combat_missile_fc_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_combat_2_idle_move_E" "grunt_animations\combat_missile_fc_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_combat_2_idle_move_N" "grunt_animations\combat_missile_fc_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_idle_2_combat_move_S" "grunt_animations\combat_missile_idle_2_combat_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_idle_2_combat_move_W" "grunt_animations\combat_missile_idle_2_combat_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_idle_2_combat_move_E" "grunt_animations\combat_missile_idle_2_combat_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_idle_2_combat_move_N" "grunt_animations\combat_missile_idle_2_combat_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_combat_2_idle_move_S" "grunt_animations\combat_missile_move_back_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_combat_2_idle_move_W" "grunt_animations\combat_missile_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_combat_2_idle_move_E" "grunt_animations\combat_missile_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_combat_2_idle_move_N" "grunt_animations\combat_missile_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_idle_2_combat_move_S" "grunt_animations\combat_pistol_idle_2_combat_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_idle_2_combat_move_W" "grunt_animations\combat_pistol_idle_2_combat_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_idle_2_combat_move_E" "grunt_animations\combat_pistol_idle_2_combat_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_idle_2_combat_move_N" "grunt_animations\combat_pistol_idle_2_combat_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_combat_2_idle_move_S" "grunt_animations\combat_pistol_move_back_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_combat_2_idle_move_W" "grunt_animations\combat_pistol_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_combat_2_idle_move_E" "grunt_animations\combat_pistol_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_combat_2_idle_move_N" "grunt_animations\combat_pistol_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_idle_2_crouch_move_S" "grunt_animations\crouch_pistol_idle_2_crouch_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_idle_2_crouch_move_W" "grunt_animations\crouch_pistol_idle_2_crouch_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_idle_2_crouch_move_E" "grunt_animations\crouch_pistol_idle_2_crouch_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_idle_2_crouch_move_N" "grunt_animations\crouch_pistol_idle_2_crouch_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_crouch_2_idle_move_S" "grunt_animations\crouch_pistol_idle_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_crouch_2_idle_move_W" "grunt_animations\crouch_pistol_idle_2_crouch_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_crouch_2_idle_move_E" "grunt_animations\crouch_pistol_idle_2_crouch_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_crouch_2_idle_move_N" "grunt_animations\crouch_pistol_idle_2_crouch_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}


//MOVE ANIMATIONS

$animation "combat_missile_fc_move_S" "grunt_animations\combat_missile_fc_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_move_W" "grunt_animations\combat_missile_fc_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_move_E" "grunt_animations\combat_missile_fc_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_move_N" "grunt_animations\combat_missile_fc_move_front_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_fc_move_alt_N" "grunt_animations\combat_missile_fc_move_front_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_move_S" "grunt_animations\combat_missile_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_move_W" "grunt_animations\combat_missile_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_move_E" "grunt_animations\combat_missile_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_move_N" "grunt_animations\combat_missile_move_front_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_missile_move_alt_N" "grunt_animations\combat_missile_move_front_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_move_S" "grunt_animations\combat_pistol_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_move_W" "grunt_animations\combat_pistol_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_move_E" "grunt_animations\combat_pistol_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_move_N" "grunt_animations\combat_pistol_move_front_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_move_1_N" "grunt_animations\combat_pistol_move_front_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_move_2_N" "grunt_animations\combat_pistol_move_front_var2.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_pistol_move_3_N" "grunt_animations\combat_pistol_move_front_var3.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_move_S" "grunt_animations\crouch_pistol_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_move_W" "grunt_animations\crouch_pistol_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_move_E" "grunt_animations\crouch_pistol_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_pistol_move_N" "grunt_animations\crouch_pistol_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}


$animation "patrol_missile_move_1_N" "grunt_animations\patrol_missile_move_front_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "patrol_missile_move_2_N" "grunt_animations\patrol_missile_move_front_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "patrol_pistol_move_1_N" "grunt_animations\patrol_pistol_move_front_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "patrol_pistol_move_2_N" "grunt_animations\patrol_pistol_move_front_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "patrol_pistol_move_3_N" "grunt_animations\patrol_pistol_move_front_var2.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "patrol_unarmed_move_1_N" "grunt_animations\patrol_unarmed_move_front_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "patrol_unarmed_move_2_N" "grunt_animations\patrol_unarmed_move_front_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "patrol_unarmed_move_3_N" "grunt_animations\patrol_unarmed_move_front_var2.smd" {
	fps 30
	walkframe 140 LX LY
}


//WALK ANIMATIONS

$animation "combat_unarmed_walk_S" "grunt_animations\combat_unarmed_walk_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_unarmed_walk_W" "grunt_animations\combat_unarmed_walk_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_unarmed_walk_E" "grunt_animations\combat_unarmed_walk_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "combat_unarmed_walk_N" "grunt_animations\combat_unarmed_walk_front.smd" {
	fps 30
	walkframe 140 LX LY
}




$animation "flinch_left_arm" "grunt_animations\h_ping_front_l_arm.smd" {
	fps 30
}
$animation "flinch_left_leg" "grunt_animations\h_ping_front_l_foot.smd" {
	fps 30
}
$animation "flinch_right_leg" "grunt_animations\h_ping_front_r_foot.smd" {
	fps 30
}
$animation "flinch_right_arm" "grunt_animations\h_ping_front_r_arm.smd" {
	fps 30
}
$animation "flinch_gut" "grunt_animations\h_ping_front_gut.smd" {
	fps 30
}
$animation "flinch_head" "grunt_animations\h_ping_front_head.smd" {
	fps 30
}

$animation "ping_left_arm_pose" "grunt_animations\s_ping_front_l_arm.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_left_arm" "grunt_animations\s_ping_front_l_arm.smd" {
	fps 30
	subtract	"ping_left_arm_pose"	0
}
$animation "ping_right_arm_pose" "grunt_animations\s_ping_front_r_arm.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_right_arm" "grunt_animations\s_ping_front_r_arm.smd" {
	fps 30
	subtract	"ping_right_arm_pose"	0
}
$animation "ping_gut1_pose" "grunt_animations\s_ping_right_gut_var0.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_gut1" "grunt_animations\s_ping_right_gut_var0.smd" {
	fps 30
	subtract	"ping_gut1_pose"	0
}
$animation "ping_gut2_pose" "grunt_animations\s_ping_right_gut_var1.smd" {
	fps 30
	frame 22 22
	loop
}
$animation "ping_gut2" "grunt_animations\s_ping_right_gut_var1.smd" {
	fps 30
	subtract	"ping_gut2_pose"	0
}
$animation "ping_head_pose" "grunt_animations\s_ping_right_head_var0.smd" {
	fps 30
	frame 7 7
	loop
}
$animation "ping_head" "grunt_animations\s_ping_right_head_var0.smd" {
	fps 30
	subtract	"ping_head_pose"	0
}


$animation "fire_needler_pose" "grunt_animations\combat_pistol_ne_fire_1.smd" {
	fps 30
	frame 11 11
	loop
}
$animation "fire_plasma_pistol_pose" "grunt_animations\combat_pistol_fire_1.smd" {
	fps 30
	loop
	frame 12 12
}
$animation "fire_plasma_rifle_pose" "grunt_animations\combat_pistol_pr_fire_1.smd" {
	fps 30
	loop
	frame 11 11
}
$animation "fire_fuel_rod_pose" "grunt_animations\combat_missile_rl_fire_1.smd" {
	fps 30
	loop
	frame 21 21
}
$animation "fire_turret_pose" "grunt_animations\turret_g_any_fire_1.smd" {
	fps 30
	loop
	frame 6 6
}
$animation "reload_plasma_pistol_pose" "grunt_animations\combat_pistol_pp_reload_1.smd" {
	fps 30
	frame 113 113
	loop
}

$animation "fire_needler" "grunt_animations\combat_pistol_ne_fire_1.smd" {
	fps 30
	subtract	"fire_needler_pose"	0
}
$animation "fire_plasma_pistol" "grunt_animations\combat_pistol_fire_1.smd" {
	fps 30
	subtract	"fire_plasma_pistol_pose"	0
}
$animation "fire_plasma_rifle" "grunt_animations\combat_pistol_pr_fire_1.smd" {
	fps 30
	subtract	"fire_plasma_rifle_pose"	0
}
$animation "fire_fuel_rod" "grunt_animations\combat_missile_rl_fire_1.smd" {
	fps 30
	subtract	"fire_fuel_rod_pose"	0
}
$animation "fire_turret" "grunt_animations\turret_g_any_fire_1.smd" {
	fps 30
	subtract	"fire_turret_pose"	0
}
$animation "reload_plasma_pistol" "grunt_animations\combat_pistol_pp_reload_1.smd" {
	fps 30
	subtract		"reload_plasma_pistol"	0
}

$sequence "aim_pistol_still_up" {
	"aim_pistol_still_up_up_right" "aim_pistol_still_up_up_center"  "aim_pistol_still_up_up_left"
	"aim_pistol_still_up_mid_right" "aim_pistol_still_up_mid_center"  "aim_pistol_still_up_mid_left"
	"aim_pistol_still_up_down_right" "aim_pistol_still_up_down_center" "aim_pistol_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_pistol_still_down" {
	"aim_pistol_still_down_up_right" "aim_pistol_still_down_up_center"  "aim_pistol_still_down_up_left"
	"aim_pistol_still_down_mid_right" "aim_pistol_still_down_mid_center"  "aim_pistol_still_down_mid_left"
	"aim_pistol_still_down_down_right" "aim_pistol_still_down_down_center" "aim_pistol_still_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}
			
$sequence "aim_missile_still_up" {
	"aim_missile_still_up_up_right" "aim_missile_still_up_up_center"  "aim_missile_still_up_up_left"
	"aim_missile_still_up_mid_right" "aim_missile_still_up_mid_center"  "aim_missile_still_up_mid_left"
	"aim_missile_still_up_down_right" "aim_missile_still_up_down_center" "aim_missile_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_missile_still_down" {
	"aim_missile_still_down_up_right" "aim_missile_still_down_up_center"  "aim_missile_still_down_up_left"
	"aim_missile_still_down_mid_right" "aim_missile_still_down_mid_center"  "aim_missile_still_down_mid_left"
	"aim_missile_still_down_down_right" "aim_missile_still_down_down_center" "aim_missile_still_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_missile_fc_still_up" {
	"aim_missile_fc_still_up_up_right" "aim_missile_fc_still_up_up_center"  "aim_missile_fc_still_up_up_left"
	"aim_missile_fc_still_up_mid_right" "aim_missile_fc_still_up_mid_center"  "aim_missile_fc_still_up_mid_left"
	"aim_missile_fc_still_up_down_right" "aim_missile_fc_still_up_down_center" "aim_missile_fc_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_missile_fc_still_down" {
	"aim_missile_fc_still_down_up_right" "aim_missile_fc_still_down_up_center"  "aim_missile_fc_still_down_up_left"
	"aim_missile_fc_still_down_mid_right" "aim_missile_fc_still_down_mid_center"  "aim_missile_fc_still_down_mid_left"
	"aim_missile_fc_still_down_down_right" "aim_missile_fc_still_down_down_center" "aim_missile_fc_still_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_pistol_move_up" {
	"aim_pistol_move_up_up_right" "aim_pistol_move_up_up_center"  "aim_pistol_move_up_up_left"
	"aim_pistol_move_up_mid_right" "aim_pistol_move_up_mid_center"  "aim_pistol_move_up_mid_left"
	"aim_pistol_move_up_down_right" "aim_pistol_move_up_down_center" "aim_pistol_move_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_pistol_move_down" {
	"aim_pistol_move_down_up_right" "aim_pistol_move_down_up_center"  "aim_pistol_move_down_up_left"
	"aim_pistol_move_down_mid_right" "aim_pistol_move_down_mid_center"  "aim_pistol_move_down_mid_left"
	"aim_pistol_move_down_down_right" "aim_pistol_move_down_down_center" "aim_pistol_move_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_missile_move_up" {
	"aim_missile_move_up_up_right" "aim_missile_move_up_up_center"  "aim_missile_move_up_up_left"
	"aim_missile_move_up_mid_right" "aim_missile_move_up_mid_center"  "aim_missile_move_up_mid_left"
	"aim_missile_move_up_down_right" "aim_missile_move_up_down_center" "aim_missile_move_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_missile_move_down" {
	"aim_missile_move_down_up_right" "aim_missile_move_down_up_center"  "aim_missile_move_down_up_left"
	"aim_missile_move_down_mid_right" "aim_missile_move_down_mid_center"  "aim_missile_move_down_mid_left"
	"aim_missile_move_down_down_right" "aim_missile_move_down_down_center" "aim_missile_move_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_missile_fc_move_up" {
	"aim_missile_fc_move_up_up_right" "aim_missile_fc_move_up_up_center"  "aim_missile_fc_move_up_up_left"
	"aim_missile_fc_move_up_mid_right" "aim_missile_fc_move_up_mid_center"  "aim_missile_fc_move_up_mid_left"
	"aim_missile_fc_move_up_down_right" "aim_missile_fc_move_up_down_center" "aim_missile_fc_move_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_missile_fc_move_down" {
	"aim_missile_fc_move_down_up_right" "aim_missile_fc_move_down_up_center"  "aim_missile_fc_move_down_up_left"
	"aim_missile_fc_move_down_mid_right" "aim_missile_fc_move_down_mid_center"  "aim_missile_fc_move_down_mid_left"
	"aim_missile_fc_move_down_down_right" "aim_missile_fc_move_down_down_center" "aim_missile_fc_move_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_pistol_crouch_up" {
	"aim_pistol_crouch_up_up_right" "aim_pistol_crouch_up_up_center"  "aim_pistol_crouch_up_up_left"
	"aim_pistol_crouch_up_mid_right" "aim_pistol_crouch_up_mid_center"  "aim_pistol_crouch_up_mid_left"
	"aim_pistol_crouch_up_down_right" "aim_pistol_crouch_up_down_center" "aim_pistol_crouch_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_pistol_crouch_down" {
	"aim_pistol_crouch_down_up_right" "aim_pistol_crouch_down_up_center"  "aim_pistol_crouch_down_up_left"
	"aim_pistol_crouch_down_mid_right" "aim_pistol_crouch_down_mid_center"  "aim_pistol_crouch_down_mid_left"
	"aim_pistol_crouch_down_down_right" "aim_pistol_crouch_down_down_center" "aim_pistol_crouch_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_turret_up" {
	"aim_turret_up_up_right" "aim_turret_up_up_center"  "aim_turret_up_up_left"
	"aim_turret_up_mid_right" "aim_turret_up_mid_center"  "aim_turret_up_mid_left"
	"aim_turret_up_down_right" "aim_turret_up_down_center" "aim_turret_up_down_left"
	blend "aim_yaw" -90 90
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_still_down" {
	"aim_patrol_still_down_up_right" "aim_patrol_still_down_up_center"  "aim_patrol_still_down_up_left"
	"aim_patrol_still_down_mid_right" "aim_patrol_still_down_mid_center"  "aim_patrol_still_down_mid_left"
	"aim_patrol_still_down_down_right" "aim_patrol_still_down_down_center" "aim_patrol_still_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_pistol_still_down" {
	"aim_patrol_pistol_still_down_up_right" "aim_patrol_pistol_still_down_up_center"  "aim_patrol_pistol_still_down_up_left"
	"aim_patrol_pistol_still_down_mid_right" "aim_patrol_pistol_still_down_mid_center"  "aim_patrol_pistol_still_down_mid_left"
	"aim_patrol_pistol_still_down_down_right" "aim_patrol_pistol_still_down_down_center" "aim_patrol_pistol_still_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_pistol_still_up" {
	"aim_patrol_pistol_still_up_up_right" "aim_patrol_pistol_still_up_up_center"  "aim_patrol_pistol_still_up_up_left"
	"aim_patrol_pistol_still_up_mid_right" "aim_patrol_pistol_still_up_mid_center"  "aim_patrol_pistol_still_up_mid_left"
	"aim_patrol_pistol_still_up_down_right" "aim_patrol_pistol_still_up_down_center" "aim_patrol_pistol_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_missile_still_down" {
	"aim_patrol_missile_still_down_up_right" "aim_patrol_missile_still_down_up_center"  "aim_patrol_missile_still_down_up_left"
	"aim_patrol_missile_still_down_mid_right" "aim_patrol_missile_still_down_mid_center"  "aim_patrol_missile_still_down_mid_left"
	"aim_patrol_missile_still_down_down_right" "aim_patrol_missile_still_down_down_center" "aim_patrol_missile_still_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_missile_still_up" {
	"aim_patrol_missile_still_up_up_right" "aim_patrol_missile_still_up_up_center"  "aim_patrol_missile_still_up_up_left"
	"aim_patrol_missile_still_up_mid_right" "aim_patrol_missile_still_up_mid_center"  "aim_patrol_missile_still_up_mid_left"
	"aim_patrol_missile_still_up_down_right" "aim_patrol_missile_still_up_down_center" "aim_patrol_missile_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_move_down" {
	"aim_patrol_move_down_up_right" "aim_patrol_move_down_up_center"  "aim_patrol_move_down_up_left"
	"aim_patrol_move_down_mid_right" "aim_patrol_move_down_mid_center"  "aim_patrol_move_down_mid_left"
	"aim_patrol_move_down_down_right" "aim_patrol_move_down_down_center" "aim_patrol_move_down_down_left"
	blend "aim_yaw" -90 90
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_pistol_move_down" {
	"aim_patrol_pistol_move_down_up_right" "aim_patrol_pistol_move_down_up_center"  "aim_patrol_pistol_move_down_up_left"
	"aim_patrol_pistol_move_down_mid_right" "aim_patrol_pistol_move_down_mid_center"  "aim_patrol_pistol_move_down_mid_left"
	"aim_patrol_pistol_move_down_down_right" "aim_patrol_pistol_move_down_down_center" "aim_patrol_pistol_move_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_pistol_move_up" {
	"aim_patrol_pistol_move_up_up_right" "aim_patrol_pistol_move_up_up_center"  "aim_patrol_pistol_move_up_up_left"
	"aim_patrol_pistol_move_up_mid_right" "aim_patrol_pistol_move_up_mid_center"  "aim_patrol_pistol_move_up_mid_left"
	"aim_patrol_pistol_move_up_down_right" "aim_patrol_pistol_move_up_down_center" "aim_patrol_pistol_move_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_missile_move_down" {
	"aim_patrol_missile_move_down_up_right" "aim_patrol_missile_move_down_up_center"  "aim_patrol_missile_move_down_up_left"
	"aim_patrol_missile_move_down_mid_right" "aim_patrol_missile_move_down_mid_center"  "aim_patrol_missile_move_down_mid_left"
	"aim_patrol_missile_move_down_down_right" "aim_patrol_missile_move_down_down_center" "aim_patrol_missile_move_down_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_missile_move_up" {
	"aim_patrol_missile_move_up_up_right" "aim_patrol_missile_move_up_up_center"  "aim_patrol_missile_move_up_up_left"
	"aim_patrol_missile_move_up_mid_right" "aim_patrol_missile_move_up_mid_center"  "aim_patrol_missile_move_up_mid_left"
	"aim_patrol_missile_move_up_down_right" "aim_patrol_missile_move_up_down_center" "aim_patrol_missile_move_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "missile_idle_up" {
	"grunt_animations\combat_missile_idle.smd"
	activity "ACT_IDLE_RPG" 1
	addlayer	"aim_missile_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "missile_idle_down" {
	"grunt_animations\combat_missile_idle.smd"
	activity "ACT_IDLE_RPG" 1
	addlayer	"aim_missile_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "missile_fc_idle_up" {
	"grunt_animations\combat_missile_fc_idle.smd"
	activity "ACT_IDLE_RPG" 1
	addlayer	"aim_missile_fc_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "missile_fc_idle_down" {
	"grunt_animations\combat_missile_fc_idle.smd"
	activity "ACT_IDLE_RPG" 1
	addlayer	"aim_missile_fc_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "pistol_idle_up" {
	"grunt_animations\combat_pistol_idle_var0.smd"
	activity "ACT_IDLE_PISTOL" 1
	addlayer	"aim_pistol_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "pistol_idle_down" {
	"grunt_animations\combat_pistol_idle_var0.smd"
	activity "ACT_IDLE_PISTOL" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "flee_idle" {
	"grunt_animations\flee_pistol_idle.smd"
	activity "ACT_HL2MP_IDLE_SCARED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_1" {
	"grunt_animations\combat_pistol_posing_var1.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_2" {
	"grunt_animations\combat_pistol_posing_var2.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_3" {
	"grunt_animations\combat_pistol_posing_var3.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "idle_4" {
	"grunt_animations\combat_pistol_posing_var4.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "idle_5" {
	"grunt_animations\combat_pistol_posing_var5.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "idle_6" {
	"grunt_animations\combat_pistol_posing_var6.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_unarmed_1" {
	"grunt_animations\combat_unarmed_idle_var0.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_unarmed_2" {
	"grunt_animations\combat_unarmed_idle_var1.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_unarmed_3" {
	"grunt_animations\combat_unarmed_idle_var2.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "idle_unarmed_4" {
	"grunt_animations\combat_unarmed_idle_var3.smd"
	activity "ACT_IDLE_RELAXED" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$sequence "idle_unarmed_5" {
	"grunt_animations\combat_unarmed_idle_var4.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$sequence "idle_unarmed_6" {
	"grunt_animations\combat_unarmed_idle_var5.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "idle_unarmed_7" {
	"grunt_animations\combat_unarmed_idle_var6.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "patrol_pistol_idle_1" {
	"grunt_animations\patrol_pistol_posing_var1.smd"
	activity "ACT_IDLE_STIMULATED" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "patrol_pistol_idle_2" {
	"grunt_animations\patrol_pistol_posing_var2.smd"
	activity "ACT_IDLE_STIMULATED" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "patrol_pistol_idle_3" {
	"grunt_animations\patrol_pistol_posing_var3.smd"
	activity "ACT_IDLE_STIMULATED" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "patrol_pistol_idle_4" {
	"grunt_animations\patrol_pistol_posing_var4.smd"
	activity "ACT_IDLE_STIMULATED" 1
	addlayer	"aim_pistol_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "patrol_missile_idle_1" {
	"grunt_animations\patrol_missile_posing_var1.smd"
	activity "ACT_IDLE_AIM_STIMULATED" 1
	addlayer	"aim_missile_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "patrol_missile_idle_2" {
	"grunt_animations\patrol_missile_posing_var2.smd"
	activity "ACT_IDLE_AIM_STIMULATED" 1
	addlayer	"aim_missile_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "patrol_missile_idle_3" {
	"grunt_animations\patrol_missile_posing_var3.smd"
	activity "ACT_IDLE_AIM_STIMULATED" 1
	addlayer	"aim_missile_still_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}




$sequence "pistol_idle_crouch_up" {
	"grunt_animations\crouch_pistol_idle.smd"
	activity "ACT_COWER" 1
	addlayer	"aim_pistol_crouch_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "pistol_idle_crouch_down" {
	"grunt_animations\crouch_pistol_idle.smd"
	activity "ACT_COWER" 1
	addlayer	"aim_pistol_crouch_down"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$sequence "surprised_fuel_rod" {
	"grunt_animations\combat_missile_surprise_front.smd"
	activity "ACT_SIGNAL_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 20 LX LY
}

$sequence "surprised" {
	"grunt_animations\combat_pistol_surprise_front.smd"
	activity "ACT_SIGNAL_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 20 LX LY
}

$sequence "warn_fuel_rod" {
	"grunt_animations\combat_missile_warn.smd"
	activity "ACT_SIGNAL_HALT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "warn" {
	"grunt_animations\combat_pistol_warn.smd"
	activity "ACT_SIGNAL_HALT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "point" {
	"grunt_animations\combat_pistol_point.smd"
	activity "ACT_GMOD_GESTURE_POINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "pistol_reload" {
	"reload_plasma_pistol"
	activity "ACT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
//	delta
}

$sequence "throw_grenade" {
	"grunt_animations\combat_pistol_throw_grenade.smd"
	activity "ACT_GRENADE_TOSS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 1100 31 "event_halo_3_grunt_throw_grenade" }
	walkframe 145 LX LY
}

$sequence "throw_grenade_missile" {
	"grunt_animations\combat_missile_throw_grenade.smd"
	activity "ACT_GRENADE_TOSS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 1100 19 "event_halo_3_grunt_throw_grenade" }
	walkframe 145 LX LY
}

$sequence "throw_grenade_missile_fc" {
	"grunt_animations\combat_missile_fc_throw_grenade.smd"
	activity "ACT_GRENADE_TOSS" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 1100 19 "event_halo_3_grunt_throw_grenade" }
	walkframe 145 LX LY
}

$sequence "die_front_gut_1" {
	"grunt_animations\h_kill_front_gut_var0.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 145 LX LY
}

$sequence "die_front_gut_2" {
	"grunt_animations\h_kill_front_gut_var1.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 145 LX LY
}

$sequence "die_front_gut_3" {
	"grunt_animations\h_kill_front_gut_var2.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 145 LX LY
}

$sequence "die_back_gut" {
	"grunt_animations\h_kill_back_gut.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 145 LX LY
}

$sequence "die_front_head_1" {
	"grunt_animations\s_kill_front_gut_var0.smd"
	activity "ACT_DIE_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 60 LX LY
}

$sequence "die_front_head_2" {
	"grunt_animations\s_kill_front_gut_var1.smd"
	activity "ACT_DIE_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 60 LX LY
}

$sequence "die_right_gut" {
	"grunt_animations\s_kill_right_gut.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 41 LX LY
}

$sequence "die_left_gut" {
	"grunt_animations\s_kill_left_gut_var0.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 40 LX LY
}

$sequence "flinch_back_chest" {
	"flinch_gut"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 165 LX LY
}

$sequence "flinch_back_gut" {
	"flinch_gut"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 41 LX LY
}

$sequence "flinch_front_chest" {
	"flinch_gut"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 22 LX LY
}

$sequence "flinch_front_gut" {
	"flinch_gut"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 19 LX LY
}

$sequence "flinch_front_right_arm" {
	"flinch_right_arm"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 35 LX LY
}

$sequence "flinch_front_right_leg" {
	"flinch_right_leg"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 39 LX LY
}

$sequence "flinch_front_left_leg" {
	"flinch_left_leg"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 49 LX LY
}

$sequence "flinch_front_left_arm" {
	"flinch_left_arm"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 165 LX LY
}

$sequence "pinged_back_chest" {
	"ping_gut1"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
}

$sequence "pinged_back_gut" {
	"ping_gut1"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 41 LX LY
}

$sequence "pinged_front_chest" {
	"ping_gut2"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 22 LX LY
}

$sequence "pinged_front_gut" {
	"ping_gut2"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 19 LX LY
}

$sequence "pinged_front_right_arm" {
	"ping_right_arm"
	activity "ACT_FLINCH_RIGHTARM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 35 LX LY
}

$sequence "pinged_front_left_arm" {
	"ping_left_arm"
	activity "ACT_FLINCH_LEFTARM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
}

$sequence "Run Flee" {
	"grunt_animations\flee_pistol_move_front.smd"
	activity "ACT_RUN_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	node "stunned_run"
	fps 30
	loop

	walkframe 165 LX LY
}

$sequence "dead_airborne" {
	"grunt_animations\combat_pistol_airborne_dead.smd"
	activity "ACT_GLIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "dead_land" {
	"grunt_animations\combat_pistol_landing_dead.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "land_hard_pistol" {
	"grunt_animations\combat_pistol_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "land_soft_pistol" {
	"grunt_animations\combat_pistol_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "land_hard_missile" {
	"grunt_animations\combat_missile_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "land_soft_missile" {
	"grunt_animations\combat_missile_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "land_hard_missile_fc" {
	"grunt_animations\combat_missile_fc_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "land_soft_missile_fc" {
	"grunt_animations\combat_missile_fc_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "land_hard_unarmed" {
	"grunt_animations\combat_unarmed_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "land_soft_unarmed" {
	"grunt_animations\combat_unarmed_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "flee_land_hard" {
	"grunt_animations\flee_pistol_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "flee_land_soft" {
	"grunt_animations\flee_pistol_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}




$sequence "melee_smash_pistol_right" {
	"grunt_animations\combat_pistol_smash_right.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "melee_smash_pistol_left" {
	"grunt_animations\combat_pistol_smash_left.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "melee_smash_missile_right" {
	"grunt_animations\combat_missile_smash_right.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "melee_smash_missile_left" {
	"grunt_animations\combat_missile_smash_left.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "melee_smash_missile_fc_right" {
	"grunt_animations\combat_missile_fc_smash_right.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "melee_smash_missile_fc_left" {
	"grunt_animations\combat_missile_fc_smash_left.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "pistol_airborne" {
	"grunt_animations\combat_pistol_airborne.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "missile_airborne" {
	"grunt_animations\combat_missile_airborne.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "missile_fc_airborne" {
	"grunt_animations\combat_missile_fc_airborne.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "unarmed_airborne" {
	"grunt_animations\combat_unarmed_airborne.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "flee_airborne" {
	"grunt_animations\flee_pistol_airborne.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "patrol_unarmed_airborne" {
	"grunt_animations\patrol_unarmed_airborne.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "missile_turn_left_idle" {
	"grunt_animations\combat_missile_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 14 LXR LYR
}

$sequence "missile_turn_right_idle" {
	"grunt_animations\combat_missile_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "missile_fc_turn_left_idle" {
	"grunt_animations\combat_missile_fc_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 14 LXR LYR
}

$sequence "missile_fc_turn_right_idle" {
	"grunt_animations\combat_missile_fc_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "pistol_turn_left_idle" {
	"grunt_animations\combat_pistol_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "pistol_turn_right_idle" {
	"grunt_animations\combat_pistol_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "patrol_unarmed_turn_left_idle" {
	"grunt_animations\patrol_unarmed_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "patrol_unarmed_turn_right_idle" {
	"grunt_animations\patrol_unarmed_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "patrol_pistol_turn_left_idle" {
	"grunt_animations\patrol_pistol_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "patrol_pistol_turn_right_idle" {
	"grunt_animations\patrol_pistol_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "patrol_missile_turn_left_idle" {
	"grunt_animations\patrol_missile_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "patrol_missile_turn_right_idle" {
	"grunt_animations\patrol_missile_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 13 LXR LYR
}

$sequence "flee_turn_left" {
	"grunt_animations\flee_pistol_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 36 LXR LYR
}

$sequence "flee_turn_right" {
	"grunt_animations\flee_pistol_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 36 LXR LYR
}

$sequence "move_missile_1" {
	"combat_missile_move_S"
	"combat_missile_move_W"
	"combat_missile_move_N"
	"combat_missile_move_E"
	"combat_missile_move_S"
	activity "ACT_RUN_RIFLE" 1
	blend "move_yaw" -180 180
	addlayer	"aim_missile_move_up"
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_missile"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "move_missile_2" {
	"combat_missile_move_S"
	"combat_missile_move_W"
	"combat_missile_move_alt_N"
	"combat_missile_move_E"
	"combat_missile_move_S"
	activity "ACT_RUN_RIFLE" 1
	blend "move_yaw" -180 180
	addlayer	"aim_missile_move_up"
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_missile"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "move_missile_fc_1" {
	"combat_missile_fc_move_S"
	"combat_missile_fc_move_W"
	"combat_missile_fc_move_N"
	"combat_missile_fc_move_E"
	"combat_missile_fc_move_S"
	activity "ACT_RUN_RIFLE" 1
	blend "move_yaw" -180 180
	addlayer	"aim_missile_fc_move_up"
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_missile_fc"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "move_missile_fc_2" {
	"combat_missile_fc_move_S"
	"combat_missile_fc_move_W"
	"combat_missile_fc_move_alt_N"
	"combat_missile_fc_move_E"
	"combat_missile_fc_move_S"
	activity "ACT_RUN_RIFLE" 1
	blend "move_yaw" -180 180
	addlayer	"aim_missile_fc_move_up"
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_missile_fc"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "move_pistol_1" {
	"combat_pistol_move_S"
	"combat_pistol_move_W"
	"combat_pistol_move_N"
	"combat_pistol_move_E"
	"combat_pistol_move_S"
	activity "ACT_RUN_PISTOL" 1
	addlayer	"aim_pistol_move_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "move_pistol_2" {
	"combat_pistol_move_S"
	"combat_pistol_move_W"
	"combat_pistol_move_1_N"
	"combat_pistol_move_E"
	"combat_pistol_move_S"
	activity "ACT_RUN_PISTOL" 1
	addlayer	"aim_pistol_move_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "move_pistol_3" {
	"combat_pistol_move_S"
	"combat_pistol_move_W"
	"combat_pistol_move_2_N"
	"combat_pistol_move_E"
	"combat_pistol_move_S"
	activity "ACT_RUN_PISTOL" 1
	addlayer	"aim_pistol_move_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "move_pistol_4" {
	"combat_pistol_move_S"
	"combat_pistol_move_W"
	"combat_pistol_move_3_N"
	"combat_pistol_move_E"
	"combat_pistol_move_S"
	activity "ACT_RUN_PISTOL" 1
	addlayer	"aim_pistol_move_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "move_pistol_crouch" {
	"crouch_pistol_move_S"
	"crouch_pistol_move_W"
	"crouch_pistol_move_N"
	"crouch_pistol_move_E"
	"crouch_pistol_move_S"
	activity "ACT_RUN_CROUCH" 1
	addlayer	"aim_pistol_move_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol_crouch"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 145 LX LY
}

$sequence "on_fire_run" {
	"grunt_animations\flee_pistol_move_front.smd"
	activity "ACT_RUN_ON_FIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 65 LX LY
}

$sequence "idle_2_combat_missile_fc" {
	"combat_missile_fc_idle_2_combat_move_S"
	"combat_missile_fc_idle_2_combat_move_W"
	"combat_missile_fc_idle_2_combat_move_N"
	"combat_missile_fc_idle_2_combat_move_E"
	"combat_missile_fc_idle_2_combat_move_S"
	activity "ACT_READINESS_RELAXED_TO_STIMULATED" 1
	addlayer	"aim_missile_fc_still_down"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "combat_2_idle_missile_fc" {
	"combat_missile_fc_combat_2_idle_move_S"
	"combat_missile_fc_combat_2_idle_move_W"
	"combat_missile_fc_combat_2_idle_move_N"
	"combat_missile_fc_combat_2_idle_move_E"
	"combat_missile_fc_combat_2_idle_move_S"
	activity "ACT_READINESS_STIMULATED_TO_RELAXED" 1
	addlayer	"aim_missile_fc_still_down"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "idle_2_combat_missile" {
	"combat_missile_idle_2_combat_move_S"
	"combat_missile_idle_2_combat_move_W"
	"combat_missile_idle_2_combat_move_N"
	"combat_missile_idle_2_combat_move_E"
	"combat_missile_idle_2_combat_move_S"
	activity "ACT_READINESS_RELAXED_TO_STIMULATED" 1
	addlayer	"aim_missile_still_down"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "combat_2_idle_missile" {
	"combat_missile_combat_2_idle_move_S"
	"combat_missile_combat_2_idle_move_W"
	"combat_missile_combat_2_idle_move_N"
	"combat_missile_combat_2_idle_move_E"
	"combat_missile_combat_2_idle_move_S"
	activity "ACT_READINESS_STIMULATED_TO_RELAXED" 1
	addlayer	"aim_missile_still_down"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "idle_2_combat_pistol" {
	"combat_pistol_idle_2_combat_move_S"
	"combat_pistol_idle_2_combat_move_W"
	"combat_pistol_idle_2_combat_move_N"
	"combat_pistol_idle_2_combat_move_E"
	"combat_pistol_idle_2_combat_move_S"
	activity "ACT_READINESS_RELAXED_TO_STIMULATED" 1
	addlayer	"aim_pistol_still_down"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "combat_2_idle_pistol" {
	"combat_pistol_combat_2_idle_move_S"
	"combat_pistol_combat_2_idle_move_W"
	"combat_pistol_combat_2_idle_move_N"
	"combat_pistol_combat_2_idle_move_E"
	"combat_pistol_combat_2_idle_move_S"
	activity "ACT_READINESS_STIMULATED_TO_RELAXED" 1
	addlayer	"aim_pistol_still_down"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "idle_2_crouch_pistol" {
	"crouch_pistol_idle_2_crouch_move_S"
	"crouch_pistol_idle_2_crouch_move_W"
	"crouch_pistol_idle_2_crouch_move_N"
	"crouch_pistol_idle_2_crouch_move_E"
	"crouch_pistol_idle_2_crouch_move_S"
	activity "ACT_READINESS_RELAXED_TO_STIMULATED" 1
	addlayer	"aim_pistol_still_down"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "crouch_2_idle_pistol" {
	"crouch_pistol_crouch_2_idle_move_S"
	"crouch_pistol_crouch_2_idle_move_W"
	"crouch_pistol_crouch_2_idle_move_N"
	"crouch_pistol_crouch_2_idle_move_E"
	"crouch_pistol_crouch_2_idle_move_S"
	activity "ACT_READINESS_STIMULATED_TO_RELAXED" 1
	addlayer	"aim_pistol_still_down"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}
$origin 	-35 85 0 -90
$sequence "Climb_Stand" {
	"grunt_animations\hoist_stand_any_any_enter.smd"
	activity "ACT_ZOMBIE_CLIMB_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 55 LX LY LZ
}
$origin 	-35 45 0 -90
$sequence "Climb_Crouch" {
	"grunt_animations\hoist_crouch_any_any_enter.smd"
	activity "ACT_ZOMBIE_CLIMB_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 55 LX LY LZ
}
$origin 	-45 25 0 -90
$sequence "Vault_Pistol" {
	"grunt_animations\vault_pistol_enter.smd"
	activity "ACT_ZOMBIE_CLIMB_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 55 LX LY LZ
}
$origin 	-95 25 0 -90
$sequence "Vault_Missile" {
	"grunt_animations\vault_missile_enter.smd"
	activity "ACT_ZOMBIE_CLIMB_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 55 LX LY LZ
}
$origin 	0 0 0 -90
$sequence "dive_front" {
	"grunt_animations\combat_pistol_dive_front.smd"
	activity "ACT_HOP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 40 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 44 "HALO3_Grunt.Step" }
	walkframe 46 LX LY
}

$sequence "dive_right" {
	"grunt_animations\combat_pistol_dive_right.smd"
	activity "ACT_ROLL_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 40 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 44 "HALO3_Grunt.Step" }
	walkframe 46 LX LY
}

$sequence "dive_left" {
	"grunt_animations\combat_pistol_dive_left.smd"
	activity "ACT_ROLL_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 46 LX LY
}

$sequence "evade_right" {
	"grunt_animations\combat_pistol_evade_right.smd"
	activity "ACT_STRAFE_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 14 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 28 LX LY
}

$sequence "evade_left" {
	"grunt_animations\combat_pistol_evade_left.smd"
	activity "ACT_STRAFE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 14 "HALO3_Grunt.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_Grunt.Step" }
	walkframe 28 LX LY
}

$sequence "phantom_passenger_main_idle_1" {
	"grunt_animations\phantom_p_main_any_idle_var1.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_main_idle_2" {
	"grunt_animations\phantom_p_main_any_idle_var2.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_main_idle_3" {
	"grunt_animations\phantom_p_main_any_idle_var3.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_main_exit" {
	"grunt_animations\phantom_p_main_any_exit.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 29 LX LY LZ
}

$sequence "phantom_passenger_idle_1" {
	"grunt_animations\phantom_p_ml_b_small1_any_idle_var1.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_exit_1" {
	"grunt_animations\phantom_p_ml_b_small1_any_exit.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 29 LX LY LZ
}

$sequence "phantom_passenger_idle_2" {
	"grunt_animations\phantom_p_ml_b_small2_any_idle_var1.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_exit_2" {
	"grunt_animations\phantom_p_ml_b_small2_any_exit.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 29 LX LY LZ
}

$sequence "phantom_passenger_idle_3" {
	"grunt_animations\phantom_p_ml_b_small3_any_idle_var1.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_exit_3" {
	"grunt_animations\phantom_p_ml_b_small3_any_exit.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 29 LX LY LZ
}

$sequence "phantom_passenger_idle_4_A" {
	"grunt_animations\phantom_p_small1_any_idle_var1.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_idle_4_B" {
	"grunt_animations\phantom_p_small1_any_idle_var2.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_idle_4_C" {
	"grunt_animations\phantom_p_small1_any_idle_var3.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_exit_4" {
	"grunt_animations\phantom_p_small1_any_exit.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 29 LX LY LZ
}

$sequence "phantom_passenger_idle_5_A" {
	"grunt_animations\phantom_p_small2_any_idle_var1.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_idle_5_B" {
	"grunt_animations\phantom_p_small2_any_idle_var2.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}


$sequence "phantom_passenger_idle_5_C" {
	"grunt_animations\phantom_p_small2_any_idle_var3.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}


$sequence "phantom_passenger_exit_5" {
	"grunt_animations\phantom_p_small2_any_exit.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 29 LX LY LZ
}

$sequence "phantom_passenger_idle_6_A" {
	"grunt_animations\phantom_p_small3_any_idle_var1.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_idle_6_B" {
	"grunt_animations\phantom_p_small3_any_idle_var2.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_idle_6_C" {
	"grunt_animations\phantom_p_small3_any_idle_var3.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "phantom_passenger_exit_6" {
	"grunt_animations\phantom_p_small3_any_exit.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 29 LX LY LZ
}

$sequence "kamikaze_start" {
	"grunt_animations\any_any_go_kamikaze.smd"
	activity "ACT_STARTDYING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attack_fuel_rod" {
	"fire_fuel_rod"
	activity "ACT_RANGE_ATTACK_RPG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "attack_turret" {
	"fire_turret"
	activity "ACT_RANGE_ATTACK_RPG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "attack_needler" {
	"fire_needler"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "attack_plasma_pistol" {
	"fire_plasma_pistol"
	activity "ACT_RANGE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "attack_plasma_rifle" {
	"fire_plasma_rifle"
	activity "ACT_RANGE_ATTACK1_LOW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}
$origin 	0 7 23 -90
$sequence "ghost_enter" {
	"grunt_animations\ghost_d_enter.smd"
	activity "ACT_BUSY_SIT_GROUND_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 44 LX LY
}
$origin 	0 7 0 -90
$sequence "ghost_idle" {
	"grunt_animations\ghost_d_unarmed_idle_var0.smd"
	activity "ACT_BUSY_SIT_GROUND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
$origin 	0 7 0 -90
$sequence "ghost_exit" {
	"grunt_animations\ghost_d_exit.smd"
	activity "ACT_BUSY_SIT_GROUND_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 44 LX LY
}
$origin 	-25 75 -35 -90
$sequence "shade_turret_enter" {
	"grunt_animations\shade_d_any_enter.smd"
	activity "ACT_RIDE_MANNED_GUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 44 LX LY LZ
}
$origin 	0 36 0 -90
$sequence "shade_turret_idle_1" {
	"grunt_animations\shade_d_any_idle_var1.smd"
	activity "ACT_IDLE_MANNEDGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "shade_turret_idle_2" {
	"grunt_animations\shade_d_any_idle_var2.smd"
	activity "ACT_IDLE_MANNEDGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "shade_turret_idle_3" {
	"grunt_animations\shade_d_any_idle_var3.smd"
	activity "ACT_IDLE_MANNEDGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "shade_turret_exit" {
	"grunt_animations\shade_d_any_exit.smd"
	activity "ACT_RIDE_MANNED_GUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 44 LX LY LZ
}
$origin 	0 24 0 -90
$sequence "plasma_turret_enter" {
	"grunt_animations\turret_g_enter.smd"
	activity "ACT_VM_SPRINT_ENTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 44 LX LY LZ
}

$sequence "plasma_turret_idle" {
	"grunt_animations\turret_g_any_idle.smd"
	activity "ACT_IDLE_MANNEDGUN" 1
	addlayer	"aim_turret_up"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "plasma_turret_exit" {
	"grunt_animations\turret_g_exit.smd"
	activity "ACT_VM_SPRINT_LEAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 44 LX LY LZ
}

$sequence "plasma_turret_fire" {
	"fire_turret"
	activity "ACT_GESTURE_RANGE_ATTACK_HMG1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$upaxis -z
$origin 	0 0 0 -90
$sequence "ragdoll" {
	"grunt_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

$collisionjoints "grunt_h3_physics.smd"
{
	$mass 90.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "bip01 b_pelvis"

	$jointconstrain "spine1" x limit 0.00 0.00 0.00
	$jointconstrain "spine1" y limit 0.00 0.00 0.00
	$jointconstrain "spine1" z limit 0.00 0.00 0.00

	$jointconstrain "r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "r_upperarm" y limit -20.00 20.00 0.00
	$jointconstrain "r_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "l_upperarm" y limit -20.00 20.00 0.00
	$jointconstrain "l_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "l_forearm" x limit -12.00 12.00 0.00
	$jointconstrain "l_forearm" y limit -12.00 12.00 0.00
	$jointconstrain "l_forearm" z limit -55.00 28.00 0.00

	$jointconstrain "head" x limit -30.00 30.00 0.00
	$jointconstrain "head" y limit -25.00 25.00 0.00
	$jointconstrain "head" z limit -15.00 35.00 0.00

	$jointconstrain "r_forearm" x limit -12.00 12.00 0.00
	$jointconstrain "r_forearm" y limit -12.00 12.00 0.00
	$jointconstrain "r_forearm" z limit -55.00 28.00 0.00

	$jointrotdamping "r_thigh" 0.00
	$jointconstrain "r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "r_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "r_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "l_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "l_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "l_calf" y limit 0.00 40.00 0.00
	$jointconstrain "l_calf" z limit -35.00 15.00 0.00

	$jointconstrain "r_calf" x limit 0.00 0.00 0.00
	$jointconstrain "r_calf" y limit -40.00 0.00 0.00
	$jointconstrain "r_calf" z limit -35.00 15.00 0.00

}

$collisiontext
{
	animatedfriction 
	{
		"animfrictionmin"		"1.000000"
		"animfrictionmax"		"400.000000"
		"animfrictiontimein"		"0.500000"
		"animfrictiontimeout"		"0.300000"
		"animfrictiontimehold"		"0.000000"
	}
	editparams 
	{
		"rootname"		"b_pelvis"
		"totalmass"		"90.000000"
//		"jointmerge"		"b_pelvis,b_spine2"
//		"jointmerge"		"b_pelvis,b_spine1"
	}
}
$upaxis -y
$scale	1

// .qc block generated by HLMV begins.

$surfaceprop "flesh"
$jointsurfaceprop "root"	 "flesh"


$hboxset "default"

$hbox 3 "pelvis"	    -5.92   -3.18   -4.72     1.78    2.68    4.72
$hbox 6 "l_thigh"	     0.00   -4.20   -2.97    11.37    1.53    1.68
$hbox 6 "l_calf"	    -2.30   -5.15   -4.62     9.56    1.89    3.48
$hbox 6 "l_foot"	    -4.93   -7.26   -2.31     3.79    5.22    4.68
$hbox 7 "r_thigh"	     0.00   -4.20   -1.68    11.37    1.53    2.97
$hbox 7 "r_calf"	    -2.30   -5.15   -3.47     9.56    1.89    4.62
$hbox 7 "r_foot"	    -4.93   -7.26   -4.68     3.79    5.22    2.31
$hbox 3 "spine"	    -9.60   -6.43  -10.99    11.26    5.12   10.99
$hbox 2 "spine1"	    -0.74  -15.08   -7.97    15.09   10.54    7.97
$hbox 4 "l_clavicle"	     0.00   -1.12   -2.18    11.63    0.00    0.00
$hbox 4 "l_upperarm"	     0.00   -5.22   -6.53    10.09    0.36    0.00
$hbox 4 "l_forearm"	    -3.46   -5.35   -7.83    23.15    4.89    0.82
$hbox 1 "head"	    -5.79   -3.32   -6.66     5.51   12.49    6.65
$hbox 5 "r_clavicle"	     0.00   -1.12   -0.00    11.63    0.00    2.18
$hbox 5 "r_upperarm"	     0.00   -5.22   -0.00    10.09    0.36    6.53
$hbox 5 "r_forearm"	    -3.46   -5.35   -0.82    23.15    4.89    7.83
// .qc block generated by HLMV ends.

