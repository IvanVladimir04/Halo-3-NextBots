// Created by Crowbar 0.62

$modelname "halo_3/characters/forerunner/sentinel_enforcer.mdl"

$scale	1.065
$origin 0 0 0 -90
$bodygroup "Left Shield"
{
	studio "left_shield.smd"
	blank
}
$bodygroup "Right Shield"
{
	studio "right_shield.smd"
	blank
}
$bodygroup "Hull"
{
	studio "hull_base.smd"
	studio "hull_medium.smd"
	studio "hull_destroyed.smd"
}
$bodygroup "Left Arm"
{
	studio "l_arm_base.smd"
	studio "l_arm_medium.smd"
	studio "l_arm_destroyed.smd"
}
$bodygroup "Left Rocket"
{
	studio "l_rocket_base.smd"
	studio "l_rocket_medium.smd"
}
$bodygroup "Left Shield Generator"
{
	studio "l_shield_gen_base.smd"
	studio "l_shield_gen_medium.smd"
	studio "l_shield_gen_destroyed.smd"
}
$bodygroup "Left Thruster"
{
	studio "l_thruster_base.smd"
	studio "l_thruster_medium.smd"
	studio "l_thruster_destroyed.smd"
}
$bodygroup "Right Arm"
{
	studio "r_arm_base.smd"
	studio "r_arm_medium.smd"
	studio "r_arm_destroyed.smd"
}
$bodygroup "Right Rocket"
{
	studio "r_rocket_base.smd"
	studio "r_rocket_medium.smd"
}
$bodygroup "Right Shield Generator"
{
	studio "r_shield_gen_base.smd"
	studio "r_shield_gen_medium.smd"
	studio "r_shield_gen_destroyed.smd"
}
$bodygroup "Right Thruster"
{
	studio "r_thruster_base.smd"
	studio "r_thruster_medium.smd"
	studio "r_thruster_destroyed.smd"
}
$bodygroup "Main Eye"
{
	studio "main_eye_base.smd"
	studio "main_eye_medium.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$illumposition 0 0 96

$cdmaterials "\models\halo_3\characters\forerunner\enforcer\"

$attachment "eye_flare" "eye_flare" 0 0 0 rotate 0 0 0
$attachment "eye_light_R" "eyelight.001" 0 0 0 rotate 0 0 0
$attachment "eye_light" "eyelight" 0 0 0 rotate 0 0 0
$attachment "rocketpod_R" "r_rocket_target" 0 0 0 rotate -90 0 0
$attachment "rocketpod_L" "l_rocket_target" 0 0 0 rotate -90 0 0
$attachment "needler_L" "l_arm_target" 0 0 0 rotate 0 -120 0
$attachment "needler_R" "r_arm_target" 0 0 0 rotate 0 120 0
$attachment "l_gripper" "l_gripper" 0 0 0 rotate 0 0 0
$attachment "r_gripper" "r_gripper" 0 0 0 rotate 0 0 0


$poseparameter "move_yaw" -180 180 loop 360
$PoseParameter "aim_yaw" -45 45 0
$PoseParameter "aim_pitch" -90 90 0

$cbox 0 0 0 0 0 0

$bbox -9.089 -11.527 -13.175 24.027 7.405 0.169

//AIM ANY STILL UP

$animation "combat_any_any_aim_still_up_neutral" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "combat_any_any_aim_still_up_down_left" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_down_center" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_down_right" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_mid_left" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_mid_center" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_mid_right" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_up_left" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_up_center" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "combat_any_any_aim_still_up_neutral" 0
}

$animation "combat_any_any_aim_still_up_up_right" "sentinel_enforcer_animations\combat_any_any_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "combat_any_any_aim_still_up_neutral" 0
}

//MOVE COMBAT


$animation "combat_move_neutral" "sentinel_enforcer_animations\combat_acc_left_right.smd" {
	frame 0 1
	fps 30
}

