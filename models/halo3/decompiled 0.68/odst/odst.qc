// Created by Crowbar 0.71

$modelname "halo3/ODST.mdl"

$bodygroup "body"
{
	studio "body.smd"
}
$bodygroup "badge"
{
	blank
	studio "badge.smd"
}
$bodygroup "d_chest"
{
	studio "d_chest.smd"
	blank
}
$bodygroup "rank_captain"
{
	blank
	studio "rank_captain.smd"
}
$bodygroup "d_head"
{
	blank
	studio "d_head.smd"
}
$bodygroup "d_waist"
{
	blank
	studio "d_waist.smd"
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