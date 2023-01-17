// Created by Crowbar 0.71

$modelname "halo_3/characters/flood/elite_combat_form.mdl"
$scale 1.065
$origin 0 0 0 -90

$bodygroup "Legs"
{
    studio "legs_base.smd"
}
$bodygroup "Torso"
{
    studio "torso_base.smd"
    studio "torso_destroyed.smd"
}
$bodygroup "Head"
{
    studio "head_base.smd"
    studio "head_destroyed.smd"
}
$bodygroup "Left Arm"
{
    studio "l_arm_base.smd"
    studio "l_arm_destroyed.smd"
}
$bodygroup "Right Arm"
{
    studio "r_arm_base.smd"
    studio "r_arm_destroyed.smd"
}
$bodygroup "Misc"
{
    studio "halo_3_elite_combat_form_misc.smd"
}


$surfaceprop "zombieflesh"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "\models\halo_3\characters\flood\elite_combat_form\"
$texturegroup "skinfamilies"
{
	{ "floodcombat_elite_armour" }
	{ "floodcombat_elite_armour_minor" }
	{ "floodcombat_elite_armour_major" }
	{ "floodcombat_elite_armour_zealot" }
	{ "floodcombat_elite_armour_ultra" }
	{ "floodcombat_elite_armour_specops" }
}

$attachment "anim_attachment_RH" "r_hand" 8.50 2.06 1.06 rotate 0 15 0
$attachment "anim_attachment_LH" "l_forearm" 21.59 -1.66 -4.07 rotate -0 0 -180
$attachment "eyes" "head" 5.00 4.00 0.00 rotate 0 90 90
$attachment "corpse_head" "corpse_head" 0 0 0 rotate 0 0 0
$attachment "r_upperarm" "r_upperarm" 0 0 0 rotate 0 0 0
$attachment "l_upperarm" "l_upperarm" 0 0 0 rotate 0 0 0

$attachment "fx_left_arm_crate" "l_upperarm" 9.72 0 0.86 rotate -11.2 -83.8 50.3
$attachment "fx_right_arm_crate" "r_upperarm" 9.01 0.17 0 rotate 5.78 -70.4 114
$attachment "fx_l_leg_garbage" "l_thigh" 0.52 -3.25 0 rotate -160 -20.4 84
$attachment "fx_r_leg_garbage" "r_thigh" 0.62 -1.11 -0.36 rotate 21 57.2 -84.2
$attachment "fx_chest_crate" "spine1" 14.9 4.77 -6.18 rotate 0 85 90
$attachment "fx_back_armor_crate" "spine1" 14.2 -9.38 0.62 rotate 0 85 90
$attachment "fx_shoulder_pad_crate" "r_upperarm" -1.19 0.114 -2.41 rotate 5.78 -70.4 114
$attachment "fx_head_crate" "corpse_neck" 4.91 0.58 -0.66 rotate 21.7 104 44.2

$attachment "trans_muffin_l_arm01" "l_forearm" -6.52 -0.13 4.51 rotate 5.65 3.66 2.91
$attachment "trans_muffin_l_arm02" "l_upperarm" 6.3 -3.17 0.55 rotate 9.08 -4.48 64.3
$attachment "trans_muffin_l_arm03" "l_upperarm" 6.59 -2.16 -3.1 rotate -0.4 21.4 139

$attachment "trans_muffin_r_arm01" "r_upperarm" 0.53 4.64 0.85 rotate -27.2 9.31 -105
$attachment "trans_muffin_r_arm02" "r_upperarm" 4.26 -1.36 -2.76 rotate -0.93 3.02 -133
$attachment "trans_muffin_r_arm03" "r_upperarm" 5.18 2.73 -1 rotate -8.17 0.77 -4.55

$attachment "trans_muffin_l_thigh01" "l_thigh" 3.61 5.77 0.03 rotate 14.7 5.42 -101
$attachment "trans_muffin_r_thigh01" "r_thigh" 3.58 6.1 1.33 rotate -45.2 -3.82 -58.5

