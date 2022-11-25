// Created by Crowbar 0.68

$modelname "halo_3/characters/covenant/hunter.mdl"
$scale	1.065
$BodyGroup "Main"
{
	studio "hunter_base.smd"
}
$BodyGroup "Arms"
{
	studio "limbs_base.smd"
}
$BodyGroup "Back"
{
	studio "torso_base.smd"
	studio "torso_destroy.smd"
}


$origin 	0 0 0 -90
$surfaceprop "flesh"

$cdmaterials "\models\halo_3\characters\covenant\hunter\"
$texturegroup "skinfamilies"
{
	{ "hunter" }
	{ "hunter_minor" }
	{ "hunter_major" }
}


//$upaxis -y

//$ikchain r_foot r_calf knee  0.707 0.707 0.000
//$ikchain l_foot l_calf knee  0.707 0.707 0.000
$ikchain l_foot "l_foot" Z 0 height 36
$ikchain r_foot "r_foot" Z 0 height 36

$poseparameter "move_yaw" -180 180 loop 360
$PoseParameter "aim_yaw" -45 45 0
$PoseParameter "aim_pitch" -90 90 0
$attachment "eyes" "headextend" 5.00 4.00 0.00 rotate 0 90 90
$attachment "back" "spine1" 5.00 4.00 0.00 rotate 0 90 90
$attachment "fuel_rod" "r_hand" 23.43 -1.50 -0.50 rotate -0 -0 -0
$attachment "fuel_rod_projectile" "r_hand" 23.43 -1.50 -0.50 rotate -0 -0 -0
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
"headextend" 0.7
"pelvis" 0

}


$animation "any_idle" "hunter_animations\any_any_idle_var0.smd" {
	fps 30
}

$animation "any_crouch_idle" "hunter_animations\crouch_any_idle.smd" {
	fps 30
}
//AIM ANY STILL UP

$animation "aim_any_still_up_neutral" "hunter_animations\any_any_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_any_still_up_down_left" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_any_still_up_neutral" 0
}

$animation "aim_any_still_up_down_center" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_any_still_up_neutral" 0
}

$animation "aim_any_still_up_down_right" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_any_still_up_neutral" 0
}

$animation "aim_any_still_up_mid_left" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_any_still_up_neutral" 0
}

$animation "aim_any_still_up_mid_center" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_any_still_up_neutral" 0
}

$animation "aim_any_still_up_mid_right" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_any_still_up_neutral" 0
}

$animation "aim_any_still_up_up_left" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_any_still_up_neutral" 0
}

$animation "aim_any_still_up_up_center" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_any_still_up_neutral" 0
}

$animation "aim_any_still_up_up_right" "hunter_animations\any_any_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_any_still_up_neutral" 0
}

//AIM ANY MOVE UP

$animation "aim_any_move_up_neutral" "hunter_animations\any_any_aim_move_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_any_move_up_down_left" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_any_move_up_neutral" 0
}

$animation "aim_any_move_up_down_center" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_any_move_up_neutral" 0
}

$animation "aim_any_move_up_down_right" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_any_move_up_neutral" 0
}

$animation "aim_any_move_up_mid_left" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_any_move_up_neutral" 0
}

$animation "aim_any_move_up_mid_center" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_any_move_up_neutral" 0
}

$animation "aim_any_move_up_mid_right" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_any_move_up_neutral" 0
}

$animation "aim_any_move_up_up_left" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_any_move_up_neutral" 0
}

$animation "aim_any_move_up_up_center" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_any_move_up_neutral" 0
}

$animation "aim_any_move_up_up_right" "hunter_animations\any_any_aim_move_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_any_move_up_neutral" 0
}

//AIM ANY CROUCH STILL DOWN

$animation "aim_any_crouch_still_up_neutral" "hunter_animations\crouch_any_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_any_crouch_still_up_down_left" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_any_crouch_still_up_neutral" 0
}

$animation "aim_any_crouch_still_up_down_center" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_any_crouch_still_up_neutral" 0
}

