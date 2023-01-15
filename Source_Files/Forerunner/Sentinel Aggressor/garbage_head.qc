// Created by Crowbar 0.62

$modelname "halo_3/characters/forerunner/gibs/sentinel_head.mdl"

$scale	1.065
$bodygroup "Body"
{
	studio "garbage_head.smd"
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "\models\halo_3\characters\forerunner\sentinel\"

$texturegroup "skinfamilies"
{
	{ "sentinel_aggressor"   }
	{ "sentinel_aggressor_minor"   }
	{ "sentinel_aggressor_major"   }
}

$sequence "reference" {
	"garbage_head.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}


$collisionmodel "garbage_head.smd"
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
