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
$attachment "backpack" "spine1" 8.00 -14.00 0.00 rotate 45 -180 -90
$attachment "sidearm" "r_thigh" 7.00 0.00 10.00 rotate -10 0 -90
$attachment "eyes" "head" 8.32 12.26 -0.00 rotate 0 70 90
$attachment "jetpack_R" "spine1" -7 -16 -10.5 rotate 0 -170 180
$attachment "jetpack_L" "spine1" -7 -16 10 rotate 0 -170 180

$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.

$include "armored_pistol.qci"
$include "armored_rifle.qci"
$include "armored_support.qci"
$include "berserk.qci"
$include "combat_hammer.qci"
$include "combat_rifle.qci"
$include "combat_pistol.qci"
$include "combat_support.qci"
$include "combat_unarmed.qci"
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