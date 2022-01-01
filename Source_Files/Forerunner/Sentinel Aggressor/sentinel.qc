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


$scale	1
// .qc block generated by HLMV begins.