$animation "aim_any_crouch_still_up_down_right" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_any_crouch_still_up_neutral" 0
}

$animation "aim_any_crouch_still_up_mid_left" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_any_crouch_still_up_neutral" 0
}

$animation "aim_any_crouch_still_up_mid_center" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_any_crouch_still_up_neutral" 0
}

$animation "aim_any_crouch_still_up_mid_right" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_any_crouch_still_up_neutral" 0
}

$animation "aim_any_crouch_still_up_up_left" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_any_crouch_still_up_neutral" 0
}

$animation "aim_any_crouch_still_up_up_center" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_any_crouch_still_up_neutral" 0
}

$animation "aim_any_crouch_still_up_up_right" "hunter_animations\crouch_any_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_any_crouch_still_up_neutral" 0
}

//AIM PATROL ANY MOVE UP

$animation "aim_patrol_any_move_up_neutral" "hunter_animations\patrol_any_aim_move_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_any_move_up_down_left" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_any_move_up_neutral" 0
}

$animation "aim_patrol_any_move_up_down_center" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_any_move_up_neutral" 0
}

$animation "aim_patrol_any_move_up_down_right" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_any_move_up_neutral" 0
}

$animation "aim_patrol_any_move_up_mid_left" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_any_move_up_neutral" 0
}

$animation "aim_patrol_any_move_up_mid_center" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_any_move_up_neutral" 0
}

$animation "aim_patrol_any_move_up_mid_right" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_any_move_up_neutral" 0
}

$animation "aim_patrol_any_move_up_up_left" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_any_move_up_neutral" 0
}

$animation "aim_patrol_any_move_up_up_center" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_any_move_up_neutral" 0
}

$animation "aim_patrol_any_move_up_up_right" "hunter_animations\patrol_any_aim_move_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_any_move_up_neutral" 0
}

//AIM PATROL ANY STILL UP

$animation "aim_patrol_any_still_up_neutral" "hunter_animations\patrol_any_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_patrol_any_still_up_down_left" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_patrol_any_still_up_neutral" 0
}

$animation "aim_patrol_any_still_up_down_center" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_patrol_any_still_up_neutral" 0
}

$animation "aim_patrol_any_still_up_down_right" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_patrol_any_still_up_neutral" 0
}

$animation "aim_patrol_any_still_up_mid_left" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_patrol_any_still_up_neutral" 0
}

$animation "aim_patrol_any_still_up_mid_center" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_patrol_any_still_up_neutral" 0
}

$animation "aim_patrol_any_still_up_mid_right" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_patrol_any_still_up_neutral" 0
}

$animation "aim_patrol_any_still_up_up_left" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_patrol_any_still_up_neutral" 0
}

$animation "aim_patrol_any_still_up_up_center" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_patrol_any_still_up_neutral" 0
}

$animation "aim_patrol_any_still_up_up_right" "hunter_animations\patrol_any_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_patrol_any_still_up_neutral" 0
}

//REFERENCE

$animation "ref" "hunter_animations\REFERENCE.smd" {
	fps 30
}


//IDLE 2 COMBAT ANIMATIONS

$animation "any_any_idle_2_combat_move_S" "hunter_animations\any_any_idle_2_combat_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_any_idle_2_combat_move_W" "hunter_animations\any_any_idle_2_combat_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_any_idle_2_combat_move_E" "hunter_animations\any_any_idle_2_combat_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_any_idle_2_combat_move_N" "hunter_animations\any_any_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_any_move_combat_2_idle_move_S" "hunter_animations\any_any_move_back_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_any_move_combat_2_idle_move_W" "hunter_animations\any_any_move_left_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_any_move_combat_2_idle_move_E" "hunter_animations\any_any_move_right_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_any_move_combat_2_idle_move_N" "hunter_animations\any_any_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_any_idle_2_combat_move_S" "hunter_animations\crouch_any_any_move_back_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_any_idle_2_combat_move_W" "hunter_animations\crouch_any_any_move_left_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_any_idle_2_combat_move_E" "hunter_animations\crouch_any_any_move_right_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_any_idle_2_combat_move_N" "hunter_animations\crouch_any_any_move_front_2_combat_idle.smd" {
	fps 30
	walkframe 140 LX LY
}


