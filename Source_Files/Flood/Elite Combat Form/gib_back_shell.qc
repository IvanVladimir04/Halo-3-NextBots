// Created by Crowbar 0.62

$modelname "halo_3/characters/flood/gibs/elite_combat_form/gib_back_shell.mdl"

$scale	1.065
//$origin 0 0 0 0
$bodygroup "Body"
{
	studio "gib_back_shell.smd"
}

$surfaceprop "metal"

$contents "solid"

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


$sequence "reference" {
	"gib_back_shell.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}


$collisionmodel "gib_back_shell.smd"
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
