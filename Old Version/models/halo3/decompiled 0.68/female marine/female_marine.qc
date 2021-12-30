// Created by Crowbar 0.71

$modelname "halo3/Female_Marine.mdl"

$bodygroup "Body"
{
	studio "body.smd"
}
$bodygroup "Arms"
{
	studio "arms.smd"
	studio "arms_barehalf.smd"
}
$bodygroup "Backpack"
{
	blank
	studio "comm_pack.smd"
}
$bodygroup "Head"
{
	studio "head_anete.smd"
	studio "head_chan.smd"
	studio "head_hartmann.smd"
	studio "head_michelle.smd"
}
$bodygroup "Helmet"
{
	blank
	studio "helmet.smd"
	studio "helmet_nogoogles.smd"
}

$bodygroup "Misc"
{
	studio "halo3_marine_misc.smd"
}

$texturegroup Arms
{
	{ "bare_arms"  }
	{ "bare_arms_2" }
	{ "bare_arms_3" }
	{ "bare_arms_4" }
	{ "bare_arms_5" }
	{ "bare_arms_6" }
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