//MOVE ANIMATIONS

$animation "any_move_S" "hunter_animations\any_any_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_W" "hunter_animations\any_any_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_E" "hunter_animations\any_any_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_N" "hunter_animations\any_any_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_walk_S" "hunter_animations\any_any_walk_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_walk_W" "hunter_animations\any_any_walk_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_walk_E" "hunter_animations\any_any_walk_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_walk_N" "hunter_animations\any_any_walk_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_any_move_S" "hunter_animations\crouch_any_move_back.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_any_move_W" "hunter_animations\crouch_any_move_left.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_any_move_E" "hunter_animations\crouch_any_move_right.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "crouch_any_move_N" "hunter_animations\crouch_any_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "patrol_move_N" "hunter_animations\patrol_any_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "flinch_left_arm" "hunter_animations\h_ping_front_l_arm_var1.smd" {
	fps 30
}
$animation "flinch_left_leg" "hunter_animations\h_ping_left_gut.smd" {
	fps 30
}
$animation "flinch_right_leg" "hunter_animations\h_ping_right_gut.smd" {
	fps 30
}
$animation "flinch_gut" "hunter_animations\h_ping_front_gut.smd" {
	fps 30
}
$animation "flinch_head" "hunter_animations\h_ping_front_head.smd" {
	fps 30
}

$animation "ping_left_arm_pose" "hunter_animations\s_ping_front_l_arm.smd" {
	fps 30
	frame 14 14
	loop
}
$animation "ping_left_arm" "hunter_animations\s_ping_front_l_arm.smd" {
	fps 30
	subtract	"ping_left_arm_pose"	0
}
$animation "ping_gut_pose" "hunter_animations\s_ping_front_gut.smd" {
	fps 30
	frame 16 16
	loop
}
$animation "ping_right_gut_pose" "hunter_animations\s_ping_right_gut.smd" {
	fps 30
	frame 16 16
	loop
}
$animation "ping_gut" "hunter_animations\s_ping_front_gut.smd" {
	fps 30
	subtract	"ping_gut_pose"	0
}
$animation "ping_right_gut" "hunter_animations\s_ping_right_gut.smd" {
	fps 30
	subtract	"ping_right_gut_pose"	0
}
$animation "ping_head_pose" "hunter_animations\s_ping_front_head_var0.smd" {
	fps 30
	frame 15 15
	loop
}
$animation "ping_head" "hunter_animations\s_ping_front_head_var0.smd" {
	fps 30
	subtract	"ping_head_pose"	0
}



$animation "fire_cannon_pose" "hunter_animations\any_any_hfr_fire_1.smd" {
	fps 30
	loop
	frame 21 21
}


$animation "fire_cannon" "hunter_animations\any_any_hfr_fire_1.smd" {
	fps 30
	subtract	"fire_cannon_pose"	0
}