$attachment "trans_muffin_torso_back01" "l_upperarm" -7.01 2.65 7.32 rotate -21 -4.37 -15.9
$attachment "trans_muffin_torso_back02" "spine1" 25.42 -6.67 2.42 rotate -111 78.5 69.3
$attachment "trans_muffin_torso_back03" "l_upperarm" -4.11 4.8 2.57 rotate -22.5 19.8 -89.42
$attachment "trans_muffin_torso_back04" "spine1" 18.14 -5.73 -6.73 rotate 157 17.7 58.8
$attachment "trans_muffin_torso_back05" "spine1" 16.2 -4.14 -10 rotate 147 -59.8 -2.21
$attachment "trans_muffin_torso_back06" "spine1" 1.15 -3.1 -5.7 rotate 146 -34 57.7
$attachment "trans_muffin_torso_back07" "spine1" 1.52 -4.34 0.15 rotate -163 -5.96 91.6
$attachment "trans_muffin_torso_back08" "spine1" 14.94 -7.13 -5.9 rotate -9.78 -164 -86.3

$attachment "trans_muffin_torso_front01" "spine1" 20.08 1.27 8.2 rotate 171 -47.6 -79.6
$attachment "trans_muffin_torso_front02" "spine1" 24.83 2.47 3.07 rotate 177 -67.4 -81.06
$attachment "trans_muffin_torso_front03" "corpse_neck" 1.55 4.7 0.8 rotate 123 -22.9 -68.3
$attachment "trans_muffin_torso_front04" "spine1" 6.18 5.82 -3.96 rotate 137 25.6 -63.7

$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.


$include "combat_any_any.qci"
$include "common.qci"

//$poseparameter "move_yaw" -180 180 loop 360
//$PoseParameter "aim_yaw" -45 45 0
//$PoseParameter "aim_pitch" -90 90 0

//REFERENCE

$animation "ref" "flood_elite_combat_animations\REFERENCE.smd" {
	fps 30
}

$sequence "ragdoll" {
	"flood_elite_combat_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


$collisionjoints "flood_elite_h3_physics.smd"
{
	$mass 500.0
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

	$jointconstrain "corpse_head" x limit -30.00 30.00 0.00
	$jointconstrain "corpse_head" y limit -25.00 25.00 0.00
	$jointconstrain "corpse_head" z limit -15.00 35.00 0.00

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
		"rootname"		"pelvis"
		"totalmass"		"90.000000"
		"jointmerge"		"pelvis,spine1"
		"jointmerge"		"pelvis,spine"
	}
}

$scale 0.9

$hboxset "default"

