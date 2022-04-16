// Created by Crowbar 0.62

$modelname "halo_3/characters/alliance/gibs/helmet.mdl"

$scale	1.065
$origin 0 0 60 -90
$bodygroup "Body"
{
	studio "Marine_Helmet.smd"
	studio "Marine_Helmet_Goggles.smd"
}

$surfaceprop "weapon"

$contents "solid"

$illumposition 0 0 4

$cdmaterials "\models\halo_3\characters\alliance\marine\"

$cbox 0 0 0 0 0 0

$bbox -9.089 -11.527 -13.175 24.027 7.405 0.169


$sequence "reference" {
	"Marine_Helmet.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}


$collisionmodel "Marine_Helmet.smd"
{
	$mass 1
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
