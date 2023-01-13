// Created by Crowbar 0.62

$modelname "halo_3/characters/forerunner/sentinel_aggressor.mdl"

$scale	1.065
$origin 0 0 0 -90
$bodygroup "Body"
{
	studio "sentinel.smd"
}
$bodygroup "Shield"
{
	blank
	studio "sentinel_shield.smd"
}
$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 96

$cdmaterials "\models\halo_3\characters\forerunner\sentinel\"

$texturegroup "skinfamilies"
{
	{ "sentinel_aggressor"   }
	{ "sentinel_aggressor_minor"   }
	{ "sentinel_aggressor_major"   }
}

$attachment "muzzle" "gun_barrel" 3.00 0.00 5.50 rotate -45 0 0
$attachment "eyelight" "eye" 3.50 0.00 -2.00 rotate -0 -0 0
$attachment "sidelight_L" "root_fuselage" 6.00 11.00 0.00 rotate -0 -180 0
$attachment "sidelight_R" "root_fuselage" 6.39 -11.20 0.00 rotate -0 -180 0
$attachment "boost" "root_fuselage" -10.00 0.00 -3.00 rotate -15 -180 0
$attachment "hull" "root_fuselage" 0 0 0 rotate 0 0 0

$poseparameter "move_yaw" -180 180 loop 360
$PoseParameter "aim_yaw" -45 45 0
$PoseParameter "aim_pitch" -90 90 0

$cbox 0 0 0 0 0 0

$bbox -9.089 -11.527 -13.175 24.027 7.405 0.169

//AIM ANY STILL UP

$animation "combat_any_any_aim_still_up_neutral" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "combat_any_any_aim_still_up_down_left" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_down_center" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_down_right" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_mid_left" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_mid_center" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_mid_right" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_up_left" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_up_center" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_up_right" "sentinel_aggressor_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "combat_any_any_aim_still_up_neutral" 0
}

//MOVE COMBAT


$animation "combat_move_neutral" "sentinel_aggressor_animations\combat_acc_left_right.smd" {
	frame 0 1
	fps 30
}

$animation "combat_move_left" "sentinel_aggressor_animations\combat_acc_left_right.smd" {
	fps 30
	frame 4 4
	subtract "combat_move_neutral" 0
}

$animation "combat_move_center" "sentinel_aggressor_animations\combat_acc_left_right.smd" {
	fps 30

	frame 3 3
	subtract "combat_move_neutral" 0
}

$animation "combat_move_right" "sentinel_aggressor_animations\combat_acc_left_right.smd" {
	fps 30
	frame 2 2
	subtract "combat_move_neutral" 0
}


$animation "combat_move_front" "sentinel_aggressor_animations\combat_acc_front_back.smd" {
	fps 30

	frame 4 4
	subtract "combat_move_neutral" 0
}

$animation "combat_move_back" "sentinel_aggressor_animations\combat_acc_front_back.smd" {
	fps 30
	frame 2 2
	subtract "combat_move_neutral" 0
}

//MOVE CROUCH

$animation "crouch_move_neutral" "sentinel_aggressor_animations\crouch_acc_left_right.smd" {
	frame 0 1
	fps 30
}

$animation "crouch_move_left" "sentinel_aggressor_animations\crouch_acc_left_right.smd" {
	fps 30
	frame 4 4
	subtract "crouch_move_neutral" 0
}

$animation "crouch_move_center" "sentinel_aggressor_animations\crouch_acc_left_right.smd" {
	fps 30

	frame 3 3
	subtract "crouch_move_neutral" 0
}

$animation "crouch_move_right" "sentinel_aggressor_animations\crouch_acc_left_right.smd" {
	fps 30
	frame 2 2
	subtract "crouch_move_neutral" 0
}


$animation "crouch_move_front" "sentinel_aggressor_animations\crouch_acc_front_back.smd" {
	fps 30

	frame 4 4
	subtract "crouch_move_neutral" 0
}