$hbox 3 "pelvis"	    -6.77   -4.35   -7.88     8.44    7.86    7.59
$hbox 6 "l_thigh"	    -2.05   -6.50   -5.19    27.40    8.79    6.72
$hbox 6 "l_calf"	    -2.11   -3.53   -2.99    10.90    3.00    2.61
$hbox 6 "l_horselink"	    -6.83   -6.29   -4.93    16.40   11.91    6.37
$hbox 6 "l_foot"	    -4.76   -4.58   -6.14    12.82   12.32    5.90
$hbox 7 "r_thigh"	    -3.89   -6.43   -6.54    27.47    8.75    5.36
$hbox 7 "r_calf"	    -2.23   -3.46   -2.56    10.90    3.05    3.17
$hbox 7 "r_horselink"	    -6.82   -6.20   -6.23    16.44   12.05    5.13
$hbox 7 "r_foot"	    -4.78   -4.54   -5.92    12.93   12.37    6.15
$hbox 3 "spine"	    -9.20   -8.27   -8.87     7.53    8.23    8.31
$hbox 2 "spine1"	     1.87   -7.06  -10.49    24.60    8.18   11.87
$hbox 2 "armor"	    -3.85   -8.84   -4.40     2.39    8.12    5.65
$hbox 9 "corpse_neck"	    -3.59   -3.82   -5.68    10.91    6.61    4.84
$hbox 9 "corpse_head"	    -3.24   -4.13   -4.99    10.37    5.44    5.15
$hbox 4 "l_clavicle"	    -1.05   -6.87    0.00     9.79    6.59   14.38
$hbox 4 "l_upperarm"	    -6.07   -5.18   -4.79    15.32    6.67    8.61
$hbox 5 "r_clavicle"	     0.00   -5.87   -8.57    11.43    1.92    0.00
$hbox 5 "r_upperarm"	   -10.51   -6.45   -8.64    16.56    5.30    2.77
$hbox 1 "head"	   -10.54   -1.50   -6.06     7.29   12.79    5.41
$hbox 1 "tendril1"	    -3.57    0.00   -5.45     2.16   20.26    4.92
$hbox 1 "tendril2"	    -2.18    0.00   -3.88     3.01   20.16    1.31
$hbox 1 "tendril3"	    -2.17    0.00   -1.50     3.02   20.12    3.69
$hbox 2 "shoulder_mass"	    -8.66   -8.94   -2.36    14.79    4.18    8.70
$hbox 9 "l_corpse_jaw"	    -0.34   -1.61   -2.88     6.19    2.04    2.09
$hbox 9 "r_corpse_jaw"	    -1.49   -2.28   -3.14     6.30    0.75    2.50
$hbox 4 "l_forearm"	    -5.34   -6.53   -8.50    27.12    5.21    6.91
$hbox 4 "l_claw_base"	    -5.54   -3.06   -2.98    13.04    7.94    5.42
$hbox 4 "l_claw1_01"	     0.00   -2.34   -2.63    17.44    2.60    3.04
$hbox 4 "l_claw1_02"	    -2.11   -2.56   -5.12    25.37    2.36    2.64
$hbox 4 "l_claw2_01"	    -0.70   -2.04   -3.21    13.52    1.90    2.42
$hbox 4 "l_claw2_02"	    -1.84   -2.12   -3.20    20.32    1.62    2.39
$hbox 5 "r_forearm"	    -4.34   -4.75   -4.28    17.15    6.99    3.94
$hbox 5 "r_hand"	    -1.70   -1.76   -4.07     7.68    4.26    3.33
$hbox 5 "r_index1"	     0.00   -0.99   -2.25     5.93    1.27    2.11
$hbox 5 "r_index2"	    -0.26   -1.91   -2.46     5.59    1.51    2.44
$hbox 5 "r_thumb1"	    -1.89   -1.82   -1.83     6.04    1.66    1.89

$hboxset "missing_arm_left"