$animation "combat_move_left" "sentinel_enforcer_animations\combat_acc_left_right.smd" {
	fps 30
	frame 4 4
	subtract "combat_move_neutral" 0
}

$animation "combat_move_center" "sentinel_enforcer_animations\combat_acc_left_right.smd" {
	fps 30

	frame 3 3
	subtract "combat_move_neutral" 0
}

$animation "combat_move_right" "sentinel_enforcer_animations\combat_acc_left_right.smd" {
	fps 30
	frame 2 2
	subtract "combat_move_neutral" 0
}


$animation "combat_move_front" "sentinel_enforcer_animations\combat_acc_front_back.smd" {
	fps 30

	frame 4 4
	subtract "combat_move_neutral" 0
}

$animation "combat_move_back" "sentinel_enforcer_animations\combat_acc_front_back.smd" {
	fps 30
	frame 2 2
	subtract "combat_move_neutral" 0
}

//MOVE CROUCH

$animation "crouch_move_neutral" "sentinel_enforcer_animations\crouch_acc_left_right.smd" {
	frame 0 1
	fps 30
}

$animation "crouch_move_left" "sentinel_enforcer_animations\crouch_acc_left_right.smd" {
	fps 30
	frame 4 4
	subtract "crouch_move_neutral" 0
}

$animation "crouch_move_center" "sentinel_enforcer_animations\crouch_acc_left_right.smd" {
	fps 30

	frame 3 3
	subtract "crouch_move_neutral" 0
}

$animation "crouch_move_right" "sentinel_enforcer_animations\crouch_acc_left_right.smd" {
	fps 30
	frame 2 2
	subtract "crouch_move_neutral" 0
}


$animation "crouch_move_front" "sentinel_enforcer_animations\crouch_acc_front_back.smd" {
	fps 30

	frame 4 4
	subtract "crouch_move_neutral" 0
}

$animation "crouch_move_back" "sentinel_enforcer_animations\crouch_acc_front_back.smd" {
	fps 30
	frame 2 2
	subtract "crouch_move_neutral" 0
}



//FLINCH ANIMATIONS

$animation "flinch_combat_any_left_sub" "sentinel_enforcer_animations\h_ping_left_gut_var0.smd" {
	fps 30
	frame 25 25
	loop
}
$animation "flinch_combat_any_left" "sentinel_enforcer_animations\h_ping_left_gut_var0.smd" {
	fps 30
	subtract	"flinch_combat_any_left_sub" 0
}

$animation "flinch_combat_any_right_sub" "sentinel_enforcer_animations\h_ping_right_gut_var0.smd" {
	fps 30
	frame 25 25
	loop
}
$animation "flinch_combat_any_right" "sentinel_enforcer_animations\h_ping_right_gut_var0.smd" {
	fps 30
	subtract	"flinch_combat_any_right_sub" 0
}

$animation "flinch_combat_any_back0_sub" "sentinel_enforcer_animations\h_ping_back_gut_var0.smd" {
	fps 30
	frame 25 25
	loop
}
$animation "flinch_combat_any_back0" "sentinel_enforcer_animations\h_ping_back_gut_var0.smd" {
	fps 30
	subtract	"flinch_combat_any_back0_sub"	0
}

$animation "flinch_combat_any_back1_sub" "sentinel_enforcer_animations\h_ping_back_gut_var1.smd" {
	fps 30
	frame 25 25
	loop
}
$animation "flinch_combat_any_back1" "sentinel_enforcer_animations\h_ping_back_gut_var1.smd" {
	fps 30
	subtract	"flinch_combat_any_back1_sub"	0
}

$animation "flinch_combat_any_front_sub" "sentinel_enforcer_animations\h_ping_front_gut_var0.smd" {
	fps 30
	frame 25 25
	loop
}
$animation "flinch_combat_any_front" "sentinel_enforcer_animations\h_ping_front_gut_var0.smd" {
	fps 30
	subtract	"flinch_combat_any_front_sub"	0
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
	"sentinel_enforcer_animations/combat_any_any_idle_var0.smd"
	activity "ACT_IDLE" 1
	addlayer	"combat_move_layer"
	addlayer	"combat_any_any_aim_still_up"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
	frame 0 59
}