$sequence "aim_any_still_up" {
	"aim_any_still_up_up_right" "aim_any_still_up_up_center"  "aim_any_still_up_up_left"
	"aim_any_still_up_mid_right" "aim_any_still_up_mid_center"  "aim_any_still_up_mid_left"
	"aim_any_still_up_down_right" "aim_any_still_up_down_center" "aim_any_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_any_move_up" {
	"aim_any_move_up_up_right" "aim_any_move_up_up_center"  "aim_any_move_up_up_left"
	"aim_any_move_up_mid_right" "aim_any_move_up_mid_center"  "aim_any_move_up_mid_left"
	"aim_any_move_up_down_right" "aim_any_move_up_down_center" "aim_any_move_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_any_crouch_still_up" {
	"aim_any_crouch_still_up_up_right" "aim_any_crouch_still_up_up_center"  "aim_any_crouch_still_up_up_left"
	"aim_any_crouch_still_up_mid_right" "aim_any_crouch_still_up_mid_center"  "aim_any_crouch_still_up_mid_left"
	"aim_any_crouch_still_up_down_right" "aim_any_crouch_still_up_down_center" "aim_any_crouch_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}
		

$sequence "aim_patrol_any_move_up" {
	"aim_patrol_any_move_up_up_right" "aim_patrol_any_move_up_up_center"  "aim_patrol_any_move_up_up_left"
	"aim_patrol_any_move_up_mid_right" "aim_patrol_any_move_up_mid_center"  "aim_patrol_any_move_up_mid_left"
	"aim_patrol_any_move_up_down_right" "aim_patrol_any_move_up_down_center" "aim_patrol_any_move_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aim_patrol_any_still_up" {
	"aim_patrol_any_still_up_up_right" "aim_patrol_any_still_up_up_center"  "aim_patrol_any_still_up_up_left"
	"aim_patrol_any_still_up_mid_right" "aim_patrol_any_still_up_mid_center"  "aim_patrol_any_still_up_mid_left"
	"aim_patrol_any_still_up_down_right" "aim_patrol_any_still_up_down_center" "aim_patrol_any_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "combat_idle" {
	"hunter_animations\any_any_idle_var0.smd"
	activity "ACT_IDLE_AGITATED" 1
	addlayer	"aim_any_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$sequence "unarmed_idle" {
	"hunter_animations\stunned_unarmed_idle.smd"
	activity "ACT_IDLE" 1
	addlayer	"aim_any_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "crouch_idle" {
	"hunter_animations\crouch_any_idle.smd"
	activity "ACT_CROUCHIDLE" 1
	addlayer	"aim_any_crouch_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$sequence "patrol_idle" {
	"hunter_animations\patrol_any_idle_var0.smd"
	activity "ACT_IDLE_STIMULATED" 1
	addlayer	"aim_any_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "surprised_crouch" {
	"hunter_animations\crouch_any_surprise_front.smd"
	activity "ACT_SIGNAL_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 45 LX LY
}

$sequence "surprised" {
	"hunter_animations\any_any_surprise_front.smd"
	activity "ACT_SIGNAL_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 45 LX LY
}

$sequence "surprised_patrol" {
	"hunter_animations\patrol_any_surprise_front.smd"
	activity "ACT_SIGNAL_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 45 LX LY
}

$sequence "warn" {
	"hunter_animations\any_any_morph.smd"
	activity "ACT_SIGNAL_HALT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "point" {
	"hunter_animations\any_any_shakefist.smd"
	activity "ACT_GMOD_GESTURE_POINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence "die_front_gut" {
	"hunter_animations\h_kill_front_gut.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_back_gut" {
	"hunter_animations\h_kill_back_gut.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_front_head" {
	"hunter_animations\h_kill_front_head.smd"
	activity "ACT_DIE_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 60 LX LY
}

$sequence "die_right_gut" {
	"hunter_animations\h_kill_right_gut.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 41 LX LY
}

$sequence "die_left_gut" {
	"hunter_animations\h_kill_left_gut.smd"
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
	"ping_gut"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 165 LX LY
}

$sequence "pinged_back_gut" {
	"ping_gut"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 41 LX LY
}

$sequence "pinged_front_chest" {
	"ping_gut"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 22 LX LY
}

$sequence "pinged_front_gut" {
	"ping_gut"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
	walkframe 19 LX LY
}

$sequence "pinged_front_right_arm" {
	"ping_right_gut"
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

$sequence "dead_airborne" {
	"hunter_animations\any_any_airborne_dead.smd"
	activity "ACT_GLIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "dead_land" {
	"hunter_animations\any_any_landing_dead.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 55 LX LY
}

$sequence "land_hard_patrol" {
	"hunter_animations\patrol_any_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "land_soft_patrol" {
	"hunter_animations\patrol_any_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "land_hard_any" {
	"hunter_animations\any_any_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "land_soft_any" {
	"hunter_animations\any_any_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}


$sequence "melee_smash_any_right" {
	"hunter_animations\any_any_smash_right.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "melee_smash_any_left" {
	"hunter_animations\any_any_smash_left.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "melee_smash_crouch_right" {
	"hunter_animations\crouch_any_smash_left.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "melee_smash_crouch_left" {
	"hunter_animations\crouch_any_smash_left.smd"
	activity "ACT_MELEE_ATTACK_SWING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "brace" {
	"hunter_animations\any_any_brace.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "melee_1" {
	"hunter_animations\any_any_melee_var1.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 27 "event_halo_3_hunter_melee" }
}

$sequence "melee_2" {
	"hunter_animations\any_any_melee_var2.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 31 "event_halo_3_hunter_melee" }
}

$sequence "melee_3" {
	"hunter_animations\any_any_melee_var3.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 12 "event_halo_3_hunter_melee" }
	{ event 1100 31 "event_halo_3_hunter_melee" }
}

$sequence "melee_4" {
	"hunter_animations\any_any_melee_tackle.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 27 "event_halo_3_hunter_melee" }
	{ event 1100 49 "event_halo_3_hunter_melee" }
}

$sequence "melee_left" {
	"hunter_animations\any_any_melee_left.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 22 "event_halo_3_hunter_melee" }
}

$sequence "melee_right" {
	"hunter_animations\any_any_melee_right.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 23 "event_halo_3_hunter_melee" }
}

$sequence "melee_back" {
	"hunter_animations\any_any_melee_back.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 100 LX LY LZR
	{ event 1100 34 "event_halo_3_hunter_melee" }
}


$sequence "any_airborne" {
	"hunter_animations\any_any_airborne.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}


$sequence "patrol_any_airborne" {
	"hunter_animations\patrol_any_airborne.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "any_turn_left_idle" {
	"hunter_animations\any_any_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LXR LYR LZR
}

$sequence "any_turn_right_idle" {
	"hunter_animations\any_any_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LXR LYR LZR
}

$sequence "crouch_any_turn_left_idle" {
	"hunter_animations\crouch_any_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LXR LYR LZR
}

$sequence "crouch_any_turn_right_idle" {
	"hunter_animations\crouch_any_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LXR LYR LZR
}

$sequence "patrol_any_turn_left_idle" {
	"hunter_animations\patrol_any_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LXR LYR LZR
}

$sequence "patrol_any_turn_right_idle" {
	"hunter_animations\patrol_any_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LXR LYR LZR
}

$sequence "stunned_unarmed_turn_left_idle" {
	"hunter_animations\stunned_unarmed_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LXR LYR LZR
}

$sequence "stunned_unarmed_turn_right_idle" {
	"hunter_animations\stunned_unarmed_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LXR LYR LZR
}

$sequence "move_any" {
	"any_move_S"
	"any_move_W"
	"any_move_N"
	"any_move_E"
	"any_move_S"
	activity "ACT_RUN_RIFLE" 1
	blend "move_yaw" -180 180
	addlayer	"aim_any_move_up"
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_hunter.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_hunter.Step" }
	walkframe 145 LX LY
}

$sequence "crouch_any_move" {
	"crouch_any_move_S"
	"crouch_any_move_W"
	"crouch_any_move_N"
	"crouch_any_move_E"
	"crouch_any_move_S"
	activity "ACT_RUN_CROUCH" 1
	addlayer	"aim_any_move_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_hunter.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_hunter.Step" }
	walkframe 145 LX LY
}

$sequence "move_any_patrol" {
	"any_move_S"
	"any_move_W"
	"patrol_move_N"
	"any_move_E"
	"any_move_S"
	activity "ACT_RUN_RIFLE_RELAXED" 1
	addlayer	"aim_any_move_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol_crouch"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 8 "HALO3_hunter.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_hunter.Step" }
	walkframe 145 LX LY
}

$sequence "idle_2_any" {
	"any_any_idle_2_combat_move_S"
	"any_any_idle_2_combat_move_W"
	"any_any_idle_2_combat_move_N"
	"any_any_idle_2_combat_move_E"
	"any_any_idle_2_combat_move_S"
	activity "ACT_READINESS_RELAXED_TO_STIMULATED" 1
	addlayer	"aim_any_move_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "combat_2_idle" {
	"any_any_move_combat_2_idle_move_S"
	"any_any_move_combat_2_idle_move_W"
	"any_any_move_combat_2_idle_move_N"
	"any_any_move_combat_2_idle_move_E"
	"any_any_move_combat_2_idle_move_S"
	activity "ACT_READINESS_STIMULATED_TO_RELAXED" 1
	addlayer	"aim_any_still_up"
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 145 LX LY
}

$sequence "Climb_Stand" {
	"hunter_animations\hoist_unarmed_enter.smd"
	activity "ACT_ZOMBIE_CLIMB_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 55 LX LY LZ
}

$sequence "dive_front" {
	"hunter_animations\any_any_dive_front.smd"
	activity "ACT_HOP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 20 "HALO3_hunter.Step" }
	{ event AE_CL_PLAYSOUND 24 "HALO3_hunter.Step" }
	walkframe 46 LX LY
}

$sequence "dive_right" {
	"hunter_animations\any_any_dive_right.smd"
	activity "ACT_ROLL_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 20 "HALO3_hunter.Step" }
	{ event AE_CL_PLAYSOUND 24 "HALO3_hunter.Step" }
	walkframe 46 LX LY
}

$sequence "dive_left" {
	"hunter_animations\any_any_dive_left.smd"
	activity "ACT_ROLL_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 46 LX LY
}

$sequence "evade_right" {
	"hunter_animations\any_any_evade_right.smd"
	activity "ACT_STRAFE_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 14 "HALO3_hunter.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_hunter.Step" }
	walkframe 28 LX LY
}

$sequence "evade_left" {
	"hunter_animations\any_any_evade_left.smd"
	activity "ACT_STRAFE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event AE_CL_PLAYSOUND 14 "HALO3_hunter.Step" }
	{ event AE_CL_PLAYSOUND 16 "HALO3_hunter.Step" }
	walkframe 28 LX LY
}

$sequence "phantom_passenger_exit_5" {
	"hunter_animations\phantom_pc_any_any_exit.smd"
	activity "ACT_BUSY_SIT_CHAIR_EXIT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 29 LX LY LZ
}

$sequence "phantom_passenger_idle" {
	"hunter_animations\phantom_pc_any_any_idle.smd"
	activity "ACT_BUSY_SIT_CHAIR_ENTRY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 44 LX LY LZ
}

$sequence "attack_fuel_rod" {
	"fire_cannon"
	activity "ACT_RANGE_ATTACK_RPG" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$origin 	0 0 0 -90

$sequence "ragdoll" {
	"hunter_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

$collisionjoints "hunter_h3_physics.smd"
{
	$mass 2000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "bip01 b_pelvis"

	$jointconstrain "spine1" x limit -48.00 48.00 0.00
	$jointconstrain "spine1" y limit -25.00 25.00 0.00
	$jointconstrain "spine1" z limit -25.00 50.00 0.00

	$jointconstrain "l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "l_upperarm" y limit -20.00 20.00 0.00
	$jointconstrain "l_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "l_forearm" x limit -20.00 20.00 0.00
	$jointconstrain "l_forearm" y limit -5.00 5.00 0.00
	$jointconstrain "l_forearm" z limit -90.00 -12.00 0.00

	$jointconstrain "r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "r_upperarm" y limit -20.00 20.00 0.00
	$jointconstrain "r_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "headextend" x limit -30.00 30.00 0.00
	$jointconstrain "headextend" y limit -25.00 25.00 0.00
	$jointconstrain "headextend" z limit -15.00 35.00 0.00

	$jointrotdamping "r_thigh" 0.00
	$jointconstrain "r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "r_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "r_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "r_calf" x limit -5.00 5.00 0.00
	$jointconstrain "r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "r_calf" z limit -70.00 0.00 0.00

	$jointconstrain "r_forearm" x limit -20.00 20.00 0.00
	$jointconstrain "r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "r_forearm" z limit -90.00 0.00 0.00

	$jointconstrain "l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "l_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "l_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "l_calf" y limit 0.00 65.00 0.00
	$jointconstrain "l_calf" z limit -70.00 0.00 0.00

	$jointconstrain "l_foot" x limit 0.00 0.00 0.00
	$jointconstrain "l_foot" y limit -19.00 19.00 0.00
	$jointconstrain "l_foot" z limit -15.00 35.00 0.00

	$jointconstrain "r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "r_foot" y limit -25.00 6.00 0.00
	$jointconstrain "r_foot" z limit -15.00 35.00 0.00
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
		"rootname"		"pelvis"
		"totalmass"		"90.000000"
		"jointmerge"		"pelvis,spine1"
		"jointmerge"		"pelvis,spine"
	}
}

$scale	0.9
// .qc block generated by HLMV begins.
$surfaceprop "gunship"
$jointsurfaceprop "spine" "flesh"
$jointsurfaceprop "spine1" "gunship"
$jointsurfaceprop "neck" "flesh"
$jointsurfaceprop "headextend" "gunship"

$hboxset "default"

$hbox 3 "pelvis"	   -13.05   -6.15   -9.31     7.05   10.10    9.30
$hbox 6 "l_thigh"	    -4.87   -8.47   -7.18    28.80   10.30    7.22
$hbox 6 "l_calf"	    -1.25  -13.95   -8.20    34.82   13.31    5.98
$hbox 6 "l_foot"	    -3.49  -13.70   -5.48    14.94   11.25    7.05
$hbox 6 "l_toe"	    -6.72   -2.90   -8.23    14.00   16.88    6.85
$hbox 7 "r_thigh"	    -0.85   -8.47   -6.68    29.30   10.30    7.47
$hbox 7 "r_calf"	     1.75  -12.56   -5.91    31.69   11.98    7.39
$hbox 7 "r_foot"	     0.00   -0.00   -4.99    14.62   18.13    5.18
$hbox 7 "r_toe"	    -6.79   -2.90   -6.84    14.00   16.88    8.23
$hbox 1 "spine"	    -1.14   -9.16   -7.84    17.91    4.84    8.27
$hbox 2 "spine1"	     3.22  -15.88  -15.19    27.88   19.52   18.90
$hbox 1 "headextend"	   -12.65   -6.57  -21.66    -2.01    6.16   -2.81
$hbox 2 "headtop"	   -13.15   -7.22   -8.19     8.47    6.89    2.77
$hbox 4 "l_clavicle"	     0.00   -5.74   -8.25    16.13    8.28   10.53
$hbox 20 "l_upperarm"	   -15.33  -12.62   -7.42    30.78   14.15   17.12
$hbox 20 "l_forearm"	   -21.77  -19.26   -9.77    54.67   17.75   24.31
$hbox 5 "r_clavicle"	     0.00   -4.26   -6.50    11.85    6.54    6.56
$hbox 5 "r_upperarm"	    -9.96   -9.80   -8.79    20.95    9.64    8.09
$hbox 5 "r_forearm"	    -6.53  -14.19  -17.60    45.53   16.32    7.04
$hbox 2 "spike_bottom_left"	   -12.10   -4.14   -8.89    56.14   10.08    4.78
$hbox 2 "spike_bottom_right"	    -9.80  -11.52   -8.90    57.83    3.24    8.05
$hbox 2 "spike_middle_left"	   -10.17  -10.78   -8.13    46.26    8.02    8.92
$hbox 2 "spike_middle_right"	   -10.19   -7.91   -7.30    46.01   10.41   13.32
$hbox 2 "spike_top_left"	    -5.92   -6.46   -8.28    29.23    7.72    1.27
$hbox 2 "spike_top_right"	    -5.92   -7.72   -8.28    29.23    8.57    3.24