$hbox 3 "pelvis"	    -6.77   -4.35   -7.88     8.44    7.86    7.59
$hbox 6 "l_thigh"	    -2.05   -6.50   -5.19    27.40    8.79    6.72
$hbox 6 "l_calf"	    -2.11   -3.53   -2.99    10.90    3.00    2.61
$hbox 6 "l_horselink"	    -6.83   -6.29   -4.93    16.40   11.91    6.37
$hbox 6 "l_foot"	    -4.76   -4.58   -6.14    12.82   12.32    5.90
$hbox 7 "r_thigh"	    -3.89   -6.43   -6.54    27.47    8.75    5.36
$hbox 7 "r_calf"	    -2.23   -3.46   -2.56    10.90    3.05    3.17
$hbox 7 "r_horselink"	    -6.82   -6.20   -6.23    16.44   12.05    5.13
$hbox 7 "r_foot"	    -4.78   -4.54   -5.92    12.93   12.37    6.15
$hbox 3 "spine"	    -9.20   -8.27   -8.87     7.53    8.23    8.31
$hbox 2 "spine1"	     1.87   -7.06  -10.49    24.60    8.18   11.87
$hbox 2 "armor"	    -3.85   -8.84   -4.40     2.39    8.12    5.65
$hbox 9 "corpse_neck"	    -3.59   -3.82   -5.68    10.91    6.61    4.84
$hbox 9 "corpse_head"	    -3.24   -4.13   -4.99    10.37    5.44    5.15
$hbox 4 "l_clavicle"	    -1.05   -6.87    0.00     9.79    6.59   14.38
$hbox 4 "l_upperarm"	    -6.07   -5.18   -4.79    15.32    6.67    8.61
$hbox 5 "r_clavicle"	     0.00   -5.87   -8.57    11.43    1.92    0.00
$hbox 5 "r_upperarm"	   -10.51   -6.45   -8.64    16.56    5.30    2.77
$hbox 1 "head"	   -10.54   -1.50   -6.06     7.29   12.79    5.41
$hbox 1 "tendril1"	    -3.57    0.00   -5.45     2.16   20.26    4.92
$hbox 1 "tendril2"	    -2.18    0.00   -3.88     3.01   20.16    1.31
$hbox 1 "tendril3"	    -2.17    0.00   -1.50     3.02   20.12    3.69
$hbox 2 "shoulder_mass"	    -8.66   -8.94   -2.36    14.79    4.18    8.70
$hbox 9 "l_corpse_jaw"	    -0.34   -1.61   -2.88     6.19    2.04    2.09
$hbox 9 "r_corpse_jaw"	    -1.49   -2.28   -3.14     6.30    0.75    2.50
$hbox 5 "r_forearm"	    -4.34   -4.75   -4.28    17.15    6.99    3.94
$hbox 5 "r_hand"	    -1.70   -1.76   -4.07     7.68    4.26    3.33
$hbox 5 "r_index1"	     0.00   -0.99   -2.25     5.93    1.27    2.11
$hbox 5 "r_index2"	    -0.26   -1.91   -2.46     5.59    1.51    2.44
$hbox 5 "r_thumb1"	    -1.89   -1.82   -1.83     6.04    1.66    1.89

$hboxset "missing_arm_right"

$hbox 3 "pelvis"	    -6.77   -4.35   -7.88     8.44    7.86    7.59
$hbox 6 "l_thigh"	    -2.05   -6.50   -5.19    27.40    8.79    6.72
$hbox 6 "l_calf"	    -2.11   -3.53   -2.99    10.90    3.00    2.61
$hbox 6 "l_horselink"	    -6.83   -6.29   -4.93    16.40   11.91    6.37
$hbox 6 "l_foot"	    -4.76   -4.58   -6.14    12.82   12.32    5.90
$hbox 7 "r_thigh"	    -3.89   -6.43   -6.54    27.47    8.75    5.36
$hbox 7 "r_calf"	    -2.23   -3.46   -2.56    10.90    3.05    3.17
$hbox 7 "r_horselink"	    -6.82   -6.20   -6.23    16.44   12.05    5.13
$hbox 7 "r_foot"	    -4.78   -4.54   -5.92    12.93   12.37    6.15
$hbox 3 "spine"	    -9.20   -8.27   -8.87     7.53    8.23    8.31
$hbox 2 "spine1"	     1.87   -7.06  -10.49    24.60    8.18   11.87
$hbox 2 "armor"	    -3.85   -8.84   -4.40     2.39    8.12    5.65
$hbox 9 "corpse_neck"	    -3.59   -3.82   -5.68    10.91    6.61    4.84
$hbox 9 "corpse_head"	    -3.24   -4.13   -4.99    10.37    5.44    5.15
$hbox 4 "l_clavicle"	    -1.05   -6.87    0.00     9.79    6.59   14.38
$hbox 4 "l_upperarm"	    -6.07   -5.18   -4.79    15.32    6.67    8.61
$hbox 5 "r_clavicle"	     0.00   -5.87   -8.57    11.43    1.92    0.00
$hbox 1 "head"	   -10.54   -1.50   -6.06     7.29   12.79    5.41
$hbox 1 "tendril1"	    -3.57    0.00   -5.45     2.16   20.26    4.92
$hbox 1 "tendril2"	    -2.18    0.00   -3.88     3.01   20.16    1.31
$hbox 1 "tendril3"	    -2.17    0.00   -1.50     3.02   20.12    3.69
$hbox 2 "shoulder_mass"	    -8.66   -8.94   -2.36    14.79    4.18    8.70
$hbox 9 "l_corpse_jaw"	    -0.34   -1.61   -2.88     6.19    2.04    2.09
$hbox 9 "r_corpse_jaw"	    -1.49   -2.28   -3.14     6.30    0.75    2.50
$hbox 4 "l_forearm"	    -5.34   -6.53   -8.50    27.12    5.21    6.91
$hbox 4 "l_claw_base"	    -5.54   -3.06   -2.98    13.04    7.94    5.42
$hbox 4 "l_claw1_01"	     0.00   -2.34   -2.63    17.44    2.60    3.04
$hbox 4 "l_claw1_02"	    -2.11   -2.56   -5.12    25.37    2.36    2.64
$hbox 4 "l_claw2_01"	    -0.70   -2.04   -3.21    13.52    1.90    2.42
$hbox 4 "l_claw2_02"	    -1.84   -2.12   -3.20    20.32    1.62    2.39

