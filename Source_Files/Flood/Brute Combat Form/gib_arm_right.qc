// Created by Crowbar 0.62

$modelname "halo_3/characters/flood/gibs/brute_combat_form/gib_arm_right.mdl"

$scale	1.065
//$origin 0 0 0 0
$bodygroup "Body"
{
	studio "gib_arm_right.smd"
}

$surfaceprop "alienflesh"

$contents "solid"

$illumposition 0 0 96

$cdmaterials "\models\halo_3\characters\flood\brute_combat_form\"


$cbox 0 0 0 0 0 0

$bbox -9.089 -11.527 -13.175 24.027 7.405 0.169


$sequence "reference" {
	"gib_arm_right.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}


$collisionmodel "gib_arm_right.smd"
{
	$mass 75
	$inertia 1
	$damping 0
	$rotdamping 0
//	$rootbone "root_fuselage"
	$maxconvexpieces 12

}

$KeyValues
{
	prop_data 
	{
		"base" "Metal.Small"
	}
}
