// Created by Crowbar 0.71

$modelname "halo_3/characters/alliance/elite.mdl"
$scale 1.065
$origin 0 0 0 -90


$bodygroup "Body"
{
	studio "body_base.smd"
}
$bodygroup "Chest"
{
	blank
	studio "chest_spec_ops.smd"
	studio "chest_mp_blades.smd"
	studio "chest_mp_predator.smd"
	studio "chest_mp_raptor.smd"
	studio "chest_mp_scythe.smd"
}
$bodygroup "Left Shoulder"
{
	studio "leftshoulder_base.smd"
	studio "leftshoulder_spec_ops.smd"
	studio "leftshoulder_mp_blades.smd"
	studio "leftshoulder_mp_predator.smd"
	studio "leftshoulder_mp_raptor.smd"
	studio "leftshoulder_mp_scythe.smd"
	blank
}
$bodygroup "Right Shoulder"
{
	studio "rightshoulder_base.smd"
	studio "rightshoulder_spec_ops.smd"
	studio "rightshoulder_mp_blades.smd"
	studio "rightshoulder_mp_predator.smd"
	studio "rightshoulder_mp_raptor.smd"
	studio "rightshoulder_mp_scythe.smd"
	blank
}
$bodygroup "Head"
{
	studio "head_base.smd"
	studio "head_spec_ops.smd"
	studio "head_mp_blades.smd"
	studio "head_mp_predator.smd"
	studio "head_mp_raptor.smd"
	studio "head_mp_scythe.smd"
	studio "head_soc.smd"
}
$bodygroup "Helmet"
{
	blank
	studio "helmet_base.smd"
}
$bodygroup "Lights"
{
	studio "lights_base.smd"
}

$bodygroup "Decals"
{
	studio "decals_base.smd"
	blank
}

$bodygroup "Other"
{
	studio "d_torso_base_sp.smd"
	studio "d_torso_base.smd"
}

