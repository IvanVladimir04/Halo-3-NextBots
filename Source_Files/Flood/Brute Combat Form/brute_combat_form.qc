// Created by Crowbar 0.71

$modelname "halo_3/characters/flood/brute_combat_form.mdl"
$scale 1.065
$origin 0 0 0 -90

$bodygroup "Legs"
{
    studio "legs_base.smd"
}
$bodygroup "Torso"
{
    studio "torso_base2.smd"
    studio "torso_damaged.smd"
}
$bodygroup "Left Arm"
{
    studio "l_arm_base.smd"
    studio "l_arm_damaged.smd"
}
$bodygroup "Right Arm"
{
    studio "r_arm_base.smd"
    studio "r_arm_damaged.smd"
}
$bodygroup "Misc"
{
    studio "halo_3_brute_combat_form_misc.smd"
}


$surfaceprop "zombieflesh"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "\models\halo_3\characters\flood\brute_combat_form\"

$attachment "anim_attachment_RH" "r_hand" 8.50 2.06 1.06 rotate 0 15 0
$attachment "anim_attachment_LH" "l_hand" 4.59 2.66 -1.06 rotate -0 0 -180
$attachment "eyes" "head" 5.00 4.00 0.00 rotate 0 90 90
$attachment "head" "head" 0 0 0 rotate 0 0 0
$attachment "r_upperarm" "r_upperarm" 0 0 0 rotate 0 0 0
$attachment "l_upperarm" "l_upperarm" 0 0 0 rotate 0 0 0

$attachment "trans_muffin_torso_back01" "r_upperarm" -9.48 0.24 1.39 rotate -20 83.2 -38.5
$attachment "trans_muffin_torso_back02" "r_upperarm" -6.12 0.82 -0.8 rotate -141 86 60.5
$attachment "trans_muffin_torso_back03" "r_upperarm" -4.12 6.93 1.46 rotate 161 28.9 18.5
$attachment "trans_muffin_torso_back04" "r_upperarm" -6.37 8.21 6.48 rotate 134 23.3 18.2
$attachment "trans_muffin_torso_back05" "spine1" 10.26 -7.71 -6.36 rotate -17.1 -141 -108
$attachment "trans_muffin_torso_back06" "spine1" 5.66 -7.6 -1.85 rotate 124 -12.8 97.7
$attachment "trans_muffin_torso_back07" "spine1" 5.91 -6.45 -8.99 rotate 37.8 -0.85 114
$attachment "trans_muffin_torso_back08" "spine1" 2.59 -4.78 -9.1 rotate -177 -7.45 65.1
$attachment "trans_muffin_torso_back09" "spine1" 0.52 -6.52 -5.16 rotate 1.44 150 -100
$attachment "trans_muffin_torso_back10" "spine1" -0.17 -5.46 -0.42 rotate -24.5 159 -85.3
$attachment "trans_muffin_torso_back11" "spine1" -1.54 -4.46 6.13 rotate -19.2 129 -73.7
$attachment "trans_muffin_torso_back12" "spine" -0.36 -3.7 -6.98 rotate 1256 -2.68 32.9
$attachment "trans_muffin_torso_back13" "spine" 1.78 -4.42 -0.28 rotate 100 37.3 102
$attachment "trans_muffin_torso_back14" "spine" 0.85 -4.04 4.43 rotate -24.9 -155 -87.8

$attachment "trans_muffin_torso_front01" "r_upperarm" -1.49 -4.21 1.34 rotate -167 -15.1 61.3
$attachment "trans_muffin_torso_front02" "r_upperarm" -1.49 -4.21 1.33 rotate -167 -15.1 61.3
$attachment "trans_muffin_torso_front03" "r_upperarm" -4.71 -5.44 19.9 rotate 27 -179 -34.7
$attachment "trans_muffin_torso_front04" "spine" 7.85 9.78 8.99 rotate -15.5 -101 -0.95
$attachment "trans_muffin_torso_front05" "spine" 2.4 10.74 4.98 rotate -30.9 9.13 -74.2
$attachment "trans_muffin_torso_front06" "spine" 2.08 11.07 0.55 rotate -4.87 161 74.5
$attachment "trans_muffin_torso_front07" "spine" 4.53 9.73 -3.4 rotate 104 -7.04 -61.9

