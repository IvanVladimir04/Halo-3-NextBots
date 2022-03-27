// Created by Crowbar 0.56

$modelname "halo_3/characters/alliance/dare.mdl"
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
	studio "dare_body.smd"
}
$BodyGroup "Chest"
{
	studio "dare_gear.smd"
}
$BodyGroup "Gear"
{
	studio "dare_beacon.smd"
	blank
}
$BodyGroup "Head"
{
	studio "dare_helmet.smd"
	studio "dare_head_final.smd"
}
$BodyGroup "Emblem"
{
	studio "dare_emblem_oni.smd"
	blank
}

$surfaceprop "flesh"

$contents "solid"

$illumposition -1.971 -4.53 30.738

$cdmaterials "models\halo_3_odst\characters\alliance\odst\dare\"
$cdmaterials "models\halo_3\characters\alliance\marine\odst\shared\"

$animation "ref" "h3_odst_anims\rookie_ref.smd"	
$animation "a_proportions" "h3_odst_anims\dare_ref.smd" subtract "ref" 0
$sequence "proportions" "a_proportions" predelta autoplay


// RAGDOLL

$includemodel "halo_3/characters/alliance/marine_h3odst.mdl"

$jigglebone "c_ponytail1"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 30.000001
	}
}
$jigglebone "c_ponytail2"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 30.000001
	}
}
$jigglebone "c_ponytail3"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 30.000001
	}
}
$jigglebone "c_ponytail4"
{
	is_flexible
	{
		length 25
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		allow_length_flex
		along_stiffness 100
		along_damping 0
		angle_constraint 30.000001
	}
}

$sequence "reference" {
	"h3_odst_anims\rookie_ref.smd"
	fadein 1
	fadeout 1
	fps 10
}

$sequence "ragdoll" {
	"h3_odst_anims\rookie_ref.smd"
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


$hbox 3 "pelvis"	    -7.34   -5.24   -8.00     7.79    5.30    8.23
$hbox 6 "l_thigh"	    -0.26   -5.19   -3.41    19.85    5.24    4.58
$hbox 7 "r_thigh"	    -0.26   -5.19   -4.58    19.85    5.24    4.81
$hbox 2 "spine"	    -3.67   -5.48   -5.38     7.40    6.89    5.40
$hbox 2 "spine1"	    -3.56  -11.20   -6.98    12.56    7.04    7.04
$hbox 4 "l_clavicle"	    -0.04   -4.02   -3.84     7.81    6.37    4.53
$hbox 4 "l_upperarm"	    -1.09   -3.06   -3.59    14.80    3.62    2.23
$hbox 4 "l_forearm"	    -3.96   -3.38   -2.74    10.31    3.06    2.90
$hbox 4 "l_hand"	    -0.72   -1.35   -1.97     4.23    1.20    1.20
$hbox 8 "neck"	     0.00   -2.09   -2.13     3.83    1.87    2.09
$hbox 1 "head"	    -0.78   -5.13   -3.91     8.18    4.97    3.77
$hbox 5 "r_clavicle"	    -0.60   -3.95   -4.53     7.72    6.07    3.97
$hbox 5 "r_upperarm"	    -1.18   -2.83   -2.19    14.74    3.64    2.67
$hbox 5 "r_forearm"	    -4.04   -3.39   -2.74    10.31    3.05    2.72
$hbox 5 "r_hand"	    -0.74   -1.33   -1.20     4.22    1.22    1.98
$hbox 6 "l_calf"	    -4.12   -4.00   -2.90    17.54    5.11    3.39
$hbox 6 "l_foot"	    -0.09   -3.20   -1.78     5.14    7.16    2.10
$hbox 7 "r_calf"	    -4.12   -4.01   -3.43    17.55    5.11    2.90
$hbox 7 "r_foot"	    -0.09   -3.18   -2.08     5.14    7.19    1.91
$hbox 8 "collar"	     0.00   -1.96   -2.04     3.38    2.32    2.04
$hbox 4 "l_thumb_low"	    -1.45   -0.60   -0.49     0.00    0.80    0.60
$hbox 5 "r_thumb_low"	     0.00   -0.78   -0.58     1.45    0.71    0.51
