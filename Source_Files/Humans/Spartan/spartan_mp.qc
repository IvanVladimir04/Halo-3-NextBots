// Created by Crowbar 0.71

$modelname "halo_3/characters/alliance/spartan.mdl"
$scale	1.12
$origin 0 0 0 -90


$BodyGroup "Body"
{
	studio "body_base.smd"
}	

$BodyGroup "Chest"
{
	blank
	studio "chest_mp_cobra.smd"
	studio "chest_mp_scout.smd"
	studio "chest_mp_intruder.smd"
	studio "chest_mp_regulator.smd"
	studio "chest_mp_ryu.smd"
//	studio "chest_mp_bungie.smd"
	studio "chest_mp_katana.smd"
	studio "chest_mp_pilot.smd"
}
$BodyGroup "Head"
{
	studio "helmet_realtime.smd"
	studio "helmet_mp_cobra.smd"
	studio "helmet_mp_scout.smd"
	studio "helmet_mp_intruder.smd"
	studio "helmet_mp_regulator.smd"
	studio "helmet_mp_ryu.smd"
	studio "helmet_mp_markv.smd"
	studio "helmet_mp_odst.smd"
	studio "helmet_mp_marathon.smd"
	studio "helmet_mp_rogue.smd"
	studio "helmet_mp_ninja.smd"
	studio "helmet_mp_pilot.smd"
}	
$BodyGroup "Left Shoulder"
{
	studio "leftshoulder_base.smd"
	studio "leftshoulder_mp_cobra.smd"
	studio "leftshoulder_mp_scout.smd"
	studio "leftshoulder_mp_intruder.smd"
	studio "leftshoulder_mp_regulator.smd"
	studio "leftshoulder_mp_ryu.smd"
	studio "leftshoulder_mp_marathon.smd"
	studio "leftshoulder_mp_ninja.smd"
}
$BodyGroup "Right Shoulder"
{
	studio "rightshoulder_base.smd"
	studio "rightshoulder_mp_cobra.smd"
	studio "rightshoulder_mp_scout.smd"
	studio "rightshoulder_mp_intruder.smd"
	studio "rightshoulder_mp_regulator.smd"
	studio "rightshoulder_mp_ryu.smd"
	studio "rightshoulder_mp_marathon.smd"
	studio "rightshoulder_mp_ninja.smd"
}

$bodygroup "Misc"
{
	studio "halo3_misc.smd"
}



$surfaceprop "flesh"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "\models\halo_3\characters\alliance\spartan\multiplayer\"

$attachment "anim_attachment_RH" "r_hand" 3.5 1 -1 rotate 0 15 0
$attachment "shotgun" "r_hand" 0 0 0 rotate 0 15 0
$attachment "smg" "r_hand" 3 0 0 rotate 0 15 0
$attachment "magnum" "r_hand" 3 0 -0.5 rotate 0 15 0
$attachment "anim_attachment_LH" "l_hand" 1.07 0.00 0.00 rotate 0 0 -180
$attachment "backpack" "spine1" 6.52 -6.15 -0.00 rotate -45 0 -180
$attachment "sidearm" "r_thigh" 9.93 2.00 3.70 rotate 5 180 90
$attachment "eyes" "head" 5.00 4.00 0.00 rotate 0 90 90
$attachment "flashlight_L" "fx_light_flares" -0.50 0.00 0.00 rotate 15 -0 0
$attachment "flashlight_R" "fx_light_flares.001" -0.50 0.00 0.00 rotate 15 -0 0
$attachment "shield_fx" "spine1" 0.00 0.00 -0.00 rotate 0 90 90
$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.

$includemodel "halo_3/characters/alliance/master_chief.mdl"


//REFERENCE
$origin 0 0 0 180
$animation "ref" "spartan_animations\REFERENCE.smd" {
	fps 30
}

$sequence "ragdoll" {
	"spartan_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

$collisionjoints "spartan_v3_physics.smd"
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


$surfaceprop "flesh"


$hboxset "default"

$hbox 3 "pelvis"	    -7.92   -6.36   -7.36     7.89    7.22    7.36
$hbox 6 "l_thigh"	    -0.64   -5.54   -5.36    19.26    5.44    4.19
$hbox 6 "l_calf"	    -2.14   -4.65   -3.79    16.74    4.38    3.96
$hbox 6 "l_foot"	    -0.52   -3.75   -3.28     7.29    6.13    3.71
$hbox 6 "l_toe"	    -0.59   -0.02   -3.85     5.10    4.15    4.27
$hbox 7 "r_thigh"	    -0.64   -5.54   -4.19    19.26    5.44    6.40
$hbox 7 "r_calf"	    -2.14   -4.65   -3.96    16.74    4.38    3.79
$hbox 7 "r_foot"	    -0.52   -3.75   -3.71     7.29    6.13    3.28
$hbox 7 "r_toe"	    -0.59   -0.02   -4.27     5.10    4.15    3.85
$hbox 3 "spine"	    -0.10   -4.05   -6.69    10.12    7.10    6.68
$hbox 2 "spine1"	    -4.98   -8.51  -10.51    13.90    8.23   10.50
$hbox 4 "l_upperarm"	    -3.63   -4.03   -5.39    12.95    4.41    3.82
$hbox 4 "l_forearm"	    -1.59   -3.24   -2.94    12.24    3.55    3.21
$hbox 4 "l_hand"	    -1.30   -2.62   -3.43     5.61    0.95    2.66
$hbox 9 "neck"	    -0.14   -3.15   -3.11     3.01    4.00    3.11
$hbox 1 "head"	    -0.11   -6.54   -4.76    10.16    7.34    5.02
$hbox 5 "r_upperarm"	    -3.63   -4.03   -3.82    12.95    4.41    5.39
$hbox 5 "r_forearm"	    -1.59   -3.24   -3.21    12.24    3.55    2.94
$hbox 5 "r_hand"	    -1.30   -2.62   -2.66     5.61    0.95    2.52


