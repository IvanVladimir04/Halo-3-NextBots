// Created by Crowbar 0.71

$modelname "halo_3/characters/flood/tank_pure_form.mdl"
$scale 1.065
$origin 0 0 0 -90

$bodygroup "Torso"
{
    studio "body_base.smd"
}
$bodygroup "Head"
{
    studio "head_base.smd"
}


$surfaceprop "alienflesh"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "\models\halo_3\characters\flood\tank_pure_form\"

$attachment "mouth" "head" 5.00 -8.00 0.00 rotate -0 -60 90
$attachment "eyes" "head" 5.00 -12.00 0.00 rotate -0 -90 90


$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.


$include "combat_any.qci"
//$include "common.qci"

//$poseparameter "move_yaw" -180 180 loop 360
//$PoseParameter "aim_yaw" -45 45 0
//$PoseParameter "aim_pitch" -90 90 0

//REFERENCE

$animation "ref" "flood_tank_animations\REFERENCE.smd" {
	fps 30
}

$sequence "ragdoll" {
	"flood_tank_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}


$collisionjoints "flood_tank_h3_physics.smd"
{
	$mass 2000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "pelvis"

	$jointconstrain "spine2" x limit -48.00 48.00 0.00
	$jointconstrain "spine2" y limit -25.00 25.00 0.00
	$jointconstrain "spine2" z limit -25.00 50.00 0.00

	$jointconstrain "r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "r_upperarm" y limit -20.00 20.00 0.00
	$jointconstrain "r_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "l_upperarm" y limit -20.00 20.00 0.00
	$jointconstrain "l_upperarm" z limit -36.00 36.00 0.00

	$jointconstrain "l_forearm" x limit -20.00 20.00 0.00
	$jointconstrain "l_forearm" y limit -5.00 5.00 0.00
	$jointconstrain "l_forearm" z limit 0.00 50.00 0.00

	$jointconstrain "head" x limit -30.00 30.00 0.00
	$jointconstrain "head" y limit -25.00 25.00 0.00
	$jointconstrain "head" z limit -15.00 35.00 0.00

	$jointconstrain "r_forearm" x limit -20.00 20.00 0.00
	$jointconstrain "r_forearm" y limit -5.00 5.00 0.00
	$jointconstrain "r_forearm" z limit -50.00 30.00 0.00

	$jointrotdamping "r_thigh" 0.00
	$jointconstrain "r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "r_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "r_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "l_thigh" y limit -12.00 28.00 0.00
	$jointconstrain "l_thigh" z limit -32.00 32.00 0.00

	$jointconstrain "l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "l_calf" y limit 0.00 65.00 0.00
	$jointconstrain "l_calf" z limit 0.00 50.00 0.00

	$jointconstrain "r_calf" x limit -5.00 5.00 0.00
	$jointconstrain "r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "r_calf" z limit 0.00 50.00 0.00
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
		"jointmerge"		"pelvis,spine2"
		"jointmerge"		"pelvis,spine"
	}
}

$scale 0.9

// .qc block generated by HLMV begins.

$surfaceprop "alienflesh"


$hboxset "default"

$hbox 3 "pelvis"	    -5.52  -10.39  -16.10     9.08    9.77   18.96
$hbox 6 "l_thigh"	    -8.00  -11.70   -9.79    25.16    9.40    8.46
$hbox 6 "l_calf"	    -1.84   -8.72   -9.70    20.92    8.41    6.76
$hbox 7 "r_thigh"	    -9.60   -8.97   -8.85    20.62   11.88    9.34
$hbox 7 "r_calf"	    -6.77   -9.06  -10.34    21.01    9.81   11.50
$hbox 7 "r_foot"	   -10.16  -12.86  -11.96    11.09   10.26   12.79
$hbox 3 "spine"	   -13.23   -5.73  -11.79     1.43    9.60   14.03
$hbox 2 "spine1"	   -10.20   -8.16  -11.91     5.90    8.26   11.85
$hbox 2 "spine2"	   -26.57  -28.57  -15.10     8.12   12.48   18.65
$hbox 4 "l_klavicle"	     0.00  -13.86  -11.09    23.29   16.02   18.02
$hbox 4 "l_klavicle02"	    -4.81  -10.34   -9.52    18.83    8.52   12.40
$hbox 4 "l_upperarm"	    -5.64   -9.55   -8.90    28.14    6.83    7.25
$hbox 4 "l_forearm"	    -5.18  -10.29   -7.22    31.90    4.26    5.68
$hbox 9 "neck"	   -13.67  -12.75  -10.80    11.92    3.29    9.92
$hbox 1 "head"	    -6.62  -11.47   -8.28     8.44    1.86    8.62
$hbox 1 "l_head_claw01"	     0.00   -1.58   -1.83     9.52    2.15    1.15
$hbox 1 "l_head_claw02"	    -0.28   -2.64   -3.42    15.61    1.27    1.02
$hbox 1 "r_head_claw01"	     0.00   -4.21   -1.50    10.39    0.64    1.44
$hbox 1 "r_head_claw02"	    -0.25   -0.22   -1.47    15.63    4.11    1.52
$hbox 5 "r_klavicle"	    -0.06  -12.14  -16.14    27.99   15.55   16.49
$hbox 5 "r_klavicle02"	    -1.97  -12.61  -14.09    23.24   12.51   18.17
$hbox 5 "r_upperarm"	    -4.53  -12.26  -10.06    35.13    9.92   12.55
$hbox 5 "r_forearm"	    -9.46  -12.22  -15.71    63.13   20.79   11.21
$hbox 1 "c_tendril"	     0.00  -16.19   -3.23    12.23    0.00    4.39
$hbox 1 "l_mouth01"	    -2.13   -2.91   -2.86    21.32    3.07    3.99
$hbox 1 "l_mouth02"	    -9.32   -1.70   -2.20    19.23    1.87    2.08
$hbox 1 "l_tendril"	     0.00  -14.91   -1.37    14.94    0.00    6.66
$hbox 1 "r_mouth01"	    -1.42   -2.62   -3.40    21.29    3.53    3.69
$hbox 1 "r_mouth02"	   -11.68   -2.31   -2.22    19.20    1.49    2.25
$hbox 1 "r_tendril"	     0.00  -14.65   -5.45    15.35    0.00    2.44