$attachment "trans_muffin_l_arm01" "l_upperarm" 2.02 0.56 5.46 rotate 16.5 8.91 -18.9
$attachment "trans_muffin_l_arm02" "l_upperarm" 7.67 3.46 2.22 rotate 0.83 0 -50.2
$attachment "trans_muffin_l_arm03" "l_upperarm" 11.66 -1.16 2.98 rotate 11.9 -30.1 38.2

$attachment "trans_muffin_r_arm01" "r_upperarm" 0.89 -2.32 -4.75 rotate -130 57.5 72.6
$attachment "trans_muffin_r_arm02" "r_upperarm" 8.19 5.51 0.94 rotate -34.3 -23.1 39.7
$attachment "trans_muffin_r_arm03" "r_upperarm" 15.4 1.3 -2.63 rotate 138 33.8 75

$attachment "trans_muffin09" "spine1" 1.86 -6.18 6.68 rotate -15.7 160 -70.7

$attachment "trans_muffin_l_thigh" "l_thigh" 1.4 -1.74 -2.98 rotate 10.2 -2.4 -171
$attachment "trans_muffin_r_thigh" "l_thigh" 0.52 -2.86 18.83 rotate -30.3 -44.3 24.3

$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.


$include "combat_any_any.qci"
//$include "combat_pistol_smg.qci"
$include "common.qci"

//$poseparameter "move_yaw" -180 180 loop 360
//$PoseParameter "aim_yaw" -45 45 0
//$PoseParameter "aim_pitch" -90 90 0

//REFERENCE
$origin 0 0 0 0
$animation "ref" "flood_brute_combat_animations\REFERENCE.smd" {
	fps 30
}

