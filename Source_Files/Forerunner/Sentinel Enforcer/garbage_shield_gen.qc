// Created by Crowbar 0.62

$modelname "halo_3/characters/forerunner/gibs/enforcer_shield_gen.mdl"

$scale	1.065
$origin 0 0 78 180
$bodygroup "Body"
{
	studio "garbage_shield_gen.smd"
}

$surfaceprop "metalvehicle"

$contents "solid"

$cdmaterials "\models\halo_3\characters\forerunner\enforcer\"


$sequence "reference" {
	"garbage_shield_gen.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}


$collisionmodel "garbage_shield_gen.smd"
{
	$mass 750
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
