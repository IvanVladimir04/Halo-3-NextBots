// Created by Crowbar 0.71

$modelname "halo3/ODSTS.mdl"

$bodygroup "Body"
{
	studio "body.smd"
}
$bodygroup "Badge"
{
	blank
	studio "badge.smd"
}
$bodygroup "Chest"
{
	studio "chest_standard.smd"
	studio "chest_broken.smd"
}
$bodygroup "Emblem"
{
	blank
	studio "emblem_on.smd"
	studio "emblem_dutch.smd"
}
$bodygroup "D_head"
{
	blank
	studio "d_head.smd"
}
$bodygroup "D_waist"
{
	blank
	studio "d_waist.smd"
}
$bodygroup "Gear"
{
	studio "gear_standard.smd"
	studio "gear_sergeant.smd"
	studio "gear_dutch.smd"
	studio "gear_mickey.smd"
	studio "gear_romeo.smd"
	studio "gear_johnson.smd"
}
$bodygroup "Head"
{
	blank
	studio "head_sergeant.smd"
	studio "head_dutch.smd"
	studio "head_mickey.smd"
	studio "head_romeo.smd"
	studio "head_johnson.smd"
}
$bodygroup "Headgear"
{
	blank
	studio "headgear_sergeant.smd"
	studio "headgear_dutch.smd"
	studio "headgear_mickey.smd"
	studio "headgear_romeo.smd"
}
$bodygroup "Helmet"
{
	studio "helmet.smd"
	blank
}
$bodygroup "Hands"
{
	studio "hands_standard.smd"
}
$bodygroup "Knife"
{
	blank
	studio "knife.smd"
}
$bodygroup "Splatter"
{
	blank
	studio "splatter.smd"
}
$bodygroup "Left Shoulder"
{
	blank
	studio "l_shoulder.smd"
}
$bodygroup "Right Shoulder"
{
	blank
	studio "r_shoulder.smd"
}
$bodygroup "Misc"
{
	studio "halo3_marine_misc.smd"
}

$texturegroup Arms
{
	{ "fp_skin" "marine_arm_pack_perm_diffuse" }
	{ "odst_arms_skin_romeo" "johnson_odst_hat" }
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