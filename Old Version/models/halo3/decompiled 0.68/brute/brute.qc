// Created by Crowbar 0.71

$modelname "halo3/brute.mdl"

$bodygroup "body"
{
	studio "brute_body.smd"
	studio "brute_body_chiefstalker.smd"
	blank
}
$bodygroup "armor"
{
	blank
	studio "brute_armor_stalker.smd"
	studio "brute_armor_minor.smd"
	studio "brute_armor_major.smd"
	studio "brute_armor_jumppack.smd"
	studio "brute_armor_chieftain.smd"
	studio "brute_armor_chiefweapon.smd"
}
$bodygroup "helmet"
{
	blank
	studio "brute_helmet_stalker.smd"
	studio "brute_helmet_minor.smd"
	studio "brute_helmet_major.smd"
	studio "brute_helmet_jumppack.smd"
	studio "brute_helmet_chieftain.smd"
	studio "brute_helmet_chiefweapon.smd"
}
$bodygroup "extra_armor"
{
	blank
	studio "brute_etc_armor_stalker.smd"
	studio "brute_etc_armor_minor.smd"
	studio "brute_etc_armor_major.smd"
	studio "brute_etc_armor_jumppack.smd"
	studio "brute_etc_armor_chieftain.smd"
	studio "brute_etc_armor_chiefweapon.smd"
	studio "brute_etc_armor_shieldtracker.smd"
}
$bodygroup "gauntlets"
{
	blank
	studio "brute_etc_armor_gauntlets.smd"
}
$bodygroup "handguard"
{
	blank
	studio "brute_etc_armor_handguard.smd"
}
$bodygroup "face_hair"
{
	blank
	studio "brute_facehair.smd"
}
$bodygroup "head"
{
	studio "brute_head.smd"
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "models\Ivan04\"

$attachment "jetpack_R" "spine1" -7 -16 -10.5 rotate 0 -170 180
$attachment "jetpack_L" "spine1" -7 -16 10 rotate 0 -170 180

$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

$definebone "pelvis" "" 1.04243 0 44.1689 -89.999982 -89.999873 0 0 0 0 0 0 0
$definebone "flap_front" "pelvis" -4.099548 12.382199 -0.000039 0.000091 180.000005 -179.999827 0 0 0 0 0 0
$definebone "flap_rear" "pelvis" -4.230701 -7.353043 0.000014 0.000091 180.000005 -179.999827 0 0 0 0 0 0
$definebone "l_thigh" "pelvis" 0 0.000008 7.279371 -7.312532 151.060931 167.004573 0 0 0 0 0 0
$definebone "l_calf" "l_thigh" 22.497812 -0.000412 0.000165 0.000056 -60.942199 0.001145 0 0 0 0 0 0
$definebone "l_foot" "l_calf" 19.895803 0.000268 0.00008 0.015871 31.171078 -0.805008 0 0 0 0 0 0
$definebone "l_toe" "l_foot" 7.604102 9.587841 -0.000101 0.000231 90.000385 0.000172 0 0 0 0 0 0
$definebone "r_thigh" "pelvis" 0.000008 -0.000008 -7.279371 7.311958 151.060821 -167.004518 0 0 0 0 0 0
$definebone "r_calf" "r_thigh" 22.497074 -0.000006 0.000132 -0.000115 -60.940648 0.000344 0 0 0 0 0 0
$definebone "r_foot" "r_calf" 19.895798 -0.000279 0.000062 -0.016272 31.170395 0.804605 0 0 0 0 0 0
$definebone "r_toe" "r_foot" 7.604253 9.587755 -0.000055 0.000113 89.998835 0.000057 0 0 0 0 0 0
$definebone "spine" "pelvis" 4.841202 -0.006259 0.000003 -0.000344 -4.334541 -0.000229 0 0 0 0 0 0
$definebone "spine1" "spine" 7.882557 -0.011613 -0.000039 0.000573 20.056903 0.000115 0 0 0 0 0 0
$definebone "l_clavicle" "spine1" 15.47599 0.000055 3.288982 -58.042066 179.956251 -0.001318 0 0 0 0 0 0
$definebone "l_upperarm" "l_clavicle" 9.176754 -0.00012 -0.000034 18.748955 -27.583388 -24.432925 0 0 0 0 0 0
$definebone "l_forearm" "l_upperarm" 16.90728 -0.000296 -0.004559 -0.02103 -42.405636 -0.009859 0 0 0 0 0 0
$definebone "l_hand" "l_forearm" 12.71685 0.00029 -0.007191 -8.64313 2.608969 -76.934424 0 0 0 0 0 0
$definebone "l_index1" "l_hand" 6.25514 -0.480213 -2.683718 7.163918 17.355239 -176.875221 0 0 0 0 0 0
$definebone "l_index2" "l_index1" 3.444944 -0.00016 -0.000561 0.011919 -57.768531 -0.00779 0 0 0 0 0 0
$definebone "l_ring1" "l_hand" 6.429256 -0.580963 1.300516 -1.076997 9.959668 -21.181964 0 0 0 0 0 0
$definebone "l_ring2" "l_ring1" 2.714023 0.000088 0.001049 -0.002642 34.094832 -0.012323 0 0 0 0 0 0
$definebone "l_thumb1" "l_hand" 4.042969 1.764885 -2.21158 25.992978 57.534932 -22.051717 0 0 0 0 0 0
$definebone "l_thumb2" "l_thumb1" 2.826765 -0.000002 0.000523 -0.092303 -30.359426 0.005549 0 0 0 0 0 0
$definebone "neck" "spine1" 15.476959 -0.003521 0.000093 -0.001375 14.832847 -0.000115 0 0 0 0 0 0
$definebone "head" "neck" 4.673088 -0.000023 -0.000082 0.000458 -4.887789 -0.000115 0 0 0 0 0 0
$definebone "jaw" "head" 0.802605 3.862389 -0.000009 -0.001432 102.148293 0.000344 0 0 0 0 0 0
$definebone "r_clavicle" "spine1" 15.476013 0.000087 -3.2888 58.042114 179.953778 -0.001318 0 0 0 0 0 0
$definebone "r_upperarm" "r_clavicle" 9.189541 0.006605 -0.024509 -18.775717 -27.594623 24.436079 0 0 0 0 0 0
$definebone "r_forearm" "r_upperarm" 16.906988 -0.000055 -0.004383 -0.0212 -42.402658 -0.009109 0 0 0 0 0 0
$definebone "r_hand" "r_forearm" 12.716861 -0.000561 -0.007168 8.707351 2.631601 76.937184 0 0 0 0 0 0
$definebone "r_index1" "r_hand" 6.254086 -0.481007 2.686495 -7.168899 17.353467 176.869156 0 0 0 0 0 0
$definebone "r_index2" "r_index1" 3.444912 0.000134 -0.000616 0.012149 -57.764754 -0.008874 0 0 0 0 0 0
$definebone "r_ring1" "r_hand" 6.429834 -0.581558 -1.297726 1.092352 9.973366 21.17985 0 0 0 0 0 0
$definebone "r_ring2" "r_ring1" 2.71402 -0.000099 0.00108 -0.003717 34.093859 -0.012714 0 0 0 0 0 0
$definebone "r_thumb1" "r_hand" 4.042153 1.764297 2.213421 -25.988445 57.54933 22.024964 0 0 0 0 0 0
$definebone "r_thumb2" "r_thumb1" 2.826647 0.000008 0.000561 0.017033 -30.358101 0.005784 0 0 0 0 0 0


$sectionframes 30 29

$poseparameter "body_aim_pitch" -45 45 loop 0
$poseparameter "body_aim_yaw" -45 45 loop 0
$poseparameter "move_yaw" -180 180 loop 360

$weightlist "weights_rifle_cb_reload" {
	 "pelvis" 0
	 "flap_front" 0
	 "flap_rear" 0
	 "l_thigh" 0
	 "l_calf" 0
	 "l_foot" 0
	 "l_toe" 0
	 "r_thigh" 0
	 "r_calf" 0
	 "r_foot" 0
	 "r_toe" 0
	 "spine" 1
	 "spine1" 1
	 "l_clavicle" 1
	 "l_upperarm" 1
	 "l_forearm" 1
	 "l_hand" 1
	 "l_index1" 1
	 "l_index2" 1
	 "l_ring1" 1
	 "l_ring2" 1
	 "l_thumb1" 1
	 "l_thumb2" 1
	 "neck" 1
	 "head" 1
	 "jaw" 1
	 "r_clavicle" 1
	 "r_upperarm" 1
	 "r_forearm" 1
	 "r_hand" 1
	 "r_index1" 1
	 "r_index2" 1
	 "r_ring1" 1
	 "r_ring2" 1
	 "r_thumb1" 1
	 "r_thumb2" 1
}

$animation "aim_rifle_up_right_corrective_animation" "brute_anims\aim_rifle_up_right_corrective_animation.smd" {
}

$animation "aim_rifle_up_center_corrective_animation" "brute_anims\aim_rifle_up_center_corrective_animation.smd" {
}

$animation "aim_rifle_up_left_corrective_animation" "brute_anims\aim_rifle_up_left_corrective_animation.smd" {
}

$animation "aim_rifle_mid_right_corrective_animation" "brute_anims\aim_rifle_mid_right_corrective_animation.smd" {
}

$animation "aim_rifle_mid_center_corrective_animation" "brute_anims\aim_rifle_mid_center_corrective_animation.smd" {
}

$animation "aim_rifle_mid_left_corrective_animation" "brute_anims\aim_rifle_mid_left_corrective_animation.smd" {
}

$animation "aim_rifle_down_right_corrective_animation" "brute_anims\aim_rifle_down_right_corrective_animation.smd" {
}

$animation "aim_rifle_down_center_corrective_animation" "brute_anims\aim_rifle_down_center_corrective_animation.smd" {
}

$animation "aim_rifle_down_left_corrective_animation" "brute_anims\aim_rifle_down_left_corrective_animation.smd" {
}

$animation "aim_rifle_up_right_move_corrective_animation" "brute_anims\aim_rifle_up_right_move_corrective_animation.smd" {
}

$animation "aim_rifle_up_center_move_corrective_animation" "brute_anims\aim_rifle_up_center_move_corrective_animation.smd" {
}

$animation "aim_rifle_up_left_move_corrective_animation" "brute_anims\aim_rifle_up_left_move_corrective_animation.smd" {
}

$animation "aim_rifle_mid_right_move_corrective_animation" "brute_anims\aim_rifle_mid_right_move_corrective_animation.smd" {
}

$animation "aim_rifle_mid_center_move_corrective_animation" "brute_anims\aim_rifle_mid_center_move_corrective_animation.smd" {
}

$animation "aim_rifle_mid_left_move_corrective_animation" "brute_anims\aim_rifle_mid_left_move_corrective_animation.smd" {
}

$animation "aim_rifle_down_right_move_corrective_animation" "brute_anims\aim_rifle_down_right_move_corrective_animation.smd" {
}

$animation "aim_rifle_down_center_move_corrective_animation" "brute_anims\aim_rifle_down_center_move_corrective_animation.smd" {
}

$animation "aim_rifle_down_left_move_corrective_animation" "brute_anims\aim_rifle_down_left_move_corrective_animation.smd" {
}

$animation "aim_rifle_up_right_passive_corrective_animation" "brute_anims\aim_rifle_up_right_passive_corrective_animation.smd" {
}

$animation "aim_rifle_up_center_passive_corrective_animation" "brute_anims\aim_rifle_up_center_passive_corrective_animation.smd" {
}

$animation "aim_rifle_up_left_passive_corrective_animation" "brute_anims\aim_rifle_up_left_passive_corrective_animation.smd" {
}

$animation "aim_rifle_mid_right_passive_corrective_animation" "brute_anims\aim_rifle_mid_right_passive_corrective_animation.smd" {
}

$animation "aim_rifle_mid_center_passive_corrective_animation" "brute_anims\aim_rifle_mid_center_passive_corrective_animation.smd" {
}

$animation "aim_rifle_mid_left_passive_corrective_animation" "brute_anims\aim_rifle_mid_left_passive_corrective_animation.smd" {
}

$animation "aim_rifle_down_right_passive_corrective_animation" "brute_anims\aim_rifle_down_right_passive_corrective_animation.smd" {
}

$animation "aim_rifle_down_center_passive_corrective_animation" "brute_anims\aim_rifle_down_center_passive_corrective_animation.smd" {
}

$animation "aim_rifle_down_left_passive_corrective_animation" "brute_anims\aim_rifle_down_left_passive_corrective_animation.smd" {
}

$animation "aim_rifle_up_right_move_passive_corrective_animation" "brute_anims\aim_rifle_up_right_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_up_center_move_passive_corrective_animation" "brute_anims\aim_rifle_up_center_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_up_left_move_passive_corrective_animation" "brute_anims\aim_rifle_up_left_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_mid_right_move_passive_corrective_animation" "brute_anims\aim_rifle_mid_right_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_mid_center_move_passive_corrective_animation" "brute_anims\aim_rifle_mid_center_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_mid_left_move_passive_corrective_animation" "brute_anims\aim_rifle_mid_left_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_down_right_move_passive_corrective_animation" "brute_anims\aim_rifle_down_right_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_down_center_move_passive_corrective_animation" "brute_anims\aim_rifle_down_center_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_down_left_move_passive_corrective_animation" "brute_anims\aim_rifle_down_left_move_passive_corrective_animation.smd" {
}

$animation "aim_rifle_neutral" "brute_anims\aim_rifle_neutral.smd" {
	fps 30
}

$animation "aim_rifle_down_left" "brute_anims\aim_rifle_down_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_left_corrective_animation" 0
}

