// Created by Crowbar 0.62

$modelname "halo_3/characters/covenant/brute_chiefweapon_helmet.mdl"

$scale	1.065
$origin 0 0 78 180
$bodygroup "Body"
{
	studio "brute_helmet_chiefweapon.smd"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 96

$cdmaterials "\models\halo_3\characters\covenant\brute\"
$texturegroup "skinfamilies"
{
	{ "brute_metal"					"minor_major_armor"						"jumppack_armor"		"chieftain_armor" }
	{ "brute_metal_minor"			"minor_major_armor_minor" 				"jumppack_armor"		"chieftain_armor" }
	{ "brute_metal_major" 			"minor_major_armor_major"				"jumppack_armor"	"chieftain_armor_sp"}
	{ "brute_metal_captain" 		"minor_major_armor_captain"				"jumppack_armor" 	"chieftain_armor_sp"}
	{ "brute_metal_captain_major" 	"minor_major_armor_captain_major"		"jumppack_armor"	"chieftain_armor_warchieftain"}
	{ "brute_metal_ultra" 			"minor_major_armor_ultra"				"jumppack_armor"		"chieftain_armor" }
	{ "brute_metal_bodyguard" 		"minor_major_armor_bodyguard"			"jumppack_armor"		"chieftain_armor" }
	{ "brute_metal_jumppack_major" 	"minor_major_armor_jumppack_major"		"jumppack_armor_major"		"chieftain_armor" }
}

$cbox 0 0 0 0 0 0

$bbox -9.089 -11.527 -13.175 24.027 7.405 0.169


$sequence "reference" {
	"brute_helmet_chiefweapon.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}


$collisionmodel "brute_helmet_chiefweapon.smd"
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