$animation "crouch_move_back" "sentinel_aggressor_animations\crouch_acc_front_back.smd" {
	fps 30
	frame 2 2
	subtract "crouch_move_neutral" 0
}

//FLINCH ANIMATIONS

$animation "flinch_combat_any_left_sub" "sentinel_aggressor_animations\h_ping_left_gut_var0.smd" {
	fps 30
	frame 26 26
	loop
}
$animation "flinch_combat_any_left" "sentinel_aggressor_animations\h_ping_left_gut_var0.smd" {
	fps 30
	subtract	"flinch_combat_any_left_sub" 0
}

$animation "flinch_combat_any_right_sub" "sentinel_aggressor_animations\h_ping_right_gut_var0.smd" {
	fps 30
	frame 26 26
	loop
}
$animation "flinch_combat_any_right" "sentinel_aggressor_animations\h_ping_right_gut_var0.smd" {
	fps 30
	subtract	"flinch_combat_any_right_sub" 0
}

$animation "flinch_combat_any_back0_sub" "sentinel_aggressor_animations\h_ping_back_gut_var0.smd" {
	fps 30
	frame 27 27
	loop
}
$animation "flinch_combat_any_back0" "sentinel_aggressor_animations\h_ping_back_gut_var0.smd" {
	fps 30
	subtract	"flinch_combat_any_back0_sub"	0
}

$animation "flinch_combat_any_back1_sub" "sentinel_aggressor_animations\h_ping_back_gut_var1.smd" {
	fps 30
	frame 27 27
	loop
}
$animation "flinch_combat_any_back1" "sentinel_aggressor_animations\h_ping_back_gut_var1.smd" {
	fps 30
	subtract	"flinch_combat_any_back1_sub"	0
}

$animation "flinch_combat_any_front0_sub" "sentinel_aggressor_animations\h_ping_front_gut_var0.smd" {
	fps 30
	frame 26 26
	loop
}
$animation "flinch_combat_any_front0" "sentinel_aggressor_animations\h_ping_front_gut_var0.smd" {
	fps 30
	subtract	"flinch_combat_any_front0_sub"	0
}

$animation "flinch_combat_any_front1_sub" "sentinel_aggressor_animations\h_ping_front_gut_var1.smd" {
	fps 30
	frame 26 26
	loop
}
$animation "flinch_combat_any_front1" "sentinel_aggressor_animations\h_ping_front_gut_var1.smd" {
	fps 30
	subtract	"flinch_combat_any_front1_sub"	0
}

