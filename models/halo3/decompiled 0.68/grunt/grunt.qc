// Created by Crowbar 0.71

$modelname "halo3/grunt.mdl"

$bodygroup "grunt"
{
	studio "grunt.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -8.289 0 32.145

$cdmaterials "models\Ivan04\"

$attachment "hold" "r_forearm" 19 -2 1 rotate -30 0 120

$cbox 0 0 0 0 0 0

$bbox -37.546 -36.084 0.122 37.547 19.506 64.169

$definebone "pelvis" "" 0.291583 0 16.5623 -89.999791 -89.999641 0 0 0 0 0 0 0
$definebone "spine" "pelvis" 1.769901 -1.68187 0 0 -32.454388 0 0 0 0 0 0 0
$definebone "spine1" "spine" 9.763411 -0.005857 0 0 66.499774 0 0 0 0 0 0 0
$definebone "r_clavicle" "spine1" 18.429895 0 -2.84396 49.295517 169.9496 -13.10005 0 0 0 0 0 0
$definebone "r_upperarm" "r_clavicle" 11.541797 0.000004 -0.000002 6.984415 -24.965255 1.419786 0 0 0 0 0 0
$definebone "r_forearm" "r_upperarm" 8.210974 0 0 0.000003 -12.459186 -0.000007 0 0 0 0 0 0
$definebone "neck" "spine1" 18.429895 -0.00112 0 0 0 0 0 0 0 0 0 0
$definebone "head" "neck" 1.411053 0.000002 0 0 -4.045729 0 0 0 0 0 0 0
$definebone "l_clavicle" "spine1" 18.429903 -0.000002 2.84397 -49.295511 169.950174 13.099474 0 0 0 0 0 0
$definebone "l_upperarm" "l_clavicle" 11.541799 0 -0.000002 -6.984409 -24.96532 -1.419779 0 0 0 0 0 0
$definebone "l_forearm" "l_upperarm" 8.210979 0.000002 0.000002 0.000003 -12.459194 -0.000007 0 0 0 0 0 0
$definebone "r_thigh" "pelvis" 0 0 -2.48343 54.580079 151.227628 -142.486584 0 0 0 0 0 0
$definebone "r_calf" "r_thigh" 9.406941 0.000001 0 0 -66.976473 0 0 0 0 0 0 0
$definebone "r_foot" "r_calf" 8.474719 -0.000002 0 15.872882 8.857354 -61.449149 0 0 0 0 0 0
$definebone "l_thigh" "pelvis" 0 0 2.48343 -54.57996 151.227628 142.487172 0 0 0 0 0 0
$definebone "l_calf" "l_thigh" 9.406941 -0.000001 0 0.000002 -66.976473 0.000002 0 0 0 0 0 0
$definebone "l_foot" "l_calf" 8.474722 0.000002 0 -15.872934 8.857354 61.448582 0 0 0 0 0 0


$poseparameter "move_yaw" -180 180 loop 360

$sequence "reference" {
	"grunt_anims\reference.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "pistol_idle" {
	"grunt_anims\pistol_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "airborne" {
	"grunt_anims\airborne.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sleep1" {
	"grunt_anims\sleep1.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "sleep2" {
	"grunt_anims\sleep2.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "enter_sleep" {
	"grunt_anims\enter_sleep.smd"
	activity "ACT_ARM" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "enter_kamikaze" {
	"grunt_anims\enter_kamikaze.smd"
	activity "ACT_STAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "plasma_pistol_fire" {
	"grunt_anims\plasma_pistol_fire.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "surprise_1" {
	"grunt_anims\surprise_1.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "surprise_2" {
	"grunt_anims\surprise_2.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "move_pistol" {
	"grunt_anims\move_pistol.smd"
	"grunt_anims\move_pistol_2.smd"
	"grunt_anims\move_pistol_3.smd"
	"grunt_anims\move_pistol_4.smd"
	"grunt_anims\move_pistol.smd"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_pistol"
	fps 30
	loop
	walkframe 19 LX LY
}

$sequence "flee_idle" {
	"grunt_anims\flee_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "flee_move" {
	"grunt_anims\flee_move.smd"
	activity "ACT_RUN_SCARED" 1
	blend "move_yaw" -180 180
	fadein 0.2
	fadeout 0.2
	node "flee_move"
	fps 30
	loop
	walkframe 31 LX LY
}