$hboxset "missing_arms"

$hbox 3 "pelvis"	    -6.77   -4.35   -7.88     8.44    7.86    7.59
$hbox 6 "l_thigh"	    -2.05   -6.50   -5.19    27.40    8.79    6.72
$hbox 6 "l_calf"	    -2.11   -3.53   -2.99    10.90    3.00    2.61
$hbox 6 "l_horselink"	    -6.83   -6.29   -4.93    16.40   11.91    6.37
$hbox 6 "l_foot"	    -4.76   -4.58   -6.14    12.82   12.32    5.90
$hbox 7 "r_thigh"	    -3.89   -6.43   -6.54    27.47    8.75    5.36
$hbox 7 "r_calf"	    -2.23   -3.46   -2.56    10.90    3.05    3.17
$hbox 7 "r_horselink"	    -6.82   -6.20   -6.23    16.44   12.05    5.13
$hbox 7 "r_foot"	    -4.78   -4.54   -5.92    12.93   12.37    6.15
$hbox 3 "spine"	    -9.20   -8.27   -8.87     7.53    8.23    8.31
$hbox 2 "spine1"	     1.87   -7.06  -10.49    24.60    8.18   11.87
$hbox 2 "armor"	    -3.85   -8.84   -4.40     2.39    8.12    5.65
$hbox 9 "corpse_neck"	    -3.59   -3.82   -5.68    10.91    6.61    4.84
$hbox 9 "corpse_head"	    -3.24   -4.13   -4.99    10.37    5.44    5.15
$hbox 4 "l_clavicle"	    -1.05   -6.87    0.00     9.79    6.59   14.38
$hbox 4 "l_upperarm"	    -6.07   -5.18   -4.79    15.32    6.67    8.61
$hbox 5 "r_clavicle"	     0.00   -5.87   -8.57    11.43    1.92    0.00
$hbox 1 "head"	   -10.54   -1.50   -6.06     7.29   12.79    5.41
$hbox 1 "tendril1"	    -3.57    0.00   -5.45     2.16   20.26    4.92
$hbox 1 "tendril2"	    -2.18    0.00   -3.88     3.01   20.16    1.31
$hbox 1 "tendril3"	    -2.17    0.00   -1.50     3.02   20.12    3.69
$hbox 2 "shoulder_mass"	    -8.66   -8.94   -2.36    14.79    4.18    8.70
$hbox 9 "l_corpse_jaw"	    -0.34   -1.61   -2.88     6.19    2.04    2.09
$hbox 9 "r_corpse_jaw"	    -1.49   -2.28   -3.14     6.30    0.75    2.50