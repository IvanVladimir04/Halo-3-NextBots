// Created by Crowbar 0.62

$modelname "halo_3/characters/covenant/grunt_backpack.mdl"

$scale	1.065
$origin -5 0 25 -90
$bodygroup "Body"
{
	studio "grunt_backpack.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 96

$cdmaterials "\models\halo_3\characters\covenant\grunt\"
$texturegroup "skinfamilies"
{
	{ "grunt_armor" }
	{ "grunt_armor_minor" }
	{ "grunt_armor_major" }
	{ "grunt_armor_heavy" }
	{ "grunt_armor_ultra" }
	{ "grunt_armor_specops" }
}

$cbox 0 0 0 0 0 0

$bbox -9.089 -11.527 -13.175 24.027 7.405 0.169


$sequence "reference" {
	"grunt_backpack.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}


$collisionmodel "grunt_backpack.smd"
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
