// Created by Crowbar 0.71

$modelname "halo_3/characters/flood/stalker_pure_form.mdl"
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
$bodygroup "Transform"
{
    studio "transform_base.smd"
}
$bodygroup "Tail"
{
    studio "tail_base.smd"
}
$surfaceprop "zombieflesh"

$contents "solid"

$illumposition 5.065 3.683 2.265

$cdmaterials "\models\halo_3\characters\flood\stalker_pure_form\"

$attachment "eyes" "head" 14.00 0.00 0.00 rotate -0 0 0
$attachment "head" "head" 0 0 0 rotate 0 0 0


$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

//QCI includes for different holdtypes, etc.


$include "combat_any.qci"
$include "climb_any.qci"
//$include "common.qci"

//$poseparameter "move_yaw" -180 180 loop 360
//$PoseParameter "aim_yaw" -45 45 0
//$PoseParameter "aim_pitch" -90 90 0

//REFERENCE

$animation "ref" "flood_stalker_animations\REFERENCE.smd" {
	fps 30
}

$sequence "ragdoll" {
	"flood_stalker_animations\reference.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 1
	fadeout 1
	fps 10
}



$collisionjoints "stalkerform_h3_physics.smd"
{
	$mass 1000.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "hips"

	$jointconstrain "r_arm" x limit -15.00 15.00 0.00
	$jointconstrain "r_arm" y limit -15.00 15.00 0.00
	$jointconstrain "r_arm" z limit -30.00 45.00 0.00

	$jointconstrain "r_elbow" x limit -10.00 10.00 0.00
	$jointconstrain "r_elbow" y limit -20.00 20.00 0.00
	$jointconstrain "r_elbow" z limit -30.00 30.00 0.00

	$jointconstrain "r_hand" x limit -15.00 15.00 0.00
	$jointconstrain "r_hand" y limit -15.00 15.00 0.00
	$jointconstrain "r_hand" z limit -20.00 30.00 0.00
	
	$jointconstrain "l_arm" x limit -15.00 15.00 0.00
	$jointconstrain "l_arm" y limit -15.00 15.00 0.00
	$jointconstrain "l_arm" z limit -30.00 45.00 0.00

	$jointconstrain "l_elbow" x limit -10.00 10.00 0.00
	$jointconstrain "l_elbow" y limit -20.00 20.00 0.00
	$jointconstrain "l_elbow" z limit -30.00 30.00 0.00

	$jointconstrain "l_hand" x limit -15.00 15.00 0.00
	$jointconstrain "l_hand" y limit -15.00 15.00 0.00
	$jointconstrain "l_hand" z limit -20.00 30.00 0.00
	
	$jointconstrain "r_leg" x limit -30.00 30.00 0.00
	$jointconstrain "r_leg" y limit -30.00 10.00 0.00
	$jointconstrain "r_leg" z limit -35.00 30.00 0.00

	$jointconstrain "r_knee" x limit -15.00 15.00 0.00
	$jointconstrain "r_knee" y limit -35.00 35.00 0.00
	$jointconstrain "r_knee" z limit -50.00 30.00 0.00

	$jointconstrain "r_foot" x limit -20.00 20.00 0.00
	$jointconstrain "r_foot" y limit -15.00 15.00 0.00
	$jointconstrain "r_foot" z limit -50.00 35.00 0.00
	
	$jointconstrain "l_leg" x limit -30.00 30.00 0.00
	$jointconstrain "l_leg" y limit -30.00 10.00 0.00
	$jointconstrain "l_leg" z limit -35.00 30.00 0.00

	$jointconstrain "l_knee" x limit -15.00 15.00 0.00
	$jointconstrain "l_knee" y limit -35.00 35.00 0.00
	$jointconstrain "l_knee" z limit -50.00 30.00 0.00

	$jointconstrain "l_foot" x limit -20.00 20.00 0.00
	$jointconstrain "l_foot" y limit -15.00 15.00 0.00
	$jointconstrain "l_foot" z limit -50.00 35.00 0.00
	
	$jointconstrain "tail02" x limit -15.00 15.00 0.00
	$jointconstrain "tail02" y limit -15.00 15.00 0.00
	$jointconstrain "tail02" z limit -15.00 15.00 0.00
	
	$jointconstrain "head" x limit -25.00 25.00 0.00
	$jointconstrain "head" y limit -25.00 30.00 0.00
	$jointconstrain "head" z limit -35.00 35.00 0.00
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
		"rootname"		"hips"
		"totalmass"		"90.000000"
		"jointmerge"		"hips,tail02"
//		"jointmerge"		"hips,spine"
	}
}