$animation "aim_rifle_down_center" "brute_anims\aim_rifle_down_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_center_corrective_animation" 0
}

$animation "aim_rifle_down_right" "brute_anims\aim_rifle_down_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_right_corrective_animation" 0
}

$animation "aim_rifle_mid_left" "brute_anims\aim_rifle_mid_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_left_corrective_animation" 0
}

$animation "aim_rifle_mid_center" "brute_anims\aim_rifle_mid_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_center_corrective_animation" 0
}

$animation "aim_rifle_mid_right" "brute_anims\aim_rifle_mid_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_right_corrective_animation" 0
}

$animation "aim_rifle_up_left" "brute_anims\aim_rifle_up_left.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_left_corrective_animation" 0
}

$animation "aim_rifle_up_center" "brute_anims\aim_rifle_up_center.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_center_corrective_animation" 0
}

$animation "aim_rifle_up_right" "brute_anims\aim_rifle_up_right.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_right_corrective_animation" 0
}

$animation "aim_rifle_neutral_move" "brute_anims\aim_rifle_neutral_move.smd" {
	fps 30
}

$animation "aim_rifle_down_left_move" "brute_anims\aim_rifle_down_left_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_left_move_corrective_animation" 0
}

$animation "aim_rifle_down_center_move" "brute_anims\aim_rifle_down_center_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_center_move_corrective_animation" 0
}

