// Created by Crowbar 0.62

$modelname "halo_3/characters/covenant/engineer.mdl"

$scale	1.065
$origin 0 0 0 -90
$bodygroup "Body"
{
	studio "body_base.smd"
}
$bodygroup "Sacks"
{
	studio "sacks_freeform.smd"
	studio "sacks_slaveform.smd"
}
$bodygroup "Helmet"
{
	studio "helmet_slaveform.smd"
	blank
}

$surfaceprop "flesh"

$contents "solid"

$illumposition 0 0 96

$cdmaterials "\models\halo_3\characters\covenant\engineer\"

$attachment "shield_fx" "pelvis" 0.00 0.00 0.00 rotate 0 0 -90

$poseparameter "move_yaw" -180 180 loop 360
$PoseParameter "aim_yaw" -45 45 0
$PoseParameter "aim_pitch" -90 90 0

$cbox 0 0 0 0 0 0

$bbox -9.089 -11.527 -13.175 24.027 7.405 0.169

//AIM ANY STILL UP

$animation "armored_aim_still_up_neutral" "engineer_anims\armored_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "armored_aim_still_up_down_left" "engineer_anims\armored_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "armored_aim_still_up_neutral" 0
}

$animation "armored_aim_still_up_down_center" "engineer_anims\armored_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "armored_aim_still_up_neutral" 0
}

$animation "armored_aim_still_up_down_right" "engineer_anims\armored_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "armored_aim_still_up_neutral" 0
}

$animation "armored_aim_still_up_mid_left" "engineer_anims\armored_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "armored_aim_still_up_neutral" 0
}

$animation "armored_aim_still_up_mid_center" "engineer_anims\armored_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "armored_aim_still_up_neutral" 0
}

$animation "armored_aim_still_up_mid_right" "engineer_anims\armored_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "armored_aim_still_up_neutral" 0
}

$animation "armored_aim_still_up_up_left" "engineer_anims\armored_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "armored_aim_still_up_neutral" 0
}

$animation "armored_aim_still_up_up_center" "engineer_anims\armored_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "armored_aim_still_up_neutral" 0
}

$animation "armored_aim_still_up_up_right" "engineer_anims\armored_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "armored_aim_still_up_neutral" 0
}

//AIM FLEE STILL UP

$animation "flee_aim_still_up_neutral" "engineer_anims\flee_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "flee_aim_still_up_down_left" "engineer_anims\flee_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "flee_aim_still_up_neutral" 0
}

$animation "flee_aim_still_up_down_center" "engineer_anims\flee_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "flee_aim_still_up_neutral" 0
}

$animation "flee_aim_still_up_down_right" "engineer_anims\flee_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "flee_aim_still_up_neutral" 0
}

$animation "flee_aim_still_up_mid_left" "engineer_anims\flee_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "flee_aim_still_up_neutral" 0
}

$animation "flee_aim_still_up_mid_center" "engineer_anims\flee_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "flee_aim_still_up_neutral" 0
}

$animation "flee_aim_still_up_mid_right" "engineer_anims\flee_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "flee_aim_still_up_neutral" 0
}

$animation "flee_aim_still_up_up_left" "engineer_anims\flee_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "flee_aim_still_up_neutral" 0
}

$animation "flee_aim_still_up_up_center" "engineer_anims\flee_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "flee_aim_still_up_neutral" 0
}

$animation "flee_aim_still_up_up_right" "engineer_anims\flee_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "flee_aim_still_up_neutral" 0
}


//AIM FLIGHT STILL UP

$animation "flight_aim_still_up_neutral" "engineer_anims\flight_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "flight_aim_still_up_down_left" "engineer_anims\flight_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "flight_aim_still_up_neutral" 0
}

$animation "flight_aim_still_up_down_center" "engineer_anims\flight_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "flight_aim_still_up_neutral" 0
}

$animation "flight_aim_still_up_down_right" "engineer_anims\flight_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "flight_aim_still_up_neutral" 0
}

$animation "flight_aim_still_up_mid_left" "engineer_anims\flight_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "flight_aim_still_up_neutral" 0
}

$animation "flight_aim_still_up_mid_center" "engineer_anims\flight_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "flight_aim_still_up_neutral" 0
}

$animation "flight_aim_still_up_mid_right" "engineer_anims\flight_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "flight_aim_still_up_neutral" 0
}

$animation "flight_aim_still_up_up_left" "engineer_anims\flight_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "flight_aim_still_up_neutral" 0
}

$animation "flight_aim_still_up_up_center" "engineer_anims\flight_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "flight_aim_still_up_neutral" 0
}

$animation "flight_aim_still_up_up_right" "engineer_anims\flight_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "flight_aim_still_up_neutral" 0
}

//MOVE ARMORED


$animation "armored_move_neutral" "engineer_anims\armored_acc_left_right.smd" {
	frame 0 1
	fps 30
}

$animation "armored_move_left" "engineer_anims\armored_acc_left_right.smd" {
	fps 30
	frame 4 4
	subtract "armored_move_neutral" 0
}

$animation "armored_move_center" "engineer_anims\armored_acc_left_right.smd" {
	fps 30

	frame 3 3
	subtract "armored_move_neutral" 0
}

$animation "armored_move_right" "engineer_anims\armored_acc_left_right.smd" {
	fps 30
	frame 2 2
	subtract "armored_move_neutral" 0
}


$animation "armored_move_front" "engineer_anims\armored_acc_front_back.smd" {
	fps 30

	frame 4 4
	subtract "armored_move_neutral" 0
}

