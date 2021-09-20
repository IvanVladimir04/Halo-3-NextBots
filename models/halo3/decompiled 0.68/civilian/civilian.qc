// Created by Crowbar 0.71

$modelname "halo3/Civilian.mdl"

$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "helmet"
{
	blank
	studio "helmet.smd"
}
$bodygroup "arms"
{
	studio "arms_standard.smd"
	studio "arms_bare.smd"
}
$bodygroup "head"
{
	studio "head_butkus.smd"
	studio "head_gough.smd"
	studio "head_isla.smd"
}

$texturegroup Arms
{
	{ "worker_arms"  }
}

$bodygroup "Misc"
{
	studio "halo3_marine_misc.smd"
}

$surfaceprop "flesh"

$cdmaterials "models/Ivan04/"

$includemodel "halo3/Marine.mdl"

$attachment "anim_attachment_RH" "r_hand" 3.5 1 -1 rotate 0 15 0
$attachment "shotgun" "r_hand" 0 0 0 rotate 0 15 0
$attachment "smg" "r_hand" 3 0 0 rotate 0 15 0
$attachment "magnum" "r_hand" 3 0 -0.5 rotate 0 15 0
$attachment "anim_attachment_LH" "l_hand" 1 0 0 rotate 90 0 0
$attachment "eyes" "eye_left" 1 -1 0 rotate -90 -90 0

$poseparameter "body_aim_pitch" -45 45 loop 0
$poseparameter "body_aim_yaw" -45 45 loop 0
$poseparameter "move_yaw" -180 180 loop 360