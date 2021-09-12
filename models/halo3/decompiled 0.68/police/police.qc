// Created by Crowbar 0.71

$modelname "halo3/Police.mdl"

$bodygroup "Police"
{
	studio "police_officer.smd"
}
$bodygroup "Head"
{
	studio "police_officer_head_helmet.smd"
	studio "police_officer_head_visor.smd"
}
$bodygroup "Face"
{
	studio "police_officer_face_helmet.smd"
	studio "police_officer_face_visor.smd"
}
$bodygroup "Right Shoulder"
{
	studio "police_officer_r_shoulder_off.smd"
	studio "police_officer_r_shoulder_on.smd"
}
$bodygroup "Left Shoulder"
{
	studio "police_officer_l_shoulder_off.smd"
	studio "police_officer_l_shoulder_on.smd"
}
$bodygroup "Misc"
{
	studio "halo3_marine_misc.smd"
}

$surfaceprop "flesh"

$cdmaterials "models\Ivan04\"

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