$animation "aim_rifle_down_right_move" "brute_anims\aim_rifle_down_right_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_right_move_corrective_animation" 0
}

$animation "aim_rifle_mid_left_move" "brute_anims\aim_rifle_mid_left_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_left_move_corrective_animation" 0
}

$animation "aim_rifle_mid_center_move" "brute_anims\aim_rifle_mid_center_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_center_move_corrective_animation" 0
}

$animation "aim_rifle_mid_right_move" "brute_anims\aim_rifle_mid_right_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_right_move_corrective_animation" 0
}

$animation "aim_rifle_up_left_move" "brute_anims\aim_rifle_up_left_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_left_move_corrective_animation" 0
}

$animation "aim_rifle_up_center_move" "brute_anims\aim_rifle_up_center_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_center_move_corrective_animation" 0
}

$animation "aim_rifle_up_right_move" "brute_anims\aim_rifle_up_right_move.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_right_move_corrective_animation" 0
}

$animation "aim_rifle_neutral_passive" "brute_anims\aim_rifle_neutral_passive.smd" {
	fps 30
}

$animation "aim_rifle_down_left_passive" "brute_anims\aim_rifle_down_left_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_left_passive_corrective_animation" 0
}

$animation "aim_rifle_down_center_passive" "brute_anims\aim_rifle_down_center_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_center_passive_corrective_animation" 0
}