$bodygroup "Misc"
{
	studio "halo3_misc_elite.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "\models\halo_3\characters\alliance\elite\"
$texturegroup "skinfamilies"
{
	{ "mp_elite_armor"				"sp_raptor"				"mp_predator"			"mp_raptor"				"mp_blades"				"mp_scythe"		 }
	{ "mp_elite_armor_minor"		"sp_raptor_minor"		"mp_predator_minor"		"mp_raptor_minor"		"mp_blades_minor"		"mp_scythe_minor"		 }
	{ "sp_elite_armor_minor"		"sp_raptor_minor"		"mp_predator_minor"		"mp_raptor_minor"		"mp_blades_minor"		"mp_scythe_minor"		 }
	{ "sp_elite_armor_minor_assault"		"sp_raptor_minor"		"mp_predator_minor"		"mp_raptor_minor"		"mp_blades_minor"		"mp_scythe_minor"		 }
	{ "mp_elite_armor_major" 		"sp_raptor_major"		"mp_predator_major"		"mp_raptor_major"		"mp_blades_major"		"mp_scythe_major"		 }
	{ "sp_elite_armor_major" 		"sp_raptor_major"		"mp_predator_major"		"mp_raptor_major"		"mp_blades_major"		"mp_scythe_major"		 }
	{ "sp_elite_armor_major_assault" 		"sp_raptor_major"		"mp_predator_major"		"mp_raptor_major"		"mp_blades_major"		"mp_scythe_major"		 }
	{ "mp_elite_armor_zealot" 		"sp_raptor_zealot"		"mp_predator_zealot"	"mp_raptor_zealot"		"mp_blades_zealot"		"mp_scythe_zealot"		 }
	{ "mp_elite_armor_ultra" 		"sp_raptor_ultra"		"mp_predator_ultra"		"mp_raptor_ultra"		"mp_blades_ultra"		"mp_scythe_ultra"		 }
	{ "mp_elite_armor_specops" 		"sp_raptor_specops"		"mp_predator_specops"	"mp_raptor_specops"		"mp_blades_specops"		"mp_scythe_specops"		 }
}

$attachment "anim_attachment_RH" "r_hand" 8.50 2.06 1.06 rotate 0 15 0
$attachment "anim_attachment_LH" "l_hand" 9.00 2.50 -1.00 rotate -0 0 -180
$attachment "backpack" "spine1" 11.79 -14.91 -0.00 rotate -45 0 -180
$attachment "sidearm" "r_thigh" 10.06 0.00 6.39 rotate -10 180 90
$attachment "sidearm_L" "l_thigh" 10.71 0.00 -6.81 rotate -10 180 -90
$attachment "sword_holster" "r_thigh" 10.71 0.00 6.81 rotate 90 90 0
$attachment "eyes" "head" 6.00 11.26 0.00 rotate -0 70 90
$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.

$include "combat_unarmed.qci"
$include "combat_turret.qci"
$include "combat_sword.qci"
$include "combat_ball.qci"
$include "combat_dual.qci"
$include "combat_hammer.qci"
$include "combat_missile.qci"
$include "combat_pistol.qci"
$include "combat_rifle.qci"
$include "combat_support.qci"
$include "crouch_sword.qci"
$include "crouch_support.qci"
$include "crouch_rifle.qci"
$include "crouch_pistol.qci"
$include "crouch_missile.qci"
$include "crouch_ball.qci"
$include "crouch_dual.qci"
$include "crouch_hammer.qci"
$include "patrol_unarmed.qci"
$include "patrol_sword.qci"
$include "patrol_rifle.qci"
$include "patrol_pistol.qci"
$include "patrol_missile.qci"
$include "common.qci"
$include "vehicle_shared.qci"


//REFERENCE
$origin 0 0 0 -90
$animation "ref" "elite_animations\REFERENCE.smd" {
	fps 30
}

$sequence "ragdoll" {
	"elite_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

$collisionjoints "elite_h3_physics.smd"
{
	$mass 90.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "pelvis"

	$jointrotdamping "r_thigh" 0.00
	$jointconstrain "r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "r_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "r_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "r_horselink" x limit 0.00 0.00 0.00
	$jointconstrain "r_horselink" y limit 0.00 0.00 0.00
	$jointconstrain "r_horselink" z limit -35.00 45.00 0.00

	$jointconstrain "spine1" x limit -48.00 48.00 0.00
	$jointconstrain "spine1" y limit -25.00 25.00 0.00
	$jointconstrain "spine1" z limit -25.00 50.00 0.00

	$jointconstrain "l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "l_upperarm" y limit -20.00 20.00 0.00
	$jointconstrain "l_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "l_forearm" z limit -28.00 55.00 0.00

	$jointconstrain "l_hand" x limit -37.00 37.00 0.00
	$jointconstrain "l_hand" y limit -10.00 30.00 0.00
	$jointconstrain "l_hand" z limit -20.00 30.00 0.00

	$jointconstrain "r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "r_upperarm" y limit -20.00 20.00 0.00
	$jointconstrain "r_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "r_forearm" z limit -28.00 55.00 0.00

	$jointconstrain "r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "r_hand" y limit -10.00 30.00 0.00
	$jointconstrain "r_hand" z limit -20.00 30.00 0.00

	$jointconstrain "head" x limit -30.00 30.00 0.00
	$jointconstrain "head" y limit -25.00 25.00 0.00
	$jointconstrain "head" z limit -15.00 35.00 0.00

	$jointconstrain "l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "l_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "l_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "l_horselink" x limit 0.00 0.00 0.00
	$jointconstrain "l_horselink" y limit 0.00 0.00 0.00
	$jointconstrain "l_horselink" z limit -35.00 45.00 0.00

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
		"rootname"		"b_pelvis"
		"totalmass"		"90.000000"
		"jointmerge"		"b_pelvis,b_spine1"
		"jointmerge"		"b_pelvis,b_spine1"
	}
}
$origin 0 0 0 -90
$scale 0.9
// .qc block generated by HLMV begins.

$surfaceprop "flesh"
$jointsurfaceprop "root"	 "flesh"


$hboxset "default"

$hbox 3 "pelvis"	    -9.35   -8.88   -8.41     9.31    7.95    8.41
$hbox 6 "l_thigh"	    -2.13  -10.60   -6.31    27.42    7.05    6.46
$hbox 6 "l_calf"	    -1.06   -5.25   -5.09    10.90    2.95    3.57
$hbox 6 "l_horselink"	    -7.06   -7.19   -5.71    16.82   11.74    5.74
$hbox 6 "l_foot"	     0.00   -4.36   -6.23    12.78   12.73    5.89
$hbox 7 "r_thigh"	    -2.13  -10.60   -6.46    27.42    7.05    6.32
$hbox 7 "r_calf"	    -1.06   -5.25   -3.56    10.90    2.95    5.10
$hbox 7 "r_horselink"	    -7.06   -7.19   -5.74    16.82   11.74    5.71
$hbox 7 "r_foot"	     0.00   -4.36   -5.89    12.78   12.73    6.23
$hbox 2 "spine1"	    -5.18  -13.95  -15.10    22.27   10.36   15.09
$hbox 4 "l_clavicle"	     0.00   -4.19   -6.04    12.98    4.57    2.05
$hbox 4 "l_upperarm"	    -9.56   -5.24   -3.73    15.26    7.44    8.33
$hbox 4 "l_forearm"	    -2.77   -3.86   -4.46    15.83    6.78    3.80
$hbox 4 "l_hand"	     0.00   -2.82   -3.03    10.46    2.32    5.02
$hbox 4 "l_index1"	    -0.84   -1.49   -1.00     7.81    2.72    1.24
$hbox 4 "l_index2"	    -0.31   -0.77   -0.96     5.41    1.22    0.76
$hbox 4 "l_pinky1"	     0.00   -2.04   -1.60     6.16    1.28    2.14
$hbox 4 "l_pinky2"	    -0.55   -1.10   -0.93     4.19    1.13    1.60
$hbox 4 "l_ring1"	    -0.62   -2.00   -1.30     6.30    1.57    1.08
$hbox 4 "l_ring2"	    -0.71   -0.85   -0.66     5.07    1.06    1.12
$hbox 4 "l_thumb1"	    -1.21   -1.52   -1.91     4.41    1.05    1.71
$hbox 4 "l_thumb2"	    -0.47   -1.30   -1.20     4.56    1.02    1.21
$hbox 2 "neck"	    -1.94   -5.38   -5.09    11.47    7.85    5.09
$hbox 9 "neck1"	    -5.37   -4.52   -5.09     8.76    7.68    5.09
$hbox 1 "head"	    -3.86   -9.16   -6.69     8.29   13.49    6.69
$hbox 5 "r_clavicle"	     0.00   -4.19   -2.05    12.98    4.57    6.04
$hbox 5 "r_upperarm"	    -9.56   -5.24   -8.45    15.26    7.44    3.73
$hbox 5 "r_forearm"	    -2.77   -3.86   -3.80    15.83    6.78    4.46
$hbox 5 "r_hand"	     0.00   -2.82   -5.02    10.46    2.69    3.03
$hbox 5 "r_index1"	    -0.84   -1.49   -1.24     7.81    2.72    1.00
$hbox 5 "r_index2"	    -0.31   -0.77   -0.76     5.41    1.22    0.96
$hbox 5 "r_pinky1"	     0.00   -2.03   -2.14     6.16    1.28    1.60
$hbox 5 "r_pinky2"	    -0.55   -1.10   -1.60     4.19    1.14    0.93
$hbox 5 "r_ring1"	    -0.62   -2.00   -1.08     6.31    1.57    1.30
$hbox 5 "r_ring2"	    -0.71   -0.85   -1.12     5.07    1.06    0.66
$hbox 5 "r_thumb1"	    -1.21   -1.52   -1.71     4.41    1.05    1.91
$hbox 5 "r_thumb2"	    -0.47   -1.30   -1.21     4.56    1.02    1.20