$sequence "hover" {
	"sentinel_enforcer_animations/combat_any_any_idle_var1.smd"
	activity "ACT_HOVER" 1
	addlayer	"combat_move_layer"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	frame 0 59
	loop
}

$sequence "fly" {
	"sentinel_enforcer_animations/crouch_any_any_idle.smd"
	activity "ACT_FLY" 1
	addlayer	"crouch_move_layer"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	frame 0 59
	loop
}

$sequence "fly_crouch" {
	"sentinel_enforcer_animations/crouch_any_any_idle.smd"
//	activity "ACT_FLY" 1
	addlayer	"crouch_move_layer"
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
	frame 0 59
	hidden
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
	"flinch_combat_any_front"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "pinged_combat_any_front_head" {
	"flinch_combat_any_front"
	activity "ACT_FLINCH_HEAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	delta
}

$sequence "pinged_combat_any_front_gut" {
	"flinch_combat_any_front"
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

$collisionjoints "enforcer_physics.smd"
{
	$mass 5500.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	
		$jointconstrain "torso" x limit 0.00 0.00 0.00
	$jointconstrain "torso" y limit 0.00 0.00 0.00
	$jointconstrain "torso" z limit -25.00 30.00 0.00

	$jointconstrain "r_neck" x limit -10.00 10.00 0.00
	$jointconstrain "r_neck" y limit 0.00 0.00 0.00
	$jointconstrain "r_neck" z limit -15.00 15.00 0.00

	$jointconstrain "r_head" x limit 0.00 0.00 0.00
	$jointconstrain "r_head" y limit 0.00 0.00 0.00
	$jointconstrain "r_head" z limit -25.00 25.00 0.00

	$jointconstrain "r_arm" x limit 0.00 0.00 0.00
	$jointconstrain "r_arm" y limit 0.00 0.00 0.00
	$jointconstrain "r_arm" z limit -20.00 20.00 0.00

	$jointconstrain "l_neck" x limit -10.00 10.00 0.00
	$jointconstrain "l_neck" y limit 0.00 0.00 0.00
	$jointconstrain "l_neck" z limit -15.00 15.00 0.00

	$jointconstrain "l_head" x limit 0.00 0.00 0.00
	$jointconstrain "l_head" y limit -25.00 25.00 0.00
	$jointconstrain "l_head" z limit 0.00 0.00 0.00

	$jointconstrain "l_rocket_target" x limit 0.00 0.00 0.00
	$jointconstrain "l_rocket_target" y limit 0.00 0.00 0.00
	$jointconstrain "l_rocket_target" z limit 0.00 0.00 0.00

	$jointconstrain "l_arm" x limit 0.00 0.00 0.00
	$jointconstrain "l_arm" y limit 0.00 0.00 0.00
	$jointconstrain "l_arm" z limit -20.00 20.00 0.00

	$jointconstrain "l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "l_forearm" z limit -15.00 60.00 0.00

	$jointconstrain "r_rocket_target" x limit 0.00 0.00 0.00
	$jointconstrain "r_rocket_target" y limit 0.00 0.00 0.00
	$jointconstrain "r_rocket_target" z limit 0.00 0.00 0.00

	$jointconstrain "r_thruster_arm" x limit -10.00 20.00 0.00
	$jointconstrain "r_thruster_arm" y limit 0.00 0.00 0.00
	$jointconstrain "r_thruster_arm" z limit 0.00 0.00 0.00

	$jointconstrain "r_thruster" x limit -35.00 15.00 0.00
	$jointconstrain "r_thruster" y limit 0.00 0.00 0.00
	$jointconstrain "r_thruster" z limit 0.00 0.00 0.00

	$jointconstrain "r_forearm" x limit -60.00 15.00 0.00
	$jointconstrain "r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "r_forearm" z limit 0.00 0.00 0.00

	$jointconstrain "main_eye" x limit -10.00 10.00 0.00
	$jointconstrain "main_eye" y limit 0.00 0.00 0.00
	$jointconstrain "main_eye" z limit -10.00 15.00 0.00

	$jointconstrain "l_thruster_arm" x limit 0.00 0.00 0.00
	$jointconstrain "l_thruster_arm" y limit -10.00 20.00 0.00
	$jointconstrain "l_thruster_arm" z limit 0.00 0.00 0.00

	$jointconstrain "l_thruster" x limit 0.00 0.00 0.00
	$jointconstrain "l_thruster" y limit 0.00 0.00 0.00
	$jointconstrain "l_thruster" z limit -10.00 35.00 0.00

	$jointconstrain "l_gripper" x limit 0.00 0.00 0.00
	$jointconstrain "l_gripper" y limit 0.00 0.00 0.00
	$jointconstrain "l_gripper" z limit -50.00 0.00 0.00

	$jointconstrain "r_gripper" x limit 0.00 50.00 0.00
	$jointconstrain "r_gripper" y limit 0.00 0.00 0.00
	$jointconstrain "r_gripper" z limit 0.00 0.00 0.00
}


$KeyValues
{
	prop_data 
	{
		"base" "Metal.Small"
	}
}


$scale	0.95
// .qc block generated by HLMV begins.
$surfaceprop "metalvehicle"


$hboxset "default"

$hbox 2 "hull"	   -60.05  -52.96  -49.91    60.37   53.09   50.43
$hbox 4 "l_thruster_arm"	     0.00   -6.55   -5.85    68.31    6.56    5.89
$hbox 4 "l_thruster"	    -5.15 -162.06  -34.51    54.73   11.10   25.17
$hbox 4 "l_gripper"	   -72.25  -24.50  -48.85    35.14   41.02   48.84
$hbox 5 "r_thruster_arm"	    -6.56  -62.09   -0.12     6.55    0.00   39.25
$hbox 5 "r_thruster"	   -23.34  -54.74 -163.82    39.37    5.15   13.42
$hbox 5 "r_gripper"	   -48.85  -19.41  -49.62    48.84   53.08   22.35
$hbox 3 "torso"	    -6.10  -68.00  -29.05    62.42    9.60   29.06
$hbox 6 "l_neck"	    -4.81   -6.10   -5.89    58.30    5.78    5.68
$hbox 6 "l_head"	  -184.41  -10.10  -56.64    19.09   18.69   46.89
$hbox 21 "l_shield"	    45.00  -29.29  -84.73    91.06   61.07   94.73
$hbox 23 "l_rocket_target"	   -42.37  -14.16  -25.21    16.55   18.39   15.03
$hbox 7 "r_neck"	    -4.81   -5.78   -5.90    58.30    6.09    5.68
$hbox 7 "r_head"	  -184.41  -56.73  -13.46    19.09   46.89   18.70
$hbox 24 "r_rocket_target"	   -42.37  -23.07  -26.16    16.55   13.26   14.67
$hbox 22 "r_shield"	    42.75  -61.02  -80.49    86.51   24.83   89.99
$hbox 6 "l_arm"	    -4.67   -5.78   -5.78    58.40    5.78    5.78
$hbox 6 "l_forearm"	   -18.23  -80.62  -18.94    17.46   10.22   18.94
$hbox 6 "l_hand"	   -38.04   -7.01   -2.84     0.00    7.00    3.15
$hbox 7 "r_arm"	    -4.67   -5.79   -5.78    58.41    5.78    5.78
$hbox 7 "r_forearm"	   -18.94  -17.47  -82.82    18.94   18.22   10.22
$hbox 7 "r_hand"	   -19.49   -0.78  -13.96     1.35   33.09    1.59
$hbox 6 "l_welder"	   -25.72   -3.42   -3.42     0.00    5.46    5.46
$hbox 7 "r_welder"	    -6.90   -1.42  -23.09     1.45   15.10    0.46
$hbox 1 "main_eye"	   -24.24  -14.81  -15.81    56.00   15.30   15.81

$hboxset "shield_left_only"

$hbox 2 "hull"	   -60.05  -52.96  -49.91    60.37   53.09   50.43
$hbox 4 "l_thruster_arm"	     0.00   -6.55   -5.85    68.31    6.56    5.89
$hbox 4 "l_thruster"	    -5.15 -162.06  -34.51    54.73   11.10   25.17
$hbox 4 "l_gripper"	   -72.25  -24.50  -48.85    35.14   41.02   48.84
$hbox 5 "r_thruster_arm"	    -6.56  -62.09   -0.12     6.55    0.00   39.25
$hbox 5 "r_thruster"	   -23.34  -54.74 -163.82    39.37    5.15   13.42
$hbox 5 "r_gripper"	   -48.85  -19.41  -49.62    48.84   53.08   22.35
$hbox 3 "torso"	    -6.10  -68.00  -29.05    62.42    9.60   29.06
$hbox 6 "l_neck"	    -4.81   -6.10   -5.89    58.30    5.78    5.68
$hbox 6 "l_head"	  -184.41  -10.10  -56.64    19.09   18.69   46.89
$hbox 21 "l_shield"	    45.00  -29.29  -84.73    91.06   61.07   94.73
$hbox 23 "l_rocket_target"	   -42.37  -14.16  -25.21    16.55   18.39   15.03
$hbox 7 "r_neck"	    -4.81   -5.78   -5.90    58.30    6.09    5.68
$hbox 7 "r_head"	  -184.41  -56.73  -13.46    19.09   46.89   18.70
$hbox 24 "r_rocket_target"	   -42.37  -23.07  -26.16    16.55   13.26   14.67
$hbox 6 "l_arm"	    -4.67   -5.78   -5.78    58.40    5.78    5.78
$hbox 6 "l_forearm"	   -18.23  -80.62  -18.94    17.46   10.22   18.94
$hbox 6 "l_hand"	   -38.04   -7.01   -2.84     0.00    7.00    3.15
$hbox 7 "r_arm"	    -4.67   -5.79   -5.78    58.41    5.78    5.78
$hbox 7 "r_forearm"	   -18.94  -17.47  -82.82    18.94   18.22   10.22
$hbox 7 "r_hand"	   -19.49   -0.78  -13.96     1.35   33.09    1.59
$hbox 6 "l_welder"	   -25.72   -3.42   -3.42     0.00    5.46    5.46
$hbox 7 "r_welder"	    -6.90   -1.42  -23.09     1.45   15.10    0.46
$hbox 1 "main_eye"	   -24.24  -14.81  -15.81    56.00   15.30   15.81

$hboxset "shield_right_only"

$hbox 2 "hull"	   -60.05  -52.96  -49.91    60.37   53.09   50.43
$hbox 4 "l_thruster_arm"	     0.00   -6.55   -5.85    68.31    6.56    5.89
$hbox 4 "l_thruster"	    -5.15 -162.06  -34.51    54.73   11.10   25.17
$hbox 4 "l_gripper"	   -72.25  -24.50  -48.85    35.14   41.02   48.84
$hbox 5 "r_thruster_arm"	    -6.56  -62.09   -0.12     6.55    0.00   39.25
$hbox 5 "r_thruster"	   -23.34  -54.74 -163.82    39.37    5.15   13.42
$hbox 5 "r_gripper"	   -48.85  -19.41  -49.62    48.84   53.08   22.35
$hbox 3 "torso"	    -6.10  -68.00  -29.05    62.42    9.60   29.06
$hbox 6 "l_neck"	    -4.81   -6.10   -5.89    58.30    5.78    5.68
$hbox 6 "l_head"	  -184.41  -10.10  -56.64    19.09   18.69   46.89
$hbox 23 "l_rocket_target"	   -42.37  -14.16  -25.21    16.55   18.39   15.03
$hbox 7 "r_neck"	    -4.81   -5.78   -5.90    58.30    6.09    5.68
$hbox 7 "r_head"	  -184.41  -56.73  -13.46    19.09   46.89   18.70
$hbox 24 "r_rocket_target"	   -42.37  -23.07  -26.16    16.55   13.26   14.67
$hbox 22 "r_shield"	    42.75  -61.02  -80.49    86.51   24.83   89.99
$hbox 6 "l_arm"	    -4.67   -5.78   -5.78    58.40    5.78    5.78
$hbox 6 "l_forearm"	   -18.23  -80.62  -18.94    17.46   10.22   18.94
$hbox 6 "l_hand"	   -38.04   -7.01   -2.84     0.00    7.00    3.15
$hbox 7 "r_arm"	    -4.67   -5.79   -5.78    58.41    5.78    5.78
$hbox 7 "r_forearm"	   -18.94  -17.47  -82.82    18.94   18.22   10.22
$hbox 7 "r_hand"	   -19.49   -0.78  -13.96     1.35   33.09    1.59
$hbox 6 "l_welder"	   -25.72   -3.42   -3.42     0.00    5.46    5.46
$hbox 7 "r_welder"	    -6.90   -1.42  -23.09     1.45   15.10    0.46
$hbox 1 "main_eye"	   -24.24  -14.81  -15.81    56.00   15.30   15.81

$hboxset "shield_none"

$hbox 2 "hull"	   -60.05  -52.96  -49.91    60.37   53.09   50.43
$hbox 4 "l_thruster_arm"	     0.00   -6.55   -5.85    68.31    6.56    5.89
$hbox 4 "l_thruster"	    -5.15 -162.06  -34.51    54.73   11.10   25.17
$hbox 4 "l_gripper"	   -72.25  -24.50  -48.85    35.14   41.02   48.84
$hbox 5 "r_thruster_arm"	    -6.56  -62.09   -0.12     6.55    0.00   39.25
$hbox 5 "r_thruster"	   -23.34  -54.74 -163.82    39.37    5.15   13.42
$hbox 5 "r_gripper"	   -48.85  -19.41  -49.62    48.84   53.08   22.35
$hbox 3 "torso"	    -6.10  -68.00  -29.05    62.42    9.60   29.06
$hbox 6 "l_neck"	    -4.81   -6.10   -5.89    58.30    5.78    5.68
$hbox 6 "l_head"	  -184.41  -10.10  -56.64    19.09   18.69   46.89
$hbox 23 "l_rocket_target"	   -42.37  -14.16  -25.21    16.55   18.39   15.03
$hbox 7 "r_neck"	    -4.81   -5.78   -5.90    58.30    6.09    5.68
$hbox 7 "r_head"	  -184.41  -56.73  -13.46    19.09   46.89   18.70
$hbox 24 "r_rocket_target"	   -42.37  -23.07  -26.16    16.55   13.26   14.67
$hbox 6 "l_arm"	    -4.67   -5.78   -5.78    58.40    5.78    5.78
$hbox 6 "l_forearm"	   -18.23  -80.62  -18.94    17.46   10.22   18.94
$hbox 6 "l_hand"	   -38.04   -7.01   -2.84     0.00    7.00    3.15
$hbox 7 "r_arm"	    -4.67   -5.79   -5.78    58.41    5.78    5.78
$hbox 7 "r_forearm"	   -18.94  -17.47  -82.82    18.94   18.22   10.22
$hbox 7 "r_hand"	   -19.49   -0.78  -13.96     1.35   33.09    1.59
$hbox 6 "l_welder"	   -25.72   -3.42   -3.42     0.00    5.46    5.46
$hbox 7 "r_welder"	    -6.90   -1.42  -23.09     1.45   15.10    0.46
$hbox 1 "main_eye"	   -24.24  -14.81  -15.81    56.00   15.30   15.81