$animation "aim_rifle_down_right_passive" "brute_anims\aim_rifle_down_right_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_right_passive_corrective_animation" 0
}

$animation "aim_rifle_mid_left_passive" "brute_anims\aim_rifle_mid_left_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_left_passive_corrective_animation" 0
}

$animation "aim_rifle_mid_center_passive" "brute_anims\aim_rifle_mid_center_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_center_passive_corrective_animation" 0
}

$animation "aim_rifle_mid_right_passive" "brute_anims\aim_rifle_mid_right_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_right_passive_corrective_animation" 0
}

$animation "aim_rifle_up_left_passive" "brute_anims\aim_rifle_up_left_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_left_passive_corrective_animation" 0
}

$animation "aim_rifle_up_center_passive" "brute_anims\aim_rifle_up_center_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_center_passive_corrective_animation" 0
}

$animation "aim_rifle_up_right_passive" "brute_anims\aim_rifle_up_right_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_right_passive_corrective_animation" 0
}

$animation "aim_rifle_neutral_move_passive" "brute_anims\aim_rifle_neutral_move_passive.smd" {
	fps 30
}

$animation "aim_rifle_down_left_move_passive" "brute_anims\aim_rifle_down_left_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_left_move_passive_corrective_animation" 0
}

$animation "aim_rifle_down_center_move_passive" "brute_anims\aim_rifle_down_center_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_center_move_passive_corrective_animation" 0
}

