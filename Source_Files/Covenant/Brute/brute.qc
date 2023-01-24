// Created by Crowbar 0.71

$modelname "halo_3/characters/covenant/brute.mdl"
$scale 1.065
$origin 0 0 0 -90
$bodygroup "Main"
{
    studio "halo_3_brute_misc.smd"
}
$bodygroup "Body"
{
    studio "brute_body.smd"
    studio "brute_body_chiefstalker.smd"
}
$bodygroup "Armor"
{
    blank
    studio "brute_armor_stalker.smd"
    studio "brute_armor_minor.smd"
    studio "brute_armor_major.smd"
    studio "brute_armor_jumppack.smd"
    studio "brute_armor_chieftain.smd"
    studio "brute_armor_chiefweapon.smd"
}
$bodygroup "Helmet"
{
    blank
    studio "brute_helmet_stalker.smd"
    studio "brute_helmet_minor.smd"
    studio "brute_helmet_major.smd"
    studio "brute_helmet_jumppack.smd"
    studio "brute_helmet_chieftain.smd"
    studio "brute_helmet_chiefweapon.smd"
}
$bodygroup "Extra_armor"
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
$bodygroup "Gauntlets"
{
    blank
    studio "brute_etc_armor_gauntlets.smd"
}
$bodygroup "Handguard"
{
    blank
    studio "brute_etc_armor_handguard.smd"
}
$bodygroup "Face_hair"
{
    blank
    studio "brute_facehair.smd"
}
$bodygroup "Head"
{
    studio "brute_head.smd"
    blank
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "\models\halo_3\characters\covenant\brute\"
$texturegroup "skinfamilies"
{
	{ "brute_metal"					"minor_major_armor"						"jumppack_armor"		"chieftain_armor" }
	{ "brute_metal_minor"			"minor_major_armor_minor" 				"jumppack_armor"		"chieftain_armor" }
	{ "brute_metal_major" 			"minor_major_armor_major"				"jumppack_armor"	"chieftain_armor_sp"}
	{ "brute_metal_captain" 		"minor_major_armor_captain"				"jumppack_armor" 	"chieftain_armor_sp"}
	{ "brute_metal_captain_major" 	"minor_major_armor_captain_major"		"jumppack_armor"	"chieftain_armor_warchieftain"}
	{ "brute_metal_ultra" 			"minor_major_armor_ultra"				"jumppack_armor"		"chieftain_armor" }
	{ "brute_metal_bodyguard" 		"minor_major_armor_bodyguard"			"jumppack_armor"		"chieftain_armor" }
	{ "brute_metal_jumppack_major" 	"minor_major_armor_jumppack_major"		"jumppack_armor_major"		"chieftain_armor" }
}

$attachment "anim_attachment_RH" "r_hand" 8.50 2.06 1.06 rotate 0 15 0
$attachment "anim_attachment_LH" "l_hand" 9.00 2.50 -1.00 rotate -0 0 -180
$attachment "backpack" "spine1" 8.52 -11.91 0.00 rotate -45 0 -180
$attachment "sidearm" "r_thigh" 10.45 4.00 7.25 rotate 10 180 90
$attachment "eyes" "head" 8.32 12.26 -0.00 rotate 0 70 90
$attachment "jetpack_R" "spine1" -7 -16 -10.5 rotate 0 -170 180
$attachment "jetpack_L" "spine1" -7 -16 10 rotate 0 -170 180
$attachment "shield_fx" "spine1" 0.00 0.00 -0.00 rotate 0 90 90

$attachment "fx_exhaust_front_r" "spine1" -2.62 31.23 -7 rotate 0 -176 90
$attachment "fx_exhaust_front_l" "spine1" -2.62 31.23 7 rotate 0 -176 90

$attachment "fx_jetpack_destruction" "spine1" 0.38 -15.71 0 rotate 0 -135 -90
$attachment "fx_jump_l" "spine1" -14.56 -11.23 10.5 rotate -174 8.29 -81
$attachment "fx_jump_r" "spine1" -14.64 -11.24 -10.51 rotate 6.39 -172 81
$attachment "fx_jump_light" "spine1" -21.89 -17.1 0 rotate 0 -140 -90

$attachment "fx_shield_collapse" "spine1" 1.82 0 0 rotate 0 95 90
$attachment "fx_shield_down01" "spine1" 6.89 10.61 0 rotate 0 74 -90
$attachment "fx_shield_down02" "spine1" 4.28 -7.44 -10 rotate 30 -106 -90
$attachment "fx_shield_down03" "spine1" 4.28 -7.44 10 rotate -30 -106 -90

$attachment "hammer_detonation" "r_hand" -4.23 -2.94 45.35 rotate -7.46 -3.16 7.63

$attachment "infection_back" "spine1" 11.55 -6.75 3.89 rotate 0 -80 -90
$attachment "infection_front" "spine1" 7.65 8.49 2.48 rotate 0 88.6 90

$attachment "shield_recharge" "pelvis" -9.02 0.96 0 rotate 0 0 90

$attachment "spore_abs" "spine" 3.48 4.42 0.55 rotate 30.5 73.6 -117
$attachment "spore_back01" "spine1" 9.17 -3.98 -4.25 rotate 30.5 -48.5 117
$attachment "spore_back02" "spine1" 4.84 -4.74 4.48 rotate -33.9 -46.2 58.4
$attachment "spore_chest" "spine1" 6.7 4.82 4.7 rotate -19.5 45.3 -74
$attachment "spore_head" "head" 4.16 6.49 0.05 rotate 0 25 90
$attachment "spore_l_knee" "l_calf" 11.15 0.94 0.15 rotate 5.69 161 95.2
$attachment "spore_l_shoulder" "l_upperarm" 0.6 -0.35 1.69 rotate -55.6 136 -44.1
$attachment "spore_l_thigh" "l_thigh" 7.59 3.81852 0.39 rotate 5.69 99.9 95.2
$attachment "spore_neck" "spine1" 15.87 -0.05 -0.16 rotate 30.5 -48.5 117
$attachment "spore_r_forearm" "r_forearm" 8.7 0.57 -0.34 rotate 34.7 -64.3 157
$attachment "spore_r_knee" "r_thigh" 25.68 -7.25 0.95 rotate -5.69 99.9 84.8
$attachment "spore_r_shoulder" "r_upperarm" 0.25 -0.35 -1.3 rotate 145 73.3 -22.7
$attachment "spore_r_thigh" "r_thigh" 4.77 3.54 -0.49 rotate -5.69 99.9 84.8

$attachment "trans_muffin_l_arm01" "l_upperarm" 7.85 3.98 2.18 rotate 7.08 25.6 -32.6
$attachment "trans_muffin_l_thigh" "l_thigh" 1.57 1.62 -3.14 rotate -18.2 81.3 -62.4
$attachment "trans_muffin_r_arm" "r_upperarm" 11.08 -0.67 -2.29 rotate 12.9 -15.1 156
$attachment "trans_muffin_r_thigh" "l_thigh" 0.52 -2.86 18.83 rotate -24.3 -34.7 101
$attachment "trans_muffin_torso_back01" "neck" 1.72 -3.88 -2.37 rotate -147 54.9 59.8
$attachment "trans_muffin_torso_back02" "spine1" 12.78 -8.1 4.18 rotate 8.84 25.1 91.6
$attachment "trans_muffin_torso_back03" "r_upperarm" -5.59 0.84 -0.3 rotate 6.27 86 -134
$attachment "trans_muffin_torso_back04" "spine1" 10.49 -7.57 -8.7 rotate 68.6 -5.7 83.8
$attachment "trans_muffin_torso_back05" "spine1" 9.55 -8.76 -4.15 rotate 164 0.785 92.4
$attachment "trans_muffin_torso_back06" "spine1" 9.31 -8.6 2.36 rotate -136 26.4 87.8
$attachment "trans_muffin_torso_back07" "spine1" 8.05 -7.84 8.77 rotate 13.7 -0.435 67.7
$attachment "trans_muffin_torso_back08" "spine1" 3.66 -8.17 4.56 rotate 104 9.38 99.5
$attachment "trans_muffin_torso_back09" "spine1" 3.17 -6.76 8.9 rotate -28.6 153 -54.5
$attachment "trans_muffin_torso_back10" "spine1" 1.89 -6.89 6.8 rotate -14.8 151 -82.2
$attachment "trans_muffin_torso_back11" "spine1" 4.38 -7.97 -7.29 rotate 104 9.38 99.5
$attachment "trans_muffin_torso_back12" "spine1" 2.66 -5.97 -9.1 rotate -170 -24.5 32.1
$attachment "trans_muffin_torso_back13" "spine1" 0.5 -6.57 -5.16 rotate 1.19 166 -93.2
$attachment "trans_muffin_torso_back14" "spine" 6.46 -4.33 -3.3 rotate 162 -1.59 74.4
$attachment "trans_muffin_torso_back15" "spine" 7.34 -4.36 -0.75 rotate 164 0 86.5
$attachment "trans_muffin_torso_back16" "spine" 2.9 -4.07 1.57 rotate -16.3 -147 -93.8
$attachment "trans_muffin_torso_front01" "spine1" 10.89 6.67 7.42 rotate -121 -28.2 -100
$attachment "trans_muffin_torso_front02" "l_upperarm" -3.51 -0.77 0.73 rotate -44 40.8 -1.61
$attachment "trans_muffin_torso_front03" "spine1" 11.28 7.64 -2.43 rotate 35.2 -55.9 4.96
$attachment "trans_muffin_torso_front04" "r_upperarm" -0.91 -3.75 2.03 rotate -26 -58.4 -153
$attachment "trans_muffin_torso_front05" "spine1" 2.15 10.05 -6.86 rotate 127 52.1 48.2
$attachment "trans_muffin_torso_front06" "spine1" -1.18 12.1 -1.43 rotate -56.5 -3.93 1.59
$attachment "trans_muffin_torso_front07" "spine1" -1.13 10.26 5.43 rotate 15.8 2.14 32.2
$attachment "trans_muffin_torso_front08" "spine1" 3.8 8.67 8.18 rotate -24.9 -145 33.4
$attachment "trans_muffinl_arm02" "l_upperarm" 11.93 -0.54 2.13 rotate 9.93 -31.6 37.9

$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.

$include "armored_pistol.qci"
$include "armored_rifle.qci"
$include "armored_support.qci"
$include "armored_unarmed.qci"
$include "berserk.qci"
$include "combat_hammer.qci"
$include "combat_rifle.qci"
$include "combat_pistol.qci"
$include "combat_support.qci"
$include "combat_unarmed.qci"
$include "patrol_unarmed.qci"
$include "common.qci"

//$poseparameter "move_yaw" -180 180 loop 360
//$PoseParameter "aim_yaw" -45 45 0
//$PoseParameter "aim_pitch" -90 90 0

//REFERENCE
$origin 0 0 0 180
$animation "ref" "brute_animations\REFERENCE.smd" {
	fps 30
}

$sequence "ragdoll" {
	"brute_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

$collisionjoints "brute_h3_physics.smd"
{
	$mass 1500.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "pelvis"


	$jointconstrain "l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "l_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "l_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "l_calf" x limit -10.00 10.00 0.00
	$jointconstrain "l_calf" y limit 0.00 0.00 0.00
	$jointconstrain "l_calf" z limit -60.00 5.00 0.00

	$jointrotdamping "r_thigh" 0.00
	$jointconstrain "r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "r_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "r_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "r_calf" x limit -10.00 10.00 0.00
	$jointconstrain "r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "r_calf" z limit -60.00 6.00 0.00

	$jointconstrain "r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "r_foot" y limit -25.00 6.00 0.00
	$jointconstrain "r_foot" z limit -15.00 35.00 0.00

	$jointconstrain "spine1" x limit -20.00 20.00 0.00
	$jointconstrain "spine1" y limit -20.00 20.00 0.00
	$jointconstrain "spine1" z limit -10.00 30.00 0.00

	$jointconstrain "l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "l_upperarm" y limit -35.00 20.00 0.00
	$jointconstrain "l_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "l_forearm" z limit -28.00 55.00 0.00

	$jointconstrain "head" x limit -30.00 30.00 0.00
	$jointconstrain "head" y limit -25.00 25.00 0.00
	$jointconstrain "head" z limit -15.00 35.00 0.00

	$jointconstrain "r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "r_upperarm" y limit -20.00 35.00 0.00
	$jointconstrain "r_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "r_forearm" z limit -28.00 55.00 0.00

	$jointconstrain "r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "r_hand" y limit -10.00 30.00 0.00
	$jointconstrain "r_hand" z limit -20.00 30.00 0.00

	$jointconstrain "l_hand" x limit -37.00 37.00 0.00
	$jointconstrain "l_hand" y limit -10.00 30.00 0.00
	$jointconstrain "l_hand" z limit -20.00 30.00 0.00

	$jointconstrain "l_foot" x limit 0.00 0.00 0.00
	$jointconstrain "l_foot" y limit -19.00 19.00 0.00
	$jointconstrain "l_foot" z limit -15.00 35.00 0.00
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
		"jointmerge"		"pelvis,spine3"
		"jointmerge"		"pelvis,spine1"
	}
}
$origin 0 0 0 -90
$scale	0.7

// .qc block generated by HLMV begins.

$surfaceprop "flesh"


$hboxset "default"

$hbox 3 "pelvis"	   -26.64   -9.18  -12.54     9.68   16.12   12.54
$hbox 3 "spine"	    -6.43   -7.81  -12.75    11.81   16.36   12.75
$hbox 2 "spine1"	   -25.86  -21.00  -17.28    25.95   29.92   17.28
$hbox 5 "r_clavicle"	     0.00   -5.39   -3.93    16.69    7.91    6.18
$hbox 5 "r_upperarm"	    -7.68   -9.11  -13.31    23.20    8.41    8.43
$hbox 5 "r_forearm"	    -3.28   -6.80   -6.85    17.29    7.43    6.77
$hbox 5 "r_hand"	     0.00   -5.09   -4.75    13.95    5.95    5.12
$hbox 5 "r_thumb1"	     0.00   -2.59   -0.94     5.69    1.44    2.40
$hbox 5 "r_thumb2"	    -0.08   -1.16   -0.60     4.25    0.89    1.43
$hbox 5 "r_ring1"	    -2.15   -1.30   -2.40     7.00    3.57    4.56
$hbox 5 "r_ring2"	    -1.29   -1.31   -1.45     6.03    2.09    3.14
$hbox 5 "r_index1"	     0.00   -1.50   -1.83     6.15    2.00    0.60
$hbox 5 "r_index2"	    -0.77    0.00   -1.38     4.30    1.93    0.58
$hbox 8 "neck"	    -5.19  -12.21   -6.87     8.00    9.20    6.87
$hbox 1 "head"	     0.88   -2.64   -6.13    10.57   16.15    6.13
$hbox 1 "jaw"	     0.00   -5.87   -4.46    13.44    1.95    4.46
$hbox 4 "l_clavicle"	     0.00   -5.62   -6.20    16.68    7.91    3.91
$hbox 4 "l_upperarm"	    -7.68   -9.10   -8.40    23.20    8.42   13.44
$hbox 4 "l_forearm"	    -9.62   -6.80   -6.77    32.81    9.72    8.27
$hbox 4 "l_hand"	     0.00   -5.09   -5.12    13.95    5.95    4.75
$hbox 4 "l_thumb1"	     0.00   -2.59   -2.40     5.69    1.44    0.95
$hbox 4 "l_thumb2"	    -0.08   -1.16   -1.43     4.25    0.90    0.60
$hbox 4 "l_ring1"	    -2.15   -1.30   -4.56     7.00    3.58    2.40
$hbox 4 "l_ring2"	    -1.29   -1.31   -3.14     6.03    2.09    1.45
$hbox 4 "l_index1"	     0.00   -1.50   -0.60     6.15    1.99    1.83
$hbox 4 "l_index2"	    -0.77    0.00   -0.57     4.30    1.93    1.38
$hbox 7 "r_thigh"	   -11.55  -11.88  -11.73    43.40   14.15    8.73
$hbox 7 "r_calf"	   -10.45   -9.92   -7.72    21.19   19.00    7.45
$hbox 7 "r_foot"	     0.00   -2.95   -6.14     8.10   13.25    6.44
$hbox 7 "r_toe"	    -0.30   -0.26   -6.35     8.06    4.56    7.15
$hbox 6 "l_thigh"	   -11.55  -11.88   -8.73    43.40   14.15   11.73
$hbox 6 "l_calf"	   -10.45   -9.92   -7.45    21.19   19.00    7.72
$hbox 6 "l_foot"	     0.00   -2.95   -6.44     8.10   13.24    6.14
$hbox 6 "l_toe"	    -0.30   -0.26   -7.15     8.06    4.56    6.35