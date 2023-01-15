// Created by Crowbar 0.62

$modelname "halo_3/characters/forerunner/gibs/monitor_eye.mdl"

$scale	1.065
$bodygroup "Body"
{
	studio "garbage_eye.smd"
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "\models\halo_3\characters\forerunner\monitor\"


$sequence "reference" {
	"garbage_eye.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}


$collisionmodel "garbage_eye.smd"
{
	$mass 250
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
