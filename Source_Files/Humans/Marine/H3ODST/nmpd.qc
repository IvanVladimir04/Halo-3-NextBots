// Created by Crowbar 0.56

$modelname "halo_3/characters/alliance/nmpd_officer.mdl"
$attachment "anim_attachment_RH" "r_hand" 3.5 1 -1 rotate 0 15 0
$attachment "shotgun" "r_hand" 0 0 0 rotate 0 15 0
$attachment "smg" "r_hand" 3 0 0 rotate 0 15 0
$attachment "magnum" "r_hand" 3 0 -0.5 rotate 0 15 0
$attachment "anim_attachment_LH" "l_hand" 1.07 0.00 0.00 rotate 0 0 -180
$attachment "backpack" "spine1" 6.52 -6.15 -0.00 rotate -45 0 -180
$attachment "sidearm" "r_thigh" 9.93 2.00 3.70 rotate 5 180 90
$attachment "eyes" "head" 5.00 4.00 0.00 rotate 0 90 90
$scale	1.0625
$origin 0 0 0 -90
$BodyGroup "Main"
{
	studio "halo3_misc3.smd"
}
$BodyGroup "Body"
{
	studio "nmpd_body.smd"
}
$BodyGroup "Face"
{
	studio "nmpd_face_helmet.smd"
	studio "nmpd_face_visor.smd"
}
$BodyGroup "Helmet"
{	
	studio "nmpd_head_helmet.smd"
	studio "nmpd_head_visor.smd"
	studio "ODST_Helmet_Pilot.smd"
}
$BodyGroup "Chest"
{
	blank
	studio "ODST_Chestplate_Pilot.smd"
}
$BodyGroup "Left Shoulder"
{
	studio "nmpd_left_shoulder_on.smd"
	blank
}
$BodyGroup "Right Shoulder"
{
	studio "nmpd_right_shoulder_on.smd"
	blank
}
$surfaceprop "flesh"

$contents "solid"

$illumposition -1.971 -4.53 30.738

$cdmaterials "models\halo_3_odst\characters\alliance\nmpd\"
$cdmaterials "models\halo_3\characters\alliance\marine\odst\shared\"



// RAGDOLL

$includemodel "halo_3/characters/alliance/marine_h3odst.mdl"



$sequence "reference" {
	"h3_beta\reference_rookie.smd"
	fadein 1
	fadeout 1
	fps 10
}

$sequence "ragdoll" {
	"h3_beta\reference_rookie.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

$scale	1.065

// COLLISION
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



$scale		0.9
$surfaceprop "flesh"
$hboxset "default"

$hbox 3 "pelvis"	    -8.78   -5.01  -10.02     4.57    6.70   10.03
$hbox 6 "l_thigh"	     0.00   -5.53   -4.63    21.51    6.14    5.84
$hbox 7 "r_thigh"	    -3.47   -5.53   -5.84    21.49    6.14    6.39
$hbox 3 "spine"	    -6.17   -6.14   -7.16     9.26    7.77    7.18
$hbox 2 "spine1"	    -4.72  -10.86  -12.76    12.05    8.68   12.36
$hbox 4 "l_clavicle"	    -2.87   -4.11   -2.04     7.48    4.89    4.26
$hbox 4 "l_upperarm"	    -2.32   -4.25   -4.91    12.86    3.97    4.21
$hbox 4 "l_forearm"	    -3.72   -4.25   -3.30    16.45    3.18    3.36
$hbox 4 "l_hand"	    -0.49   -1.33   -2.05     4.35    1.61    1.96
$hbox 8 "neck"	     0.00   -3.86   -3.09     4.85    4.17    3.09
$hbox 1 "head"	    -1.37   -4.84   -4.67     9.12    6.98    4.67
$hbox 5 "r_clavicle"	    -2.90   -3.06   -4.26     7.22    5.45    2.10
$hbox 5 "r_upperarm"	    -2.33   -4.22   -4.19    12.87    3.95    4.91
$hbox 5 "r_forearm"	    -3.72   -4.25   -3.36    12.22    3.18    3.30
$hbox 5 "r_hand"	    -0.74   -1.34   -1.96     4.22    1.48    2.00
$hbox 6 "l_calf"	    -3.99   -3.47   -3.54    18.60    6.10    4.39
$hbox 6 "l_foot"	    -1.83   -3.14   -2.57     5.51    6.69    2.70
$hbox 6 "l_toe"	    -1.18   -0.03   -1.94     4.43    4.69    2.70
$hbox 7 "r_calf"	    -4.02   -3.82   -4.42    18.60    6.10    4.17
$hbox 7 "r_foot"	    -1.83   -3.14   -2.70     5.51    6.69    2.57
$hbox 7 "r_toe"	    -1.18   -0.03   -2.70     4.43    4.69    1.94
$hbox 4 "l_index1"	    -0.45   -0.94   -0.65     2.14    0.37    0.51
$hbox 4 "l_ring1"	    -1.28   -0.82   -0.94     1.97    1.22    1.72
$hbox 4 "l_ring2"	    -0.71   -0.87   -0.85     2.47    0.78    1.72
$hbox 4 "l_thumb1"	    -0.06   -0.90   -1.31     2.55    0.80    1.16
$hbox 5 "r_index1"	    -1.05   -0.92   -0.52     1.92    0.62    0.71
$hbox 5 "r_ring1"	    -1.28   -0.79   -1.72     1.64    1.20    0.94
$hbox 5 "r_ring2"	    -0.68   -0.89   -1.72     2.49    0.78    0.87
$hbox 5 "r_thumb1"	    -0.06   -0.90   -1.16     2.55    0.78    1.28

