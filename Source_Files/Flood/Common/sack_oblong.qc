// Created by Crowbar 0.62

$modelname "halo_3/characters/flood/muffin.mdl"

$bodygroup "studio"
{
	studio "sack_round.smd"
	studio "sack_oblong.smd"
	studio "sack_small.smd"
	studio "sack_squashed.smd"
	blank
}


$surfaceprop "alienflesh"

$contents "solid"

$illumposition 0.491 0.013 -1.996

$cdmaterials "\models\halo_3\characters\flood\muffin\"


$cbox 0 0 0 0 0 0

$bbox -6.034 -1.557 -6.14 5.777 2.54 2.149


$sequence "idle" {
	"sack_round.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

