// Created by Crowbar 0.71

$modelname "halo_3/characters/alliance/marine_h3odst.mdl"
$scale 1.065
$origin 0 0 0 -90


$bodygroup "Marine"
{
	studio "Marine_reference.smd"
}
$bodygroup "Arms"
{
	studio "Marine_Arms_Standard.smd"
	studio "arms_barehalf.smd"
}
$bodygroup "Backpack"
{
	blank
	studio "Marine_Commpack.smd"
}
$bodygroup "Chestplate"
{
	blank
	studio "Marine_Chestplate_Pilot.smd"
}
$bodygroup "Armor"
{
	blank
	studio "Marine_Armor.smd"
}
$bodygroup "Head"
{
	studio "Marine_Head_Arroyo.smd"
	studio "Marine_Head_Butkus.smd"
	studio "Marine_Head_Fones.smd"
	studio "Marine_Head_Gough.smd"
	studio "Marine_Head_Isla.smd"
	studio "Marine_Head_Smith.smd"
	studio "Marine_Head_Walter.smd"
	studio "Marine_Head_Wu.smd"
	studio "Marine_Head_Johnson.smd"
	studio "Marine_Head_Stacker.smd"
	studio "Marine_Head_Reynolds.smd"
}
$bodygroup "Helmet"
{
	blank
	studio "Marine_Helmet.smd"
	studio "Marine_Helmet_Goggles.smd"
	studio "Marine_Helmet_Pilot.smd"
}
$bodygroup "Packs"
{
	blank
	studio "Marine_Packs_Chest.smd"
	studio "Marine_Packs_Thigh.smd"
	studio "Marine_Packs_Waist.smd"
}
$bodygroup "Misc"
{
	studio "halo3_marine_misc.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "\models\halo_3\characters\alliance\marine\"
$texturegroup "Arms"
{
	{ "bare_arms"  }
	{ "bare_arms_2" }
	{ "bare_arms_3" }
	{ "bare_arms_4" }
	{ "bare_arms_5" }
	{ "bare_arms_6" }
}
$attachment "anim_attachment_RH" "r_hand" 3.5 1 -1 rotate 0 15 0
$attachment "shotgun" "r_hand" 0 0 0 rotate 0 15 0
$attachment "smg" "r_hand" 3 0 0 rotate 0 15 0
$attachment "magnum" "r_hand" 3 0 -0.5 rotate 0 15 0
$attachment "anim_attachment_LH" "l_hand" 1.07 0.00 0.00 rotate 0 0 -180
$attachment "backpack" "spine1" 6.52 -6.15 -0.00 rotate -45 0 -180
$attachment "sidearm" "r_thigh" 9.93 2.00 3.70 rotate 5 180 90
$attachment "eyes" "head" 5.00 4.00 0.00 rotate 0 90 90
$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.

$include "combat_rifle_h3odst.qci"
$include "combat_missile_h3odst.qci"
$include "combat_pistol_h3odst.qci"
$include "combat_unarmed.qci"
$include "combat_hammer.qci"
$include "combat_turret.qci"
$include "crouch_missile_h3odst.qci"
$include "crouch_pistol_h3odst.qci"
$include "crouch_hammer.qci"
$include "crouch_rifle_h3odst.qci"
$include "patrol_unarmed.qci"
$include "common.qci"


//REFERENCE
$origin 0 0 0 180
$animation "ref" "marine_animations\REFERENCE.smd" {
	fps 30
}

$sequence "ragdoll" {
	"marine_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

$collisionjoints "marine_h3_physics.smd"
{
	$mass 90.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "pelvis"

	$jointconstrain "spine1" x limit -48.00 48.00 0.00
	$jointconstrain "spine1" y limit -25.00 25.00 0.00
	$jointconstrain "spine1" z limit -25.00 50.00 0.00

	$jointconstrain "r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "r_upperarm" y limit -10.00 95.00 0.00
	$jointconstrain "r_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "r_forearm" z limit -75.00 4.00 0.00

	$jointconstrain "l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "l_upperarm" y limit -95.00 15.00 0.00
	$jointconstrain "l_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "l_forearm" z limit -75.00 4.00 0.00

	$jointconstrain "l_hand" x limit -37.00 37.00 0.00
	$jointconstrain "l_hand" y limit 0.00 0.00 0.00
	$jointconstrain "l_hand" z limit -57.00 59.00 0.00

	$jointconstrain "r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "r_hand" y limit 0.00 0.00 0.00
	$jointconstrain "r_hand" z limit -57.00 70.00 0.00

	$jointrotdamping "r_thigh" 0.00
	$jointconstrain "r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "r_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "r_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "r_calf" x limit 0.00 0.00 0.00
	$jointconstrain "r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "r_calf" z limit -84.00 1.00 0.00

	$jointconstrain "head" x limit -30.00 30.00 0.00
	$jointconstrain "head" y limit -25.00 25.00 0.00
	$jointconstrain "head" z limit -13.00 30.00 0.00

	$jointconstrain "l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "l_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "l_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "l_calf" y limit 0.00 0.00 0.00
	$jointconstrain "l_calf" z limit -84.00 0.00 0.00

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

$scale 0.9

// .qc block generated by HLMV begins.

$surfaceprop "flesh"


$hboxset "default"

$hbox 3 "pelvis"	    -7.52   -5.42   -6.86     9.63    6.90    6.77
$hbox 6 "l_thigh"	    -2.26   -5.71   -4.13    20.75    5.30    7.69
$hbox 6 "l_calf"	    -3.48   -4.18   -3.13    18.49    4.75    3.77
$hbox 6 "l_foot"	    -1.11   -3.79   -2.33     5.49    8.60    2.58
$hbox 6 "l_toe"	    -3.40    0.00   -2.33     3.29    3.89    2.58
$hbox 7 "r_thigh"	    -2.25   -5.70   -7.60    20.75    5.31    3.59
$hbox 7 "r_calf"	    -3.46   -4.12   -3.84    18.49    4.72    3.32
$hbox 7 "r_foot"	    -1.11   -3.77   -2.48     5.49    8.63    2.42
$hbox 7 "r_toe"	    -3.46    0.00   -2.48     3.32    3.89    2.42
$hbox 3 "spine"	    -3.88   -4.13   -5.88     5.10    6.34    5.79
$hbox 2 "spine1"	    -1.42   -7.35   -7.34    11.06    5.61    7.34
$hbox 4 "l_clavicle"	    -6.15   -3.31   -4.64     8.66    3.66    4.37
$hbox 4 "l_upperarm"	    -2.41   -3.79   -3.04    13.65    3.63    4.33
$hbox 4 "l_forearm"	    -1.75   -2.43   -2.46    10.53    2.42    2.59
$hbox 4 "l_hand"	    -1.45   -1.64   -2.06     3.65    1.66    1.92
$hbox 1 "head"	    -1.31   -5.76   -4.72    10.25    6.55    4.73
$hbox 1 "jaw"	    -0.50   -1.32   -2.58     3.80    2.76    2.54
$hbox 5 "r_clavicle"	     0.00   -3.31   -2.57     8.74    3.65    4.05
$hbox 5 "r_upperarm"	    -2.34   -3.79   -4.39    13.74    3.63    2.99
$hbox 5 "r_forearm"	    -1.70   -2.40   -2.63    10.67    2.44    2.36
$hbox 5 "r_hand"	    -1.40   -1.69   -2.04     3.70    1.59    2.04
$hbox 4 "l_index1"	    -1.02   -0.75   -0.92     2.15    0.34    0.30
$hbox 4 "l_ring1"	    -1.35   -0.48   -1.87     2.14    1.53    1.85
$hbox 4 "l_ring2"	    -1.41   -0.91   -0.96     2.63    1.92    1.84
$hbox 4 "l_thumb1"	    -0.25   -0.91   -1.05     2.75    0.81    1.15
$hbox 4 "l_thumb2"	    -0.64   -0.57   -0.92     2.07    0.47    0.67
$hbox 5 "r_index1"	    -1.00   -0.83   -0.32     2.17    0.26    0.90
$hbox 5 "r_ring1"	    -1.36   -0.57   -1.84     2.14    1.45    1.87
$hbox 5 "r_ring2"	    -1.48   -0.95   -1.84     2.55    1.87    0.96
$hbox 5 "r_thumb1"	    -0.27   -0.88   -1.23     2.74    0.84    0.97
$hbox 5 "r_thumb2"	    -0.65   -0.54   -0.75     2.02    0.48    0.83