$sequence "ragdoll" {
	"flood_brute_combat_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}

$collisionjoints "brute_combat_form_h3_physics.smd"
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

$scale 0.9

// .qc block generated by HLMV begins.

$surfaceprop "zombieflesh"


$hboxset "default"

$hbox 3 "pelvis"	   -13.34   -6.96  -14.51    16.63   15.31   14.51
$hbox 6 "l_thigh"	    -6.80  -11.10   -6.92    35.23    9.36    8.61
$hbox 6 "l_calf"	    -2.26   -6.47   -5.22    24.50    7.92    5.85
$hbox 6 "l_foot"	    -5.49   -7.53   -6.17     9.11   12.60    6.05
$hbox 7 "r_thigh"	    -5.76   -7.95   -8.61    27.20    9.20    6.93
$hbox 7 "r_calf"	    -2.26   -7.46   -5.85    21.19    7.23    5.91
$hbox 7 "r_foot"	    -2.57   -7.55   -5.97     9.04   12.38    6.07
$hbox 3 "spine"	    -5.01   -7.04  -12.00     9.04   13.93   11.78
$hbox 2 "spine1"	    -3.96  -12.83  -15.59    27.25   14.35   19.09
$hbox 1 "head"	   -10.40   -5.73   -7.23    10.51   18.88    7.25
$hbox 4 "l_clavicle"	     0.00   -6.69   -0.69    15.26    9.77   13.13
$hbox 4 "l_upperarm"	    -4.98   -7.89   -5.53    18.35    5.81    7.98
$hbox 5 "r_clavicle"	     0.00   -6.56   -7.81    11.87    8.90    0.00
$hbox 5 "r_upperarm"	    -6.78   -7.69   -6.21    21.88    8.36    4.86
$hbox 9 "corpse_head"	    -4.49   -8.85   -5.24     6.33   11.65    7.45
$hbox 9 "corpse_jaw"	    -2.46   -1.86   -3.93     8.77    3.48    4.04
$hbox 1 "tendril1"	    -4.26    0.00   -3.91     3.16   21.34    3.56
$hbox 1 "tendril2"	    -4.09   -3.32   -3.40     3.77   21.39    4.47
$hbox 1 "tendril3"	    -4.08    0.00   -4.39     3.79   21.42    3.48
$hbox 2 "l_shoulder_mass"	    -2.16  -10.60   -6.72     8.77   11.20    8.35
$hbox 4 "l_forearm"	    -6.01   -4.36   -4.07    10.99    6.85    6.56
$hbox 4 "l_claw3_01"	    -1.43   -1.44   -1.40     8.90    1.58    1.71
$hbox 4 "l_claw3_02"	    -0.90   -0.99   -1.13    11.03    1.14    1.45
$hbox 4 "l_claw_base"	     0.00   -4.20   -3.91    15.44    7.76    7.28
$hbox 4 "l_claw1_01"	     0.00   -2.35   -2.75    17.03    2.41    3.11
$hbox 4 "l_claw1_02"	    -2.59   -2.34   -4.12    24.12    2.26    2.99
$hbox 4 "l_claw2_01"	    -2.09   -2.47   -2.55    13.06    2.05    3.04
$hbox 4 "l_claw2_02"	    -0.69   -1.70   -3.89    19.22    1.73    2.23
$hbox 4 "l_hand"	    -1.26   -1.14   -4.47     8.11    6.39    3.37
$hbox 5 "r_forearm"	    -1.60   -4.04   -4.36    18.10    4.31    4.34
$hbox 5 "r_hand"	     0.00   -2.88   -3.09     9.27    3.77    5.15
$hbox 5 "r_index1"	    -0.07   -4.84   -1.56     4.75    1.45    0.80
$hbox 5 "r_ring1"	    -0.21   -1.79   -2.23     6.72    1.87    2.24
$hbox 5 "r_thumb1"	    -1.64   -1.56   -2.93     5.54    1.35    1.70

$hboxset "missing_arm_left"

$hbox 3 "pelvis"	   -13.34   -6.96  -14.51    16.63   15.31   14.51
$hbox 6 "l_thigh"	    -6.80  -11.10   -6.92    35.23    9.36    8.61
$hbox 6 "l_calf"	    -2.26   -6.47   -5.22    24.50    7.92    5.85
$hbox 6 "l_foot"	    -5.49   -7.53   -6.17     9.11   12.60    6.05
$hbox 7 "r_thigh"	    -5.76   -7.95   -8.61    27.20    9.20    6.93
$hbox 7 "r_calf"	    -2.26   -7.46   -5.85    21.19    7.23    5.91
$hbox 7 "r_foot"	    -2.57   -7.55   -5.97     9.04   12.38    6.07
$hbox 3 "spine"	    -5.01   -7.04  -12.00     9.04   13.93   11.78
$hbox 2 "spine1"	    -3.96  -12.83  -15.59    27.25   14.35   19.09
$hbox 1 "head"	   -10.40   -5.73   -7.23    10.51   18.88    7.25
$hbox 4 "l_clavicle"	     0.00   -6.69   -0.69    15.26    9.77   13.13
$hbox 4 "l_upperarm"	    -4.98   -7.89   -5.53    18.35    5.81    7.98
$hbox 5 "r_clavicle"	     0.00   -6.56   -7.81    11.87    8.90    0.00
$hbox 5 "r_upperarm"	    -6.78   -7.69   -6.21    21.88    8.36    4.86
$hbox 9 "corpse_head"	    -4.49   -8.85   -5.24     6.33   11.65    7.45
$hbox 9 "corpse_jaw"	    -2.46   -1.86   -3.93     8.77    3.48    4.04
$hbox 1 "tendril1"	    -4.26    0.00   -3.91     3.16   21.34    3.56
$hbox 1 "tendril2"	    -4.09   -3.32   -3.40     3.77   21.39    4.47
$hbox 1 "tendril3"	    -4.08    0.00   -4.39     3.79   21.42    3.48
$hbox 5 "r_forearm"	    -1.60   -4.04   -4.36    18.10    4.31    4.34
$hbox 5 "r_hand"	     0.00   -2.88   -3.09     9.27    3.77    5.15
$hbox 5 "r_index1"	    -0.07   -4.84   -1.56     4.75    1.45    0.80
$hbox 5 "r_ring1"	    -0.21   -1.79   -2.23     6.72    1.87    2.24
$hbox 5 "r_thumb1"	    -1.64   -1.56   -2.93     5.54    1.35    1.70
$hbox 2 "l_shoulder_mass"	    -2.16  -10.60   -6.72     8.77   11.20    8.35


$hboxset "missing_arm_right"

$hbox 3 "pelvis"	   -13.34   -6.96  -14.51    16.63   15.31   14.51
$hbox 6 "l_thigh"	    -6.80  -11.10   -6.92    35.23    9.36    8.61
$hbox 6 "l_calf"	    -2.26   -6.47   -5.22    24.50    7.92    5.85
$hbox 6 "l_foot"	    -5.49   -7.53   -6.17     9.11   12.60    6.05
$hbox 7 "r_thigh"	    -5.76   -7.95   -8.61    27.20    9.20    6.93
$hbox 7 "r_calf"	    -2.26   -7.46   -5.85    21.19    7.23    5.91
$hbox 7 "r_foot"	    -2.57   -7.55   -5.97     9.04   12.38    6.07
$hbox 3 "spine"	    -5.01   -7.04  -12.00     9.04   13.93   11.78
$hbox 2 "spine1"	    -3.96  -12.83  -15.59    27.25   14.35   19.09
$hbox 1 "head"	   -10.40   -5.73   -7.23    10.51   18.88    7.25
$hbox 4 "l_clavicle"	     0.00   -6.69   -0.69    15.26    9.77   13.13
$hbox 4 "l_upperarm"	    -4.98   -7.89   -5.53    18.35    5.81    7.98
$hbox 5 "r_clavicle"	     0.00   -6.56   -7.81    11.87    8.90    0.00
$hbox 9 "corpse_head"	    -4.49   -8.85   -5.24     6.33   11.65    7.45
$hbox 9 "corpse_jaw"	    -2.46   -1.86   -3.93     8.77    3.48    4.04
$hbox 1 "tendril1"	    -4.26    0.00   -3.91     3.16   21.34    3.56
$hbox 1 "tendril2"	    -4.09   -3.32   -3.40     3.77   21.39    4.47
$hbox 1 "tendril3"	    -4.08    0.00   -4.39     3.79   21.42    3.48
$hbox 2 "l_shoulder_mass"	    -2.16  -10.60   -6.72     8.77   11.20    8.35
$hbox 4 "l_forearm"	    -6.01   -4.36   -4.07    10.99    6.85    6.56
$hbox 4 "l_claw3_01"	    -1.43   -1.44   -1.40     8.90    1.58    1.71
$hbox 4 "l_claw3_02"	    -0.90   -0.99   -1.13    11.03    1.14    1.45
$hbox 4 "l_claw_base"	     0.00   -4.20   -3.91    15.44    7.76    7.28
$hbox 4 "l_claw1_01"	     0.00   -2.35   -2.75    17.03    2.41    3.11
$hbox 4 "l_claw1_02"	    -2.59   -2.34   -4.12    24.12    2.26    2.99
$hbox 4 "l_claw2_01"	    -2.09   -2.47   -2.55    13.06    2.05    3.04
$hbox 4 "l_claw2_02"	    -0.69   -1.70   -3.89    19.22    1.73    2.23
$hbox 4 "l_hand"	    -1.26   -1.14   -4.47     8.11    6.39    3.37
$hbox 2 "l_shoulder_mass"	    -2.16  -10.60   -6.72     8.77   11.20    8.35



$hboxset "missing_arms"

$hbox 3 "pelvis"	   -13.34   -6.96  -14.51    16.63   15.31   14.51
$hbox 6 "l_thigh"	    -6.80  -11.10   -6.92    35.23    9.36    8.61
$hbox 6 "l_calf"	    -2.26   -6.47   -5.22    24.50    7.92    5.85
$hbox 6 "l_foot"	    -5.49   -7.53   -6.17     9.11   12.60    6.05
$hbox 7 "r_thigh"	    -5.76   -7.95   -8.61    27.20    9.20    6.93
$hbox 7 "r_calf"	    -2.26   -7.46   -5.85    21.19    7.23    5.91
$hbox 7 "r_foot"	    -2.57   -7.55   -5.97     9.04   12.38    6.07
$hbox 3 "spine"	    -5.01   -7.04  -12.00     9.04   13.93   11.78
$hbox 2 "spine1"	    -3.96  -12.83  -15.59    27.25   14.35   19.09
$hbox 1 "head"	   -10.40   -5.73   -7.23    10.51   18.88    7.25
$hbox 4 "l_clavicle"	     0.00   -6.69   -0.69    15.26    9.77   13.13
$hbox 4 "l_upperarm"	    -4.98   -7.89   -5.53    18.35    5.81    7.98
$hbox 5 "r_clavicle"	     0.00   -6.56   -7.81    11.87    8.90    0.00
$hbox 9 "corpse_head"	    -4.49   -8.85   -5.24     6.33   11.65    7.45
$hbox 9 "corpse_jaw"	    -2.46   -1.86   -3.93     8.77    3.48    4.04
$hbox 1 "tendril1"	    -4.26    0.00   -3.91     3.16   21.34    3.56
$hbox 1 "tendril2"	    -4.09   -3.32   -3.40     3.77   21.39    4.47
$hbox 1 "tendril3"	    -4.08    0.00   -4.39     3.79   21.42    3.48
$hbox 2 "l_shoulder_mass"	    -2.16  -10.60   -6.72     8.77   11.20    8.35