$animation "aim_rifle_down_right_move_passive" "brute_anims\aim_rifle_down_right_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_down_right_move_passive_corrective_animation" 0
}

$animation "aim_rifle_mid_left_move_passive" "brute_anims\aim_rifle_mid_left_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_left_move_passive_corrective_animation" 0
}

$animation "aim_rifle_mid_center_move_passive" "brute_anims\aim_rifle_mid_center_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_center_move_passive_corrective_animation" 0
}

$animation "aim_rifle_mid_right_move_passive" "brute_anims\aim_rifle_mid_right_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_mid_right_move_passive_corrective_animation" 0
}

$animation "aim_rifle_up_left_move_passive" "brute_anims\aim_rifle_up_left_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_left_move_passive_corrective_animation" 0
}

$animation "aim_rifle_up_center_move_passive" "brute_anims\aim_rifle_up_center_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_center_move_passive_corrective_animation" 0
}

$animation "aim_rifle_up_right_move_passive" "brute_anims\aim_rifle_up_right_move_passive.smd" {
	fps 30
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "aim_rifle_up_right_move_passive_corrective_animation" 0
}

$animation "rifle_move_back_2_idle" "brute_anims\rifle_move_back_2_idle.smd" {
	fps 30
	walkframe 12 LX LY
}

$animation "rifle_move_left_2_idle" "brute_anims\rifle_move_left_2_idle.smd" {
	fps 30
	walkframe 14 LX LY
}

$animation "rifle_move_right_2_idle" "brute_anims\rifle_move_right_2_idle.smd" {
	fps 30
	walkframe 14 LX LY
}

$animation "rifle_move_front_2_idle" "brute_anims\rifle_move_front_2_idle.smd" {
	fps 30
	walkframe 14 LX LY
}

$animation "rifle_walk_back_2_idle" "brute_anims\rifle_walk_back_2_idle.smd" {
	fps 30
	walkframe 14 LX LY
}

$animation "rifle_walk_left_2_idle" "brute_anims\rifle_walk_left_2_idle.smd" {
	fps 30
	walkframe 13 LX LY
}

$animation "rifle_walk_right_2_idle" "brute_anims\rifle_walk_right_2_idle.smd" {
	fps 30
	walkframe 12 LX LY
}

$animation "rifle_walk_front_2_idle" "brute_anims\rifle_walk_front_2_idle.smd" {
	fps 30
	walkframe 16 LX LY
}

$animation "rifle_idle_2_move_back" "brute_anims\rifle_idle_2_move_back.smd" {
	fps 30
	walkframe 12 LX LY
}

$animation "rifle_idle_2_move_left" "brute_anims\rifle_idle_2_move_left.smd" {
	fps 30
	walkframe 14 LX LY
}

$animation "rifle_idle_2_move_right" "brute_anims\rifle_idle_2_move_right.smd" {
	fps 30
	walkframe 14 LX LY
}

$animation "rifle_idle_2_move_front" "brute_anims\rifle_idle_2_move_front.smd" {
	fps 30
	walkframe 10 LX LY
}

$animation "rifle_idle_2_walk_back" "brute_anims\rifle_idle_2_walk_back.smd" {
	fps 30
	walkframe 16 LX LY
}

$animation "rifle_idle_2_walk_left" "brute_anims\rifle_idle_2_walk_left.smd" {
	fps 30
	walkframe 12 LX LY
}

$animation "rifle_idle_2_walk_right" "brute_anims\rifle_idle_2_walk_right.smd" {
	fps 30
	walkframe 13 LX LY
}

$animation "rifle_idle_2_walk_front" "brute_anims\rifle_idle_2_walk_front.smd" {
	fps 30
	walkframe 11 LX LY
}

$animation "rifle_move_back" "brute_anims\rifle_move_back.smd" {
	fps 30
	loop
	walkframe 22 LX LY
}