$sequence "combat_any_any_aim_still_up" {
	"combat_any_any_aim_still_up_up_right" "combat_any_any_aim_still_up_up_center"  "combat_any_any_aim_still_up_up_left"
	"combat_any_any_aim_still_up_mid_right" "combat_any_any_aim_still_up_mid_center"  "combat_any_any_aim_still_up_mid_left"
	"combat_any_any_aim_still_up_down_right" "combat_any_any_aim_still_up_down_center" "combat_any_any_aim_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "combat_move_layer" {
	"combat_move_front"
	"combat_move_left"
	"combat_move_center"
	"combat_move_right"
	"combat_move_back"
	blend "move_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "crouch_move_layer" {
	"crouch_move_front"
	"crouch_move_left"
	"crouch_move_center"
	"crouch_move_right"
	"crouch_move_back"
	blend "move_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "idle" {
	"sentinel_aggressor_animations/combat_any_any_idle.smd"
	activity "ACT_IDLE" 1
	addlayer	"combat_move_layer"
	addlayer	"combat_any_any_aim_still_up"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$sequence "hover" {
	"sentinel_aggressor_animations/combat_any_any_idle.smd"
	activity "ACT_HOVER" 1
	addlayer	"combat_move_layer"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
	hidden
}

$sequence "fly" {
	"sentinel_aggressor_animations/crouch_idle.smd"
	activity "ACT_FLY" 1
	addlayer	"crouch_move_layer"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

$sequence "fly_crouch" {
	"sentinel_aggressor_animations/crouch_idle.smd"
//	activity "ACT_FLY" 1
	addlayer	"crouch_move_layer"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
	hidden
}

$sequence "deploy" {
	"sentinel_aggressor_animations/crouch_idle_2_combat_idle.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "undeploy" {
	"sentinel_aggressor_animations/combat_idle_2_crouch_idle.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

//PING SEQUENCES

$sequence "pinged_combat_any_left_gut" {
	"flinch_combat_any_left_sub"
	activity "ACT_FLINCH_LEFTARM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "pinged_combat_any_back_gut0" {
	"flinch_combat_any_back0"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "pinged_combat_any_back_gut1" {
	"flinch_combat_any_back1"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "pinged_combat_any_front_chest" {
	"flinch_combat_any_front0"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "pinged_combat_any_front_head" {
	"flinch_combat_any_front1"
	activity "ACT_FLINCH_HEAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "pinged_combat_any_front_gut" {
	"flinch_combat_any_front0"
	activity "ACT_FLINCH_STOMACH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "pinged_combat_any_right_gut" {
	"flinch_combat_any_right"
	activity "ACT_FLINCH_RIGHTARM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}


$scale 1
$collisionmodel "sentinel.smd"
{
	$mass 300
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone "root_fuselage"
	$maxconvexpieces 12

}

$KeyValues
{
	prop_data 
	{
		"base" "Metal.Small"
	}
}


$scale	0.9
// .qc block generated by HLMV begins.
// .qc block generated by HLMV begins.

$surfaceprop "metal"


$hboxset "default"

$hbox 2 "root_fuselage"	   -37.61  -21.16   -7.84    20.40   21.16   11.13
$hbox 4 "gun_door_l"	    -4.74   -5.44   -4.54     3.69    0.39    0.60
$hbox 5 "gun_door_r"	    -4.74   -0.40   -4.55     3.69    5.42    0.59
$hbox 3 "gun_turntable"	    -4.34   -3.77   -1.05     3.31    3.76    1.31
$hbox 3 "gun_swingarm"	    -0.94   -4.17   -4.50    12.32    3.59    0.55
$hbox 3 "gun_door_front"	    -0.70   -1.67   -2.48     9.45    9.99    2.96
$hbox 3 "gun_housing"	    -3.05   -2.48   -2.08     5.48    2.57    8.64
$hbox 3 "gun_barrel"	    -1.05   -2.29    0.00     3.19    2.20    5.85
$hbox 1 "neck"	   -11.77   -1.36   -3.85     2.87    1.35    8.29
$hbox 2 "head"	   -38.60  -10.30   -6.98    14.51   10.35    7.63
$hbox 1 "eye"	    -1.74   -3.29   -4.48     3.18    3.30    1.38
$hbox 4 "shoulder_l"	    -4.35   -2.81   -9.62     3.65    2.29    3.65
$hbox 4 "upper_arm_l"	   -19.92   -2.41   -2.48     1.42   12.18    2.12
$hbox 4 "lower_arm_l"	    -2.93  -12.74   -1.57    26.41    3.01    6.95
$hbox 4 "claw1a_l"	    -2.29    0.00  -10.53     0.92    1.31    0.00
$hbox 4 "claw2a_l"	    -0.75   -0.29  -10.64     1.32    0.99    0.00
$hbox 5 "shoulder_r"	    -4.35   -2.30   -9.63     3.65    2.80    3.64
$hbox 5 "upper_arm_r"	   -19.93  -12.23   -2.48     1.41    2.40    2.11
$hbox 5 "lower_arm_r"	    -2.96   -2.98   -1.59    26.41   12.77    6.93
$hbox 5 "claw1a_r"	    -0.94    0.00  -10.53     2.26    1.30    0.00
$hbox 5 "claw2a_r"	    -1.36   -0.30  -10.64     0.72    0.98    0.00

// .qc block generated by HLMV ends.