$animation "armored_move_back" "engineer_anims\armored_acc_front_back.smd" {
	fps 30
	frame 2 2
	subtract "armored_move_neutral" 0
}

//MOVE FLEE

$animation "flee_move_neutral" "engineer_anims\flee_acc_left_right.smd" {
	frame 0 1
	fps 30
}

$animation "flee_move_left" "engineer_anims\flee_acc_left_right.smd" {
	fps 30
	frame 4 4
	subtract "flee_move_neutral" 0
}

$animation "flee_move_center" "engineer_anims\flee_acc_left_right.smd" {
	fps 30

	frame 3 3
	subtract "flee_move_neutral" 0
}

$animation "flee_move_right" "engineer_anims\flee_acc_left_right.smd" {
	fps 30
	frame 2 2
	subtract "flee_move_neutral" 0
}


$animation "flee_move_front" "engineer_anims\flee_acc_front_back.smd" {
	fps 30

	frame 4 4
	subtract "flee_move_neutral" 0
}

$animation "flee_move_back" "engineer_anims\flee_acc_front_back.smd" {
	fps 30
	frame 2 2
	subtract "flee_move_neutral" 0
}

//MOVE FLIGHT

$animation "flight_move_neutral" "engineer_anims\flight_acc_left_right.smd" {
	frame 0 1
	fps 30
}

$animation "flight_move_left" "engineer_anims\flight_acc_left_right.smd" {
	fps 30
	frame 4 4
	subtract "flight_move_neutral" 0
}

$animation "flight_move_center" "engineer_anims\flight_acc_left_right.smd" {
	fps 30

	frame 3 3
	subtract "flight_move_neutral" 0
}

$animation "flight_move_right" "engineer_anims\flight_acc_left_right.smd" {
	fps 30
	frame 2 2
	subtract "flight_move_neutral" 0
}


$animation "flight_move_front" "engineer_anims\flight_acc_front_back.smd" {
	fps 30

	frame 4 4
	subtract "flight_move_neutral" 0
}

$animation "flight_move_back" "engineer_anims\flight_acc_front_back.smd" {
	fps 30
	frame 2 2
	subtract "flight_move_neutral" 0
}

$sequence "armored_aim_still_up" {
	"armored_aim_still_up_up_right" "armored_aim_still_up_up_center"  "armored_aim_still_up_up_left"
	"armored_aim_still_up_mid_right" "armored_aim_still_up_mid_center"  "armored_aim_still_up_mid_left"
	"armored_aim_still_up_down_right" "armored_aim_still_up_down_center" "armored_aim_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "flee_aim_still_up" {
	"flee_aim_still_up_up_right" "flee_aim_still_up_up_center"  "flee_aim_still_up_up_left"
	"flee_aim_still_up_mid_right" "flee_aim_still_up_mid_center"  "flee_aim_still_up_mid_left"
	"flee_aim_still_up_down_right" "flee_aim_still_up_down_center" "flee_aim_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "flight_aim_still_up" {
	"flight_aim_still_up_up_right" "flight_aim_still_up_up_center"  "flight_aim_still_up_up_left"
	"flight_aim_still_up_mid_right" "flight_aim_still_up_mid_center"  "flight_aim_still_up_mid_left"
	"flight_aim_still_up_down_right" "flight_aim_still_up_down_center" "flight_aim_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "armored_move_layer" {
	"armored_move_front"
	"armored_move_left"
	"armored_move_center"
	"armored_move_right"
	"armored_move_back"
	blend "move_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "flee_move_layer" {
	"flee_move_front"
	"flee_move_left"
	"flee_move_center"
	"flee_move_right"
	"flee_move_back"
	blend "move_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "flight_move_layer" {
	"flight_move_front"
	"flight_move_left"
	"flight_move_center"
	"flight_move_right"
	"flight_move_back"
	blend "move_yaw" -180 180
	blendwidth 5
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "armored_idle" {
	"engineer_anims/armored_idle_var1.smd"
	activity "ACT_IDLE" 1
	addlayer	"armored_move_layer"
	addlayer	"armored_aim_still_up"
	fadein 0.2
	fadeout 0.2
	
	fps 30
	loop
}

$sequence "Flee_idle" {
	"engineer_anims/flee_idle_var1.smd"
	activity "ACT_COWER" 1
	addlayer	"flee_move_layer"
	addlayer	"flee_aim_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "flight_idle" {
	"engineer_anims/flight_idle_var1.smd"
	activity "ACT_FLY" 1
	addlayer	"flight_move_layer"
	addlayer	"flight_aim_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "idle_2_berserk_idle" {
	"engineer_anims/armored_idle_2_berserk_idle.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_2_flee_idle" {
	"engineer_anims/armored_idle_2_flee_idle.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flee_idle_2_armored_idle" {
	"engineer_anims/flee_idle_2_armored_idle.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flee_idle_2_berserk_idle" {
	"engineer_anims/flee_idle_2_berserk_idle.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flee_idle_2_flight_idle" {
	"engineer_anims/flee_idle_2_flight_idle.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flight_idle_2_flee_idle" {
	"engineer_anims/flight_idle_2_flee_idle.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "flight_switch" {
	"engineer_anims/flight_switch.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "berserk_idle_2_detonating_idle" {
	"engineer_anims/berserk_idle_2_detonating_idle.smd"
	activity "ACT_ARM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "detonating_idle" {
	"engineer_anims/detonating_idle.smd"
	activity "ACT_OBJ_ASSEMBLING" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}



$scale 0.9