$animation "rifle_move_left" "brute_anims\rifle_move_left.smd" {
	fps 30
	walkframe 23 LX LY
}

$animation "rifle_move_right" "brute_anims\rifle_move_right.smd" {
	fps 30
	walkframe 24 LX LY
}

$animation "rifle_move_front" "brute_anims\rifle_move_front.smd" {
	fps 30
	walkframe 23 LX LY
}

$sequence "berserk" {
	"brute_anims\berserk.smd"
	activity "ACT_STAND" -1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "thrash_back" {
	"brute_anims\any_thrash_back.smd"
	activity "ACT_DO_NOT_DISTURB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	rotate -90
}

$sequence "thrash_front" {
	"brute_anims\any_thrash_front.smd"
	activity "ACT_DO_NOT_DISTURB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	rotate -90
}

$sequence "takeoff" {
	"brute_anims\any_takeoff.smd"
	activity "ACT_FLY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	rotate -90
}

$sequence "dead_airborne" {
	"brute_anims\any_dead_airborne.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 38 LX LY
	rotate -90
	loop
}

$sequence "land_dead" {
	"brute_anims\any_land_dead.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 38 LX LY
	rotate -90
}

$sequence "infected" {
	"brute_anims\any_infected.smd"
	activity "ACT_DO_NOT_DISTURB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	rotate -90
}

$sequence "infection_wrestle" {
	"brute_anims\any_infection_wrestle.smd"
	activity "ACT_DO_NOT_DISTURB" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	rotate -90
}

$sequence "aimlayer_rifle" {
	"aim_rifle_up_right"
	"aim_rifle_up_center"
	"aim_rifle_up_left"
	"aim_rifle_mid_right"
	"aim_rifle_mid_center"
	"aim_rifle_mid_left"
	"aim_rifle_down_right"
	"aim_rifle_down_center"
	"aim_rifle_down_left"
	blend "body_aim_yaw" -45 45
	blend "body_aim_pitch" -45 45
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aimlayer_rifle_move" {
	"aim_rifle_up_right_move"
	"aim_rifle_up_center_move"
	"aim_rifle_up_left_move"
	"aim_rifle_mid_right_move"
	"aim_rifle_mid_center_move"
	"aim_rifle_mid_left_move"
	"aim_rifle_down_right_move"
	"aim_rifle_down_center_move"
	"aim_rifle_down_left_move"
	blend "body_aim_yaw" -45 45
	blend "body_aim_pitch" -45 45
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aimlayer_rifle_passive" {
	"aim_rifle_up_right_passive"
	"aim_rifle_up_center_passive"
	"aim_rifle_up_left_passive"
	"aim_rifle_mid_right_passive"
	"aim_rifle_mid_center_passive"
	"aim_rifle_mid_left_passive"
	"aim_rifle_down_right_passive"
	"aim_rifle_down_center_passive"
	"aim_rifle_down_left_passive"
	blend "body_aim_yaw" -45 45
	blend "body_aim_pitch" -45 45
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "aimlayer_rifle_move_passive" {
	"aim_rifle_up_right_move_passive"
	"aim_rifle_up_center_move_passive"
	"aim_rifle_up_left_move_passive"
	"aim_rifle_mid_right_move_passive"
	"aim_rifle_mid_center_move_passive"
	"aim_rifle_mid_left_move_passive"
	"aim_rifle_down_right_move_passive"
	"aim_rifle_down_center_move_passive"
	"aim_rifle_down_left_move_passive"
	blend "body_aim_yaw" -45 45
	blend "body_aim_pitch" -45 45
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}

$sequence "rifle_airborne" {
	"brute_anims\rifle_airborne.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle"
	fps 30
	loop
	walkframe 57 LX LY
}

$sequence "rifle_melee" {
	"brute_anims\rifle_melee.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 37 LX LY
}

$sequence "rifle_melee_back" {
	"brute_anims\rifle_melee_back.smd"
	activity "ACT_GESTURE_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
}

$sequence "rifle_melee_airborne" {
	"brute_anims\rifle_melee_airborne.smd"
	activity "ACT_GESTURE_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 31 LX LY
}

$sequence "rifle_idle" {
	"brute_anims\rifle_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle"
	fps 30
	loop
}

$sequence "rifle_idle_passive" {
	"brute_anims\rifle_idle_passive.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_passive"
	fps 30
	loop
}

$sequence "rifle_dive_left" {
	"brute_anims\rifle_dive_left.smd"
	activity "ACT_ROLL_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 54 LX LY
}

$sequence "rifle_dive_right" {
	"brute_anims\rifle_dive_right.smd"
	activity "ACT_ROLL_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 51 LX LY
}

$sequence "rifle_dive_front" {
	"brute_anims\rifle_dive_front.smd"
	activity "ACT_SIGNAL_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 51 LX LY
}

$sequence "rifle_dodge_left" {
	"brute_anims\rifle_dodge_left.smd"
	activity "ACT_STRAFE_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 31 LX LY
}

$sequence "rifle_dodge_right" {
	"brute_anims\rifle_dodge_right.smd"
	activity "ACT_STRAFE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 31 LX LY
}

$sequence "rifle_turn_left" {
	"brute_anims\rifle_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle"
	fps 30
}

$sequence "rifle_turn_right" {
	"brute_anims\rifle_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle"
	fps 30
}

$sequence "rifle_throwgrenade" {
	"brute_anims\rifle_throwgrenade.smd"
	activity "ACT_SPECIAL_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
}

$sequence "rifle_bunker_cover_2_bunker_open_idle" {
	"brute_anims\rifle_bunker_cover_2_bunker_open_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_bunker_cover_exit" {
	"brute_anims\rifle_bunker_cover_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_bunker_cover_enter" {
	"brute_anims\rifle_bunker_cover_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 23 LX LY
}

$sequence "rifle_bunker_cover_idle" {
	"brute_anims\rifle_bunker_cover_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "rifle_bunker_open_2_bunker_cover" {
	"brute_anims\rifle_bunker_open_2_bunker_cover.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 17 LX LY
}

$sequence "rifle_bunker_open_exit" {
	"brute_anims\rifle_bunker_open_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_bunker_open_enter" {
	"brute_anims\rifle_bunker_open_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
}

$sequence "rifle_bunker_open_idle" {
	"brute_anims\rifle_bunker_open_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "rifle_corner_open_right_2_corner_cover_right" {
	"brute_anims\rifle_corner_open_right_2_corner_cover_right.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_corner_open_left_2_corner_cover_left" {
	"brute_anims\rifle_corner_open_left_2_corner_cover_left.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_corner_cover_right_2_corner_open_right" {
	"brute_anims\rifle_corner_cover_right_2_corner_open_right.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_corner_cover_left_2_corner_open_left" {
	"brute_anims\rifle_corner_cover_left_2_corner_open_left.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_corner_open_right_exit" {
	"brute_anims\rifle_corner_open_right_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_corner_open_right_enter" {
	"brute_anims\rifle_corner_open_right_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 15 LX LY
}

$sequence "rifle_corner_open_right_idle" {
	"brute_anims\rifle_corner_open_right_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "rifle_corner_cover_right_exit" {
	"brute_anims\rifle_corner_cover_right_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
}

$sequence "rifle_corner_cover_right_enter" {
	"brute_anims\rifle_corner_cover_right_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "rifle_corner_cover_right_idle" {
	"brute_anims\rifle_corner_cover_right_idle.smd"
	activity "ACT_IDLE_STEALTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "rifle_corner_open_left_exit" {
	"brute_anims\rifle_corner_open_left_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
}

$sequence "rifle_corner_open_left_enter" {
	"brute_anims\rifle_corner_open_left_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 16 LX LY
}

$sequence "rifle_corner_open_left_idle" {
	"brute_anims\rifle_corner_open_left_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "rifle_corner_cover_left_exit" {
	"brute_anims\rifle_corner_cover_left_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 8 LX LY
}

$sequence "rifle_corner_cover_left_enter" {
	"brute_anims\rifle_corner_cover_left_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "rifle_corner_cover_left_idle" {
	"brute_anims\rifle_corner_cover_left_idle.smd"
	activity "ACT_IDLE_STEALTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "rifle_cb_reload" {
	"brute_anims\rifle_cb_reload.smd"
	activity "ACT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_rifle_cb_reload"
}

$sequence "rifle_smash_left" {
	"brute_anims\rifle_smash_left.smd"
	activity "ACT_SPECIAL_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 23 LX LY
}

$sequence "rifle_smash_right" {
	"brute_anims\rifle_smash_right.smd"
	activity "ACT_SPECIAL_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 24 LX LY
}

$sequence "rifle_fire_1" {
	"brute_anims\rifle_fire_1.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_rifle_cb_reload"
}

$sequence "rifle_fire_2" {
	"brute_anims\rifle_fire_2.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_rifle_cb_reload"
}

$sequence "rifle_land_hard_2_idle" {
	"brute_anims\rifle_land_hard_2_idle.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
}

$sequence "rifle_land_hard" {
	"brute_anims\rifle_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 38 LX LY
}

$sequence "rifle_land_soft" {
	"brute_anims\rifle_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 29 LX LY
}

$sequence "rifle_move_2_idle" {
	"rifle_move_back_2_idle"
	"rifle_move_right_2_idle"
	"rifle_move_front_2_idle"
	"rifle_move_left_2_idle"
	"rifle_move_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move"
	node "rifle_move"
}

$sequence "rifle_move_2_idle_passive" {
	"rifle_move_back_2_idle"
	"rifle_move_right_2_idle"
	"rifle_move_front_2_idle"
	"rifle_move_left_2_idle"
	"rifle_move_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move_passive"
	node "rifle_move"
}

$sequence "rifle_walk_2_idle" {
	"rifle_walk_back_2_idle"
	"rifle_walk_right_2_idle"
	"rifle_walk_front_2_idle"
	"rifle_walk_left_2_idle"
	"rifle_walk_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move"
	node "rifle_walk"
}

$sequence "rifle_walk_2_idle_passive" {
	"rifle_walk_back_2_idle"
	"rifle_walk_right_2_idle"
	"rifle_walk_front_2_idle"
	"rifle_walk_left_2_idle"
	"rifle_walk_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move_passive"
	node "rifle_walk"
}

$sequence "rifle_idle_2_move" {
	"rifle_idle_2_move_back"
	"rifle_idle_2_move_right"
	"rifle_idle_2_move_front"
	"rifle_idle_2_move_left"
	"rifle_idle_2_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move"
	node "rifle_move"
}

$sequence "rifle_idle_2_move_passive" {
	"rifle_idle_2_move_back"
	"rifle_idle_2_move_right"
	"rifle_idle_2_move_front"
	"rifle_idle_2_move_left"
	"rifle_idle_2_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move_passive"
	node "rifle_move"
}

$sequence "rifle_idle_2_walk" {
	"rifle_idle_2_walk_back"
	"rifle_idle_2_walk_right"
	"rifle_idle_2_walk_front"
	"rifle_idle_2_walk_left"
	"rifle_idle_2_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move"
	node "rifle_walk"
}

$sequence "rifle_idle_2_walk_passive" {
	"rifle_idle_2_walk_back"
	"rifle_idle_2_walk_right"
	"rifle_idle_2_walk_front"
	"rifle_idle_2_walk_left"
	"rifle_idle_2_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move_passive"
	node "rifle_walk"
}

$sequence "rifle_move" {
	"rifle_move_back"
	"rifle_move_right"
	"rifle_move_front"
	"rifle_move_left"
	"rifle_move_back"
	activity "ACT_RUN_AIM_RIFLE" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move"
	node "rifle_move"
}

$sequence "rifle_move_passive" {
	"rifle_move_back"
	"rifle_move_right"
	"rifle_move_front"
	"rifle_move_left"
	"rifle_move_back"
	activity "ACT_RUN_PASSIVE_RIFLE" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move_passive"
	node "rifle_move_passive"
}

$sequence "rifle_walk" {
	"brute_anims\rifle_walk.smd"
	"brute_anims\rifle_walk_2.smd"
	"brute_anims\rifle_walk_3.smd"
	"brute_anims\rifle_walk_4.smd"
	"brute_anims\rifle_walk_5.smd"
	activity "ACT_WALK" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move"
	node "rifle_walk"
	fps 30
	loop
	walkframe 30 LX LY
}

$sequence "rifle_walk_passive" {
	"brute_anims\rifle_walk_passive.smd"
	"brute_anims\rifle_walk_passive_2.smd"
	"brute_anims\rifle_walk_passive_3.smd"
	"brute_anims\rifle_walk_passive_4.smd"
	"brute_anims\rifle_walk_passive_5.smd"
	activity "ACT_WALK" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	addlayer "aimlayer_rifle_move_passive"
	node "rifle_walk"
	fps 30
	loop
	walkframe 30 LX LY
}
