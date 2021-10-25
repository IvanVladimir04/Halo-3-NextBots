// Created by Crowbar 0.71

$modelname "halo3/Marine.mdl"

$bodygroup "Misc"
{
	studio "halo3_marine_misc.smd"
}
$bodygroup "Marine"
{
	studio "Marine_reference.smd"
}
$bodygroup "Arms"
{
	studio "Marine_Arms_Standard.smd"
	studio "arms_barehalf.smd"
}
$bodygroup "Backpack"
{
	blank
	studio "Marine_Commpack.smd"
}
$bodygroup "Chestplate"
{
	blank
	studio "Marine_Chestplate_Pilot.smd"
}
$bodygroup "Armor"
{
	blank
	studio "Marine_Armor.smd"
}
$bodygroup "Head"
{
	studio "Marine_Head_Arroyo.smd"
	studio "Marine_Head_Butkus.smd"
	studio "Marine_Head_Fones.smd"
	studio "Marine_Head_Gough.smd"
	studio "Marine_Head_Isla.smd"
	studio "Marine_Head_Smith.smd"
	studio "Marine_Head_Walter.smd"
	studio "Marine_Head_Wu.smd"
	studio "Marine_Head_Johnson.smd"
	studio "Marine_Head_Stacker.smd"
	studio "Marine_Head_Reynolds.smd"
}
$bodygroup "Helmet"
{
	blank
	studio "Marine_Helmet.smd"
	studio "Marine_Helmet_Goggles.smd"
	studio "Marine_Helmet_Pilot.smd"
}
$bodygroup "Packs"
{
	blank
	studio "Marine_Packs_Chest.smd"
	studio "Marine_Packs_Thigh.smd"
	studio "Marine_Packs_Waist.smd"
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

$eyeposition 0 0 60

$surfaceprop "flesh"

$cdmaterials "models/Ivan04/"

$attachment "anim_attachment_RH" "r_hand" 3.5 1 -1 rotate 0 15 0
$attachment "shotgun" "r_hand" 0 0 0 rotate 0 15 0
$attachment "smg" "r_hand" 3 0 0 rotate 0 15 0
$attachment "magnum" "r_hand" 3 0 -0.5 rotate 0 15 0
$attachment "anim_attachment_LH" "l_hand" 1 0 0 rotate 90 0 0
$attachment "eyes" "eye_left" 1 -1 0 rotate -90 -90 0

$poseparameter "body_aim_pitch" -45 45 loop 0
$poseparameter "body_aim_yaw" -45 45 loop 0
$poseparameter "move_yaw" -180 180 loop 360

$weightlist "weights_face_posed" {
	 "pelvis" 0
	 "l_thigh" 0
	 "l_calf" 0
	 "l_foot" 0
	 "l_toe" 0
	 "r_thigh" 0
	 "r_calf" 0
	 "r_foot" 0
	 "r_toe" 0
	 "spine" 0
	 "spine1" 0
	 "l_clavicle" 0
	 "l_upperarm" 0
	 "neck" 0
	 "head" 0
	 "jaw" 0
	 "r_clavicle" 0
	 "r_upperarm" 0
	 "l_forearm" 0
	 "l_hand" 0
	 "l_index1" 0
	 "l_index2" 0
	 "l_ring1" 0
	 "l_ring2" 0
	 "l_thumb1" 0
	 "l_thumb2" 0
	 "r_forearm" 0
	 "r_hand" 0
	 "r_index1" 0
	 "r_index2" 0
	 "r_ring1" 0
	 "r_ring2" 0
	 "r_thumb1" 0
	 "r_thumb2" 0
	 "eye_left" 0
	 "eye_right" 0
	 "f_l_brow_inner" 0
	 "f_l_brow_outer" 0
	 "f_l_cheek" 1
	 "f_l_eyelid_lower" 0
	 "f_l_eyelid_upper" 0
	 "f_l_lip_upper" 0
	 "f_l_mouth" 1
	 "f_l_nose_corner" 1
	 "f_r_brow_inner" 0
	 "f_r_brow_outer" 0
	 "f_r_cheek" 1
	 "f_r_eyelid_lower" 0
	 "f_r_eyelid_upper" 0
	 "f_r_lip_upper" 0
	 "f_r_mouth" 1
	 "f_r_nose_corner" 1
	 "f_l_lip_lower" 1
	 "f_r_lip_lower" 1
}

$weightlist "weights_pose_eyes" {
	 "pelvis" 0
	 "l_thigh" 0
	 "l_calf" 0
	 "l_foot" 0
	 "l_toe" 0
	 "r_thigh" 0
	 "r_calf" 0
	 "r_foot" 0
	 "r_toe" 0
	 "spine" 0
	 "spine1" 0
	 "l_clavicle" 0
	 "l_upperarm" 0
	 "neck" 0
	 "head" 0
	 "jaw" 0
	 "r_clavicle" 0
	 "r_upperarm" 0
	 "l_forearm" 0
	 "l_hand" 0
	 "l_index1" 0
	 "l_index2" 0
	 "l_ring1" 0
	 "l_ring2" 0
	 "l_thumb1" 0
	 "l_thumb2" 0
	 "r_forearm" 0
	 "r_hand" 0
	 "r_index1" 0
	 "r_index2" 0
	 "r_ring1" 0
	 "r_ring2" 0
	 "r_thumb1" 0
	 "r_thumb2" 0
	 "eye_left" 1
	 "eye_right" 1
	 "f_l_brow_inner" 0
	 "f_l_brow_outer" 1
	 "f_l_cheek" 0
	 "f_l_eyelid_lower" 1
	 "f_l_eyelid_upper" 1
	 "f_l_lip_upper" 0
	 "f_l_mouth" 0
	 "f_l_nose_corner" 0
	 "f_r_brow_inner" 1
	 "f_r_brow_outer" 1
	 "f_r_cheek" 0
	 "f_r_eyelid_lower" 1
	 "f_r_eyelid_upper" 1
	 "f_r_lip_upper" 0
	 "f_r_mouth" 0
	 "f_r_nose_corner" 0
	 "f_l_lip_lower" 0
	 "f_r_lip_lower" 0
}

$weightlist "weights_melee1" {
	 "pelvis" 1
	 "l_thigh" 1
	 "l_calf" 1
	 "l_foot" 1
	 "l_toe" 1
	 "r_thigh" 1
	 "r_calf" 1
	 "r_foot" 1
	 "r_toe" 1
	 "spine" 1
	 "spine1" 1
	 "l_clavicle" 1
	 "l_upperarm" 1
	 "neck" 1
	 "head" 1
	 "jaw" 1
	 "r_clavicle" 1
	 "r_upperarm" 1
	 "l_forearm" 1
	 "l_hand" 1
	 "l_index1" 1
	 "l_index2" 1
	 "l_ring1" 1
	 "l_ring2" 1
	 "l_thumb1" 1
	 "l_thumb2" 1
	 "r_forearm" 1
	 "r_hand" 1
	 "r_index1" 1
	 "r_index2" 1
	 "r_ring1" 1
	 "r_ring2" 1
	 "r_thumb1" 1
	 "r_thumb2" 1
	 "eye_left" 0
	 "eye_right" 0
	 "f_l_brow_inner" 1
	 "f_l_brow_outer" 0
	 "f_l_cheek" 0
	 "f_l_eyelid_lower" 0
	 "f_l_eyelid_upper" 0
	 "f_l_lip_upper" 1
	 "f_l_mouth" 0
	 "f_l_nose_corner" 0
	 "f_r_brow_inner" 0
	 "f_r_brow_outer" 0
	 "f_r_cheek" 0
	 "f_r_eyelid_lower" 0
	 "f_r_eyelid_upper" 0
	 "f_r_lip_upper" 1
	 "f_r_mouth" 0
	 "f_r_nose_corner" 0
	 "f_l_lip_lower" 0
	 "f_r_lip_lower" 0
}

$weightlist "weights_reload" {
	 "pelvis" 0
	 "l_thigh" 0
	 "l_calf" 0
	 "l_foot" 0
	 "l_toe" 0
	 "r_thigh" 0
	 "r_calf" 0
	 "r_foot" 0
	 "r_toe" 0
	 "spine" 1
	 "spine1" 1
	 "l_clavicle" 1
	 "l_upperarm" 1
	 "neck" 1
	 "head" 1
	 "jaw" 1
	 "r_clavicle" 1
	 "r_upperarm" 1
	 "l_forearm" 1
	 "l_hand" 1
	 "l_index1" 1
	 "l_index2" 1
	 "l_ring1" 1
	 "l_ring2" 1
	 "l_thumb1" 1
	 "l_thumb2" 1
	 "r_forearm" 1
	 "r_hand" 1
	 "r_index1" 1
	 "r_index2" 1
	 "r_ring1" 1
	 "r_ring2" 1
	 "r_thumb1" 1
	 "r_thumb2" 1
	 "eye_left" 0
	 "eye_right" 0
	 "f_l_brow_inner" 1
	 "f_l_brow_outer" 0
	 "f_l_cheek" 0
	 "f_l_eyelid_lower" 0
	 "f_l_eyelid_upper" 0
	 "f_l_lip_upper" 1
	 "f_l_mouth" 0
	 "f_l_nose_corner" 0
	 "f_r_brow_inner" 0
	 "f_r_brow_outer" 0
	 "f_r_cheek" 0
	 "f_r_eyelid_lower" 0
	 "f_r_eyelid_upper" 0
	 "f_r_lip_upper" 1
	 "f_r_mouth" 0
	 "f_r_nose_corner" 0
	 "f_l_lip_lower" 0
	 "f_r_lip_lower" 0
}

//AIMLAYER HELL

$animation "aim_battle_rifle_crouch_neutral" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_battle_rifle_crouch_down_left" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_down_center" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_down_right" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_mid_left" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_mid_center" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_mid_right" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_up_left" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_up_center" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_up_right" "marine_anims\rifle_crouch_aim_still_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$sequence "aimlayer_crouch_battle_rifle" {
    "aim_battle_rifle_crouch_up_right" "aim_battle_rifle_crouch_up_center"  "aim_battle_rifle_crouch_up_left"
    "aim_battle_rifle_crouch_mid_right" "aim_battle_rifle_crouch_mid_center"  "aim_battle_rifle_crouch_mid_left"
    "aim_battle_rifle_crouch_down_right" "aim_battle_rifle_crouch_down_center" "aim_battle_rifle_crouch_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_battle_rifle_crouch_neutral_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_battle_rifle_crouch_down_left_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_battle_rifle_crouch_neutral_move" 0
}

$animation "aim_battle_rifle_crouch_down_center_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_battle_rifle_crouch_neutral_move" 0
}

$animation "aim_battle_rifle_crouch_down_right_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_battle_rifle_crouch_neutral_move" 0
}

$animation "aim_battle_rifle_crouch_mid_left_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_battle_rifle_crouch_neutral_move" 0
}

$animation "aim_battle_rifle_crouch_mid_center_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_battle_rifle_crouch_neutral_move" 0
}

$animation "aim_battle_rifle_crouch_mid_right_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_battle_rifle_crouch_neutral_move" 0
}

$animation "aim_battle_rifle_crouch_up_left_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_up_center_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_battle_rifle_crouch_neutral_move" 0
}

$animation "aim_battle_rifle_crouch_up_right_move" "marine_anims\rifle_crouch_aim_move_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_battle_rifle_crouch_neutral_move" 0
}

$sequence "aimlayer_crouch_battle_rifle_move" {
    "aim_battle_rifle_crouch_up_right_move" "aim_battle_rifle_crouch_up_center_move"  "aim_battle_rifle_crouch_up_left_move"
    "aim_battle_rifle_crouch_mid_right_move" "aim_battle_rifle_crouch_mid_center_move"  "aim_battle_rifle_crouch_mid_left_move"
    "aim_battle_rifle_crouch_down_right_move" "aim_battle_rifle_crouch_down_center_move" "aim_battle_rifle_crouch_down_left_move"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_battle_rifle_neutral" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_battle_rifle_down_left" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_battle_rifle_neutral" 0
}

$animation "aim_battle_rifle_down_center" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_battle_rifle_neutral" 0
}

$animation "aim_battle_rifle_down_right" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_battle_rifle_neutral" 0
}

$animation "aim_battle_rifle_mid_left" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_battle_rifle_neutral" 0
}

$animation "aim_battle_rifle_mid_center" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_battle_rifle_neutral" 0
}

$animation "aim_battle_rifle_mid_right" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_battle_rifle_neutral" 0
}

$animation "aim_battle_rifle_up_left" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_battle_rifle_neutral" 0
}

$animation "aim_battle_rifle_up_center" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_battle_rifle_neutral" 0
}

$animation "aim_battle_rifle_up_right" "marine_anims\rifle_aim_still_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_battle_rifle_neutral" 0
}

$sequence "aimlayer_battle_rifle" {
    "aim_battle_rifle_up_right" "aim_battle_rifle_up_center"  "aim_battle_rifle_up_left"
    "aim_battle_rifle_mid_right" "aim_battle_rifle_mid_center"  "aim_battle_rifle_mid_left"
    "aim_battle_rifle_down_right" "aim_battle_rifle_down_center" "aim_battle_rifle_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_battle_rifle_neutral_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_battle_rifle_down_left_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_battle_rifle_neutral_move" 0
}

$animation "aim_battle_rifle_down_center_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_battle_rifle_neutral_move" 0
}

$animation "aim_battle_rifle_down_right_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_battle_rifle_neutral_move" 0
}

$animation "aim_battle_rifle_mid_left_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_battle_rifle_neutral_move" 0
}

$animation "aim_battle_rifle_mid_center_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_battle_rifle_neutral_move" 0
}

$animation "aim_battle_rifle_mid_right_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_battle_rifle_neutral_move" 0
}

$animation "aim_battle_rifle_up_left_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_battle_rifle_neutral_move" 0
}

$animation "aim_battle_rifle_up_center_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_battle_rifle_neutral_move" 0
}

$animation "aim_battle_rifle_up_right_move" "marine_anims\rifle_aim_move_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_battle_rifle_neutral_move" 0
}

$sequence "aimlayer_battle_rifle_move" {
    "aim_battle_rifle_up_right_move" "aim_battle_rifle_up_center_move"  "aim_battle_rifle_up_left_move"
    "aim_battle_rifle_mid_right_move" "aim_battle_rifle_mid_center_move"  "aim_battle_rifle_mid_left_move"
    "aim_battle_rifle_down_right_move" "aim_battle_rifle_down_center_move" "aim_battle_rifle_down_left_move"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

// Subsection for passive rifle

$animation "aim_battle_rifle_crouch_neutral_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_battle_rifle_crouch_down_left_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$animation "aim_battle_rifle_crouch_down_center_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$animation "aim_battle_rifle_crouch_down_right_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$animation "aim_battle_rifle_crouch_mid_left_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$animation "aim_battle_rifle_crouch_mid_center_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$animation "aim_battle_rifle_crouch_mid_right_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$animation "aim_battle_rifle_crouch_up_left_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$animation "aim_battle_rifle_crouch_up_center_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$animation "aim_battle_rifle_crouch_up_right_passive" "marine_anims\rifle_crouch_aim_still_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_battle_rifle_crouch_neutral_passive" 0
}

$sequence "aimlayer_crouch_battle_rifle_passive" {
    "aim_battle_rifle_crouch_up_right_passive" "aim_battle_rifle_crouch_up_center_passive"  "aim_battle_rifle_crouch_up_left"
    "aim_battle_rifle_crouch_mid_right_passive" "aim_battle_rifle_crouch_mid_center_passive"  "aim_battle_rifle_crouch_mid_left"
    "aim_battle_rifle_crouch_down_right_passive" "aim_battle_rifle_crouch_down_center_passive" "aim_battle_rifle_crouch_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_battle_rifle_crouch_neutral_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_battle_rifle_crouch_down_left_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_battle_rifle_crouch_neutral_move_passive" 0
}

$animation "aim_battle_rifle_crouch_down_center_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_battle_rifle_crouch_neutral_move_passive" 0
}

$animation "aim_battle_rifle_crouch_down_right_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_battle_rifle_crouch_neutral_move_passive" 0
}

$animation "aim_battle_rifle_crouch_mid_left_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_battle_rifle_crouch_neutral_move_passive" 0
}

$animation "aim_battle_rifle_crouch_mid_center_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_battle_rifle_crouch_neutral_move_passive" 0
}

$animation "aim_battle_rifle_crouch_mid_right_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_battle_rifle_crouch_neutral_move_passive" 0
}

$animation "aim_battle_rifle_crouch_up_left_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_battle_rifle_crouch_neutral" 0
}

$animation "aim_battle_rifle_crouch_up_center_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_battle_rifle_crouch_neutral_move_passive" 0
}

$animation "aim_battle_rifle_crouch_up_right_move_passive" "marine_anims\rifle_crouch_aim_move_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_battle_rifle_crouch_neutral_move_passive" 0
}

$sequence "aimlayer_crouch_battle_rifle_move_passive" {
    "aim_battle_rifle_crouch_up_right_move_passive" "aim_battle_rifle_crouch_up_center_move_passive"  "aim_battle_rifle_crouch_up_left_move_passive"
    "aim_battle_rifle_crouch_mid_right_move_passive" "aim_battle_rifle_crouch_mid_center_move_passive"  "aim_battle_rifle_crouch_mid_left_move_passive"
    "aim_battle_rifle_crouch_down_right_move_passive" "aim_battle_rifle_crouch_down_center_move_passive" "aim_battle_rifle_crouch_down_left_move_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_battle_rifle_neutral_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_battle_rifle_down_left_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_battle_rifle_neutral_passive" 0
}

$animation "aim_battle_rifle_down_center_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_battle_rifle_neutral_passive" 0
}

$animation "aim_battle_rifle_down_right_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_battle_rifle_neutral_passive" 0
}

$animation "aim_battle_rifle_mid_left_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_battle_rifle_neutral_passive" 0
}

$animation "aim_battle_rifle_mid_center_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_battle_rifle_neutral_passive" 0
}

$animation "aim_battle_rifle_mid_right_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_battle_rifle_neutral_passive" 0
}

$animation "aim_battle_rifle_up_left_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_battle_rifle_neutral_passive" 0
}

$animation "aim_battle_rifle_up_center_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_battle_rifle_neutral_passive" 0
}

$animation "aim_battle_rifle_up_right_passive" "marine_anims\rifle_aim_still_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_battle_rifle_neutral_passive" 0
}

$sequence "aimlayer_battle_rifle_passive" {
    "aim_battle_rifle_up_right_passive" "aim_battle_rifle_up_center_passive"  "aim_battle_rifle_up_left_passive"
    "aim_battle_rifle_mid_right_passive" "aim_battle_rifle_mid_center_passive"  "aim_battle_rifle_mid_left_passive"
    "aim_battle_rifle_down_right_passive" "aim_battle_rifle_down_center_passive" "aim_battle_rifle_down_left_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_smg_neutral_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_smg_down_left_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_smg_neutral_passive" 0
}

$animation "aim_smg_down_center_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_smg_neutral_passive" 0
}

$animation "aim_smg_down_right_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_smg_neutral_passive" 0
}

$animation "aim_smg_mid_left_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_smg_neutral_passive" 0
}

$animation "aim_smg_mid_center_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_smg_neutral_passive" 0
}

$animation "aim_smg_mid_right_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_smg_neutral_passive" 0
}

$animation "aim_smg_up_left_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_smg_neutral_passive" 0
}

$animation "aim_smg_up_center_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_smg_neutral_passive" 0
}

$animation "aim_smg_up_right_passive" "marine_anims\rifle_smg_aim_still_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_smg_neutral_passive" 0
}

$sequence "aimlayer_smg_passive" {
    "aim_smg_up_right_passive" "aim_smg_up_center_passive"  "aim_smg_up_left_passive"
    "aim_smg_mid_right_passive" "aim_smg_mid_center_passive"  "aim_smg_mid_left_passive"
    "aim_smg_down_right_passive" "aim_smg_down_center_passive" "aim_smg_down_left_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_battle_rifle_neutral_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_battle_rifle_down_left_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$animation "aim_battle_rifle_down_center_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$animation "aim_battle_rifle_down_right_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$animation "aim_battle_rifle_mid_left_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$animation "aim_battle_rifle_mid_center_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$animation "aim_battle_rifle_mid_right_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$animation "aim_battle_rifle_up_left_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$animation "aim_battle_rifle_up_center_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$animation "aim_battle_rifle_up_right_move_passive" "marine_anims\rifle_aim_move_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_battle_rifle_neutral_move_passive" 0
}

$sequence "aimlayer_battle_rifle_move_passive" {
    "aim_battle_rifle_up_right_move_passive" "aim_battle_rifle_up_center_move_passive"  "aim_battle_rifle_up_left_move_passive"
    "aim_battle_rifle_mid_right_move_passive" "aim_battle_rifle_mid_center_move_passive"  "aim_battle_rifle_mid_left_move_passive"
    "aim_battle_rifle_down_right_move_passive" "aim_battle_rifle_down_center_move_passive" "aim_battle_rifle_down_left_move_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

// Aimlayer hell but for pistol

$animation "aim_pistol_crouch_neutral" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_pistol_crouch_down_left" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_down_center" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_down_right" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_mid_left" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_mid_center" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_mid_right" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_up_left" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_up_center" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_up_right" "marine_anims\pistol_crouch_aim_still_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_pistol_crouch_neutral" 0
}

$sequence "aimlayer_crouch_pistol" {
    "aim_pistol_crouch_up_right" "aim_pistol_crouch_up_center"  "aim_pistol_crouch_up_left"
    "aim_pistol_crouch_mid_right" "aim_pistol_crouch_mid_center"  "aim_pistol_crouch_mid_left"
    "aim_pistol_crouch_down_right" "aim_pistol_crouch_down_center" "aim_pistol_crouch_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_pistol_crouch_neutral_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_pistol_crouch_down_left_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_pistol_crouch_neutral_move" 0
}

$animation "aim_pistol_crouch_down_center_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_pistol_crouch_neutral_move" 0
}

$animation "aim_pistol_crouch_down_right_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_pistol_crouch_neutral_move" 0
}

$animation "aim_pistol_crouch_mid_left_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_pistol_crouch_neutral_move" 0
}

$animation "aim_pistol_crouch_mid_center_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_pistol_crouch_neutral_move" 0
}

$animation "aim_pistol_crouch_mid_right_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_pistol_crouch_neutral_move" 0
}

$animation "aim_pistol_crouch_up_left_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_up_center_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_pistol_crouch_neutral_move" 0
}

$animation "aim_pistol_crouch_up_right_move" "marine_anims\pistol_crouch_aim_move_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_pistol_crouch_neutral_move" 0
}

$sequence "aimlayer_crouch_pistol_move" {
    "aim_pistol_crouch_up_right_move" "aim_pistol_crouch_up_center_move"  "aim_pistol_crouch_up_left_move"
    "aim_pistol_crouch_mid_right_move" "aim_pistol_crouch_mid_center_move"  "aim_pistol_crouch_mid_left_move"
    "aim_pistol_crouch_down_right_move" "aim_pistol_crouch_down_center_move" "aim_pistol_crouch_down_left_move"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_pistol_neutral" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_pistol_down_left" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_pistol_neutral" 0
}

$animation "aim_pistol_down_center" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_pistol_neutral" 0
}

$animation "aim_pistol_down_right" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_pistol_neutral" 0
}

$animation "aim_pistol_mid_left" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_pistol_neutral" 0
}

$animation "aim_pistol_mid_center" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_pistol_neutral" 0
}

$animation "aim_pistol_mid_right" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_pistol_neutral" 0
}

$animation "aim_pistol_up_left" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_pistol_neutral" 0
}

$animation "aim_pistol_up_center" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_pistol_neutral" 0
}

$animation "aim_pistol_up_right" "marine_anims\pistol_aim_still_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_pistol_neutral" 0
}

$sequence "aimlayer_pistol" {
    "aim_pistol_up_right" "aim_pistol_up_center"  "aim_pistol_up_left"
    "aim_pistol_mid_right" "aim_pistol_mid_center"  "aim_pistol_mid_left"
    "aim_pistol_down_right" "aim_pistol_down_center" "aim_pistol_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_pistol_neutral_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_pistol_down_left_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_pistol_neutral_move" 0
}

$animation "aim_pistol_down_center_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_pistol_neutral_move" 0
}

$animation "aim_pistol_down_right_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_pistol_neutral_move" 0
}

$animation "aim_pistol_mid_left_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_pistol_neutral_move" 0
}

$animation "aim_pistol_mid_center_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_pistol_neutral_move" 0
}

$animation "aim_pistol_mid_right_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_pistol_neutral_move" 0
}

$animation "aim_pistol_up_left_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_pistol_neutral_move" 0
}

$animation "aim_pistol_up_center_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_pistol_neutral_move" 0
}

$animation "aim_pistol_up_right_move" "marine_anims\pistol_aim_move_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_pistol_neutral_move" 0
}

$sequence "aimlayer_pistol_move" {
    "aim_pistol_up_right_move" "aim_pistol_up_center_move"  "aim_pistol_up_left_move"
    "aim_pistol_mid_right_move" "aim_pistol_mid_center_move"  "aim_pistol_mid_left_move"
    "aim_pistol_down_right_move" "aim_pistol_down_center_move" "aim_pistol_down_left_move"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

// Subsection for pistol passive

$animation "aim_pistol_crouch_neutral_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_pistol_crouch_down_left_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$animation "aim_pistol_crouch_down_center_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$animation "aim_pistol_crouch_down_right_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$animation "aim_pistol_crouch_mid_left_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$animation "aim_pistol_crouch_mid_center_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$animation "aim_pistol_crouch_mid_right_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$animation "aim_pistol_crouch_up_left_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$animation "aim_pistol_crouch_up_center_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$animation "aim_pistol_crouch_up_right_passive" "marine_anims\pistol_crouch_aim_still_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_pistol_crouch_neutral_passive" 0
}

$sequence "aimlayer_crouch_pistol_passive" {
    "aim_pistol_crouch_up_right_passive" "aim_pistol_crouch_up_center_passive"  "aim_pistol_crouch_up_left"
    "aim_pistol_crouch_mid_right_passive" "aim_pistol_crouch_mid_center_passive"  "aim_pistol_crouch_mid_left"
    "aim_pistol_crouch_down_right_passive" "aim_pistol_crouch_down_center_passive" "aim_pistol_crouch_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_pistol_crouch_neutral_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_pistol_crouch_down_left_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_pistol_crouch_neutral_move_passive" 0
}

$animation "aim_pistol_crouch_down_center_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_pistol_crouch_neutral_move_passive" 0
}

$animation "aim_pistol_crouch_down_right_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_pistol_crouch_neutral_move_passive" 0
}

$animation "aim_pistol_crouch_mid_left_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_pistol_crouch_neutral_move_passive" 0
}

$animation "aim_pistol_crouch_mid_center_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_pistol_crouch_neutral_move_passive" 0
}

$animation "aim_pistol_crouch_mid_right_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_pistol_crouch_neutral_move_passive" 0
}

$animation "aim_pistol_crouch_up_left_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_pistol_crouch_neutral" 0
}

$animation "aim_pistol_crouch_up_center_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_pistol_crouch_neutral_move_passive" 0
}

$animation "aim_pistol_crouch_up_right_move_passive" "marine_anims\pistol_crouch_aim_move_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_pistol_crouch_neutral_move_passive" 0
}

$sequence "aimlayer_crouch_pistol_move_passive" {
    "aim_pistol_crouch_up_right_move_passive" "aim_pistol_crouch_up_center_move_passive"  "aim_pistol_crouch_up_left_move_passive"
    "aim_pistol_crouch_mid_right_move_passive" "aim_pistol_crouch_mid_center_move_passive"  "aim_pistol_crouch_mid_left_move_passive"
    "aim_pistol_crouch_down_right_move_passive" "aim_pistol_crouch_down_center_move_passive" "aim_pistol_crouch_down_left_move_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_pistol_neutral_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_pistol_down_left_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_pistol_neutral_passive" 0
}

$animation "aim_pistol_down_center_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_pistol_neutral_passive" 0
}

$animation "aim_pistol_down_right_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_pistol_neutral_passive" 0
}

$animation "aim_pistol_mid_left_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_pistol_neutral_passive" 0
}

$animation "aim_pistol_mid_center_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_pistol_neutral_passive" 0
}

$animation "aim_pistol_mid_right_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_pistol_neutral_passive" 0
}

$animation "aim_pistol_up_left_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_pistol_neutral_passive" 0
}

$animation "aim_pistol_up_center_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_pistol_neutral_passive" 0
}

$animation "aim_pistol_up_right_passive" "marine_anims\pistol_aim_still_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_pistol_neutral_passive" 0
}

$sequence "aimlayer_pistol_passive" {
    "aim_pistol_up_right_passive" "aim_pistol_up_center_passive"  "aim_pistol_up_left_passive"
    "aim_pistol_mid_right_passive" "aim_pistol_mid_center_passive"  "aim_pistol_mid_left_passive"
    "aim_pistol_down_right_passive" "aim_pistol_down_center_passive" "aim_pistol_down_left_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_pistol_neutral_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_pistol_down_left_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_pistol_neutral_move_passive" 0
}

$animation "aim_pistol_down_center_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_pistol_neutral_move_passive" 0
}

$animation "aim_pistol_down_right_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_pistol_neutral_move_passive" 0
}

$animation "aim_pistol_mid_left_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_pistol_neutral_move_passive" 0
}

$animation "aim_pistol_mid_center_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_pistol_neutral_move_passive" 0
}

$animation "aim_pistol_mid_right_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_pistol_neutral_move_passive" 0
}

$animation "aim_pistol_up_left_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_pistol_neutral_move_passive" 0
}

$animation "aim_pistol_up_center_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_pistol_neutral_move_passive" 0
}

$animation "aim_pistol_up_right_move_passive" "marine_anims\pistol_aim_move_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_pistol_neutral_move_passive" 0
}

$sequence "aimlayer_pistol_move_passive" {
    "aim_pistol_up_right_move_passive" "aim_pistol_up_center_move_passive"  "aim_pistol_up_left_move_passive"
    "aim_pistol_mid_right_move_passive" "aim_pistol_mid_center_move_passive"  "aim_pistol_mid_left_move_passive"
    "aim_pistol_down_right_move_passive" "aim_pistol_down_center_move_passive" "aim_pistol_down_left_move_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

//Aimlayer hell but for missile

$animation "aim_missile_crouch_neutral" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_missile_crouch_down_left" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_down_center" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_down_right" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_mid_left" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_mid_center" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_mid_right" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_up_left" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_up_center" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_up_right" "marine_anims\missile_crouch_aim_still_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_missile_crouch_neutral" 0
}

$sequence "aimlayer_crouch_missile" {
    "aim_missile_crouch_up_right" "aim_missile_crouch_up_center"  "aim_missile_crouch_up_left"
    "aim_missile_crouch_mid_right" "aim_missile_crouch_mid_center"  "aim_missile_crouch_mid_left"
    "aim_missile_crouch_down_right" "aim_missile_crouch_down_center" "aim_missile_crouch_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_missile_crouch_neutral_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_missile_crouch_down_left_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_missile_crouch_neutral_move" 0
}

$animation "aim_missile_crouch_down_center_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_missile_crouch_neutral_move" 0
}

$animation "aim_missile_crouch_down_right_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_missile_crouch_neutral_move" 0
}

$animation "aim_missile_crouch_mid_left_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_missile_crouch_neutral_move" 0
}

$animation "aim_missile_crouch_mid_center_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_missile_crouch_neutral_move" 0
}

$animation "aim_missile_crouch_mid_right_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_missile_crouch_neutral_move" 0
}

$animation "aim_missile_crouch_up_left_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_missile_crouch_neutral" 0
}

$animation "aim_missile_crouch_up_center_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_missile_crouch_neutral_move" 0
}

$animation "aim_missile_crouch_up_right_move" "marine_anims\missile_crouch_aim_move_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_missile_crouch_neutral_move" 0
}

$sequence "aimlayer_crouch_missile_move" {
    "aim_missile_crouch_up_right_move" "aim_missile_crouch_up_center_move"  "aim_missile_crouch_up_left_move"
    "aim_missile_crouch_mid_right_move" "aim_missile_crouch_mid_center_move"  "aim_missile_crouch_mid_left_move"
    "aim_missile_crouch_down_right_move" "aim_missile_crouch_down_center_move" "aim_missile_crouch_down_left_move"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_missile_neutral" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_missile_down_left" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_missile_neutral" 0
}

$animation "aim_missile_down_center" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_missile_neutral" 0
}

$animation "aim_missile_down_right" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_missile_neutral" 0
}

$animation "aim_missile_mid_left" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_missile_neutral" 0
}

$animation "aim_missile_mid_center" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_missile_neutral" 0
}

$animation "aim_missile_mid_right" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_missile_neutral" 0
}

$animation "aim_missile_up_left" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_missile_neutral" 0
}

$animation "aim_missile_up_center" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_missile_neutral" 0
}

$animation "aim_missile_up_right" "marine_anims\missile_aim_still_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_missile_neutral" 0
}

$sequence "aimlayer_missile" {
    "aim_missile_up_right" "aim_missile_up_center"  "aim_missile_up_left"
    "aim_missile_mid_right" "aim_missile_mid_center"  "aim_missile_mid_left"
    "aim_missile_down_right" "aim_missile_down_center" "aim_missile_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_missile_neutral_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_missile_down_left_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_missile_neutral_move" 0
}

$animation "aim_missile_down_center_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_missile_neutral_move" 0
}

$animation "aim_missile_down_right_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_missile_neutral_move" 0
}

$animation "aim_missile_mid_left_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_missile_neutral_move" 0
}

$animation "aim_missile_mid_center_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_missile_neutral_move" 0
}

$animation "aim_missile_mid_right_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_missile_neutral_move" 0
}

$animation "aim_missile_up_left_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_missile_neutral_move" 0
}

$animation "aim_missile_up_center_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_missile_neutral_move" 0
}

$animation "aim_missile_up_right_move" "marine_anims\missile_aim_move_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_missile_neutral_move" 0
}

$sequence "aimlayer_missile_move" {
    "aim_missile_up_right_move" "aim_missile_up_center_move"  "aim_missile_up_left_move"
    "aim_missile_mid_right_move" "aim_missile_mid_center_move"  "aim_missile_mid_left_move"
    "aim_missile_down_right_move" "aim_missile_down_center_move" "aim_missile_down_left_move"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

// Subsection for missiles passive

$animation "aim_missile_neutral_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_missile_down_left_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_missile_neutral_passive" 0
}

$animation "aim_missile_down_center_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_missile_neutral_passive" 0
}

$animation "aim_missile_down_right_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_missile_neutral_passive" 0
}

$animation "aim_missile_mid_left_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_missile_neutral_passive" 0
}

$animation "aim_missile_mid_center_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_missile_neutral_passive" 0
}

$animation "aim_missile_mid_right_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_missile_neutral_passive" 0
}

$animation "aim_missile_up_left_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_missile_neutral_passive" 0
}

$animation "aim_missile_up_center_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_missile_neutral_passive" 0
}

$animation "aim_missile_up_right_passive" "marine_anims\missile_aim_still_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_missile_neutral_passive" 0
}

$sequence "aimlayer_missile_passive" {
    "aim_missile_up_right_passive" "aim_missile_up_center_passive"  "aim_missile_up_left_passive"
    "aim_missile_mid_right_passive" "aim_missile_mid_center_passive"  "aim_missile_mid_left_passive"
    "aim_missile_down_right_passive" "aim_missile_down_center_passive" "aim_missile_down_left_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_missile_neutral_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_missile_down_left_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_missile_neutral_move_passive" 0
}

$animation "aim_missile_down_center_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_missile_neutral_move_passive" 0
}

$animation "aim_missile_down_right_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_missile_neutral_move_passive" 0
}

$animation "aim_missile_mid_left_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_missile_neutral_move_passive" 0
}

$animation "aim_missile_mid_center_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_missile_neutral_move_passive" 0
}

$animation "aim_missile_mid_right_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_missile_neutral_move_passive" 0
}

$animation "aim_missile_up_left_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_missile_neutral_move_passive" 0
}

$animation "aim_missile_up_center_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_missile_neutral_move_passive" 0
}

$animation "aim_missile_up_right_move_passive" "marine_anims\missile_aim_move_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_missile_neutral_move_passive" 0
}

$sequence "aimlayer_missile_move_passive" {
    "aim_missile_up_right_move_passive" "aim_missile_up_center_move_passive"  "aim_missile_up_left_move_passive"
    "aim_missile_mid_right_move_passive" "aim_missile_mid_center_move_passive"  "aim_missile_mid_left_move_passive"
    "aim_missile_down_right_move_passive" "aim_missile_down_center_move_passive" "aim_missile_down_left_move_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

// Aimlayer hell for unnarmed

$animation "aim_unnarmed_neutral" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_unnarmed_down_left" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_unnarmed_neutral" 0
}

$animation "aim_unnarmed_down_center" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_unnarmed_neutral" 0
}

$animation "aim_unnarmed_down_right" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_unnarmed_neutral" 0
}

$animation "aim_unnarmed_mid_left" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_unnarmed_neutral" 0
}

$animation "aim_unnarmed_mid_center" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_unnarmed_neutral" 0
}

$animation "aim_unnarmed_mid_right" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_unnarmed_neutral" 0
}

$animation "aim_unnarmed_up_left" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_unnarmed_neutral" 0
}

$animation "aim_unnarmed_up_center" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_unnarmed_neutral" 0
}

$animation "aim_unnarmed_up_right" "marine_anims\unnarmed_aim_still_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_unnarmed_neutral" 0
}

$sequence "aimlayer_unnarmed" {
    "aim_unnarmed_up_right" "aim_unnarmed_up_center"  "aim_unnarmed_up_left"
    "aim_unnarmed_mid_right" "aim_unnarmed_mid_center"  "aim_unnarmed_mid_left"
    "aim_unnarmed_down_right" "aim_unnarmed_down_center" "aim_unnarmed_down_left"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_unnarmed_neutral_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 0 1
}

$animation "aim_unnarmed_down_left_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 4 4
    subtract "aim_unnarmed_neutral_move" 0
}

$animation "aim_unnarmed_down_center_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 3 3
    subtract "aim_unnarmed_neutral_move" 0
}

$animation "aim_unnarmed_down_right_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 2 2
    subtract "aim_unnarmed_neutral_move" 0
}

$animation "aim_unnarmed_mid_left_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 7 7
    subtract "aim_unnarmed_neutral_move" 0
}

$animation "aim_unnarmed_mid_center_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 6 6
    subtract "aim_unnarmed_neutral_move" 0
}

$animation "aim_unnarmed_mid_right_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 5 5
    subtract "aim_unnarmed_neutral_move" 0
}

$animation "aim_unnarmed_up_left_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 10 10
    subtract "aim_unnarmed_neutral_move" 0
}

$animation "aim_unnarmed_up_center_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 9 9
    subtract "aim_unnarmed_neutral_move" 0
}

$animation "aim_unnarmed_up_right_move" "marine_anims\unnarmed_aim_move_up.smd" {
    fps 30
    frame 8 8
    subtract "aim_unnarmed_neutral_move" 0
}

$sequence "aimlayer_unnarmed_move" {
    "aim_unnarmed_up_right_move" "aim_unnarmed_up_center_move"  "aim_unnarmed_up_left_move"
    "aim_unnarmed_mid_right_move" "aim_unnarmed_mid_center_move"  "aim_unnarmed_mid_left_move"
    "aim_unnarmed_down_right_move" "aim_unnarmed_down_center_move" "aim_unnarmed_down_left_move"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

// Subsection for unnarmed passive

$animation "aim_unnarmed_neutral_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_unnarmed_down_left_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_unnarmed_neutral_passive" 0
}

$animation "aim_unnarmed_down_center_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_unnarmed_neutral_passive" 0
}

$animation "aim_unnarmed_down_right_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_unnarmed_neutral_passive" 0
}

$animation "aim_unnarmed_mid_left_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_unnarmed_neutral_passive" 0
}

$animation "aim_unnarmed_mid_center_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_unnarmed_neutral_passive" 0
}

$animation "aim_unnarmed_mid_right_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_unnarmed_neutral_passive" 0
}

$animation "aim_unnarmed_up_left_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_unnarmed_neutral_passive" 0
}

$animation "aim_unnarmed_up_center_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_unnarmed_neutral_passive" 0
}

$animation "aim_unnarmed_up_right_passive" "marine_anims\unnarmed_aim_still_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_unnarmed_neutral_passive" 0
}

$sequence "aimlayer_unnarmed_passive" {
    "aim_unnarmed_up_right_passive" "aim_unnarmed_up_center_passive"  "aim_unnarmed_up_left_passive"
    "aim_unnarmed_mid_right_passive" "aim_unnarmed_mid_center_passive"  "aim_unnarmed_mid_left_passive"
    "aim_unnarmed_down_right_passive" "aim_unnarmed_down_center_passive" "aim_unnarmed_down_left_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "aim_unnarmed_neutral_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 0 1
}

$animation "aim_unnarmed_down_left_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 4 4
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$animation "aim_unnarmed_down_center_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 3 3
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$animation "aim_unnarmed_down_right_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 2 2
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$animation "aim_unnarmed_mid_left_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 7 7
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$animation "aim_unnarmed_mid_center_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 6 6
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$animation "aim_unnarmed_mid_right_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 5 5
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$animation "aim_unnarmed_up_left_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 10 10
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$animation "aim_unnarmed_up_center_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 9 9
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$animation "aim_unnarmed_up_right_move_passive" "marine_anims\unnarmed_aim_move_down.smd" {
    fps 30
    frame 8 8
    subtract "aim_unnarmed_neutral_move_passive" 0
}

$sequence "aimlayer_unnarmed_move_passive" {
    "aim_unnarmed_up_right_move_passive" "aim_unnarmed_up_center_move_passive"  "aim_unnarmed_up_left_move_passive"
    "aim_unnarmed_mid_right_move_passive" "aim_unnarmed_mid_center_move_passive"  "aim_unnarmed_mid_left_move_passive"
    "aim_unnarmed_down_right_move_passive" "aim_unnarmed_down_center_move_passive" "aim_unnarmed_down_left_move_passive"
    blend "body_aim_yaw" -45 45
    blend "body_aim_pitch" -45 45
    blendwidth 3
    delta
    fadein 0.3
    fadeout 0.3
    hidden
}

$animation "b_face_corrective_animation" "marine_anims\b_face_corrective_animation.smd" {
	fps 30
}

$animation "b_eyes_corrective_animation" "marine_anims\b_eyes_corrective_animation.smd" {
	fps 30
}

$animation "aim_right_corrective_animation" "marine_anims\aim_right_corrective_animation.smd" {
	fps 30
}

$animation "aim_left_corrective_animation" "marine_anims\aim_left_corrective_animation.smd" {
	fps 30
}

$animation "aim_up_corrective_animation" "marine_anims\aim_up_corrective_animation.smd" {
	fps 30
}

$animation "aim_down_corrective_animation" "marine_anims\aim_down_corrective_animation.smd" {
	fps 30
}

$animation "a_face" "marine_anims\a_face.smd" {
	fps 30
}

$animation "b_face" "marine_anims\b_face.smd" {
	fps 60
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "b_face_corrective_animation" 0
	weightlist "weights_face_posed"
}

$animation "a_eyes" "marine_anims\a_eyes.smd" {
	fps 30
}

$animation "b_eyes" "marine_anims\b_eyes.smd" {
	fps 60
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "b_eyes_corrective_animation" 0
	weightlist "weights_pose_eyes"
}

$sequence "ragdoll" {
	"marine_anims\ragdoll.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "face_neutral" {
	"marine_anims\face_neutral.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "face_posed" {
	"marine_anims\face_posed.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_face_posed"
}

$sequence "pose_face" {
	"b_face"
	activity "ACT_GMOD_TAUNT_LAUGH" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "pose_eyes" {
	"b_eyes"
	activity "ACT_GMOD_TAUNT_MUSCLE" 1
	delta
	fadein 0.2
	fadeout 0.2
}

$sequence "rifle_melee_1" {
	"marine_anims\rifle_melee_1.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
}

$sequence "rifle_melee_2" {
	"marine_anims\rifle_melee_2.smd"
	activity "ACT_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
}

$sequence "rifle_melee_back" {
	"marine_anims\rifle_melee_back.smd"
	activity "ACT_GESTURE_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
}

$sequence "rifle_melee_airborne" {
	"marine_anims\rifle_melee_airborne.smd"
	activity "ACT_GESTURE_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 55 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 55
}

$sequence "pistol_melee_1" {
	"marine_anims\pistol_melee_1.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	frame 1 24
	rotate -90
	addlayer "aimlayer_pistol"
}

$sequence "pistol_melee_2" {
	"marine_anims\pistol_melee_2.smd"
	activity "ACT_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	frame 1 24
	rotate -90
	addlayer "aimlayer_pistol"
}

$sequence "pistol_melee_airborne" {
	"marine_anims\pistol_melee_airborne.smd"
	activity "ACT_GESTURE_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	frame 1 24
	rotate -90
}

$sequence "missile_melee_1" {
	"marine_anims\missile_melee_1.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	frame 1 20
	rotate -90
}

$sequence "missile_melee_2" {
	"marine_anims\missile_melee_2.smd"
	activity "ACT_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	frame 1 40
	rotate -90
}

$sequence "missile_melee_back" {
	"marine_anims\missile_melee_back.smd"
	activity "ACT_GESTURE_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 55
}

$sequence "missile_melee_airborne" {
	"marine_anims\missile_melee_airborne.smd"
	activity "ACT_GESTURE_MELEE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	frame 1 20
	rotate -90
}

$sequence "rifle_posing_1" {
	"marine_anims\rifle_posing_1.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_posing_2" {
	"marine_anims\rifle_posing_2.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_posing_3" {
	"marine_anims\rifle_posing_3.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_posing_4" {
	"marine_anims\rifle_posing_4.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_posing_5" {
	"marine_anims\rifle_posing_5.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_posing_6" {
	"marine_anims\rifle_posing_6.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_posing_7" {
	"marine_anims\rifle_posing_7.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_posing_8" {
	"marine_anims\rifle_posing_8.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_posing_9" {
	"marine_anims\rifle_posing_9.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

$sequence "rifle_idle" {
	"marine_anims\rifle_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_battle_rifle"
}

$sequence "rifle_idle_passive" {
	"marine_anims\rifle_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_battle_rifle_passive"
}

$sequence "rifle_smg_idle_passive" {
	"marine_anims\rifle_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_smg_passive"
}

$sequence "pistol_idle_1" {
	"marine_anims\pistol_idle_1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
}

$sequence "pistol_idle_2" {
	"marine_anims\pistol_idle_2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 58
}

$sequence "pistol_idle_1_passive" {
	"marine_anims\pistol_idle_1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
	addlayer "aimlayer_pistol_passive"
}

$sequence "pistol_idle_2_passive" {
	"marine_anims\pistol_idle_2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 58
	addlayer "aimlayer_pistol_passive"
}

$sequence "missile_idle_1" {
	"marine_anims\missile_idle_1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_missile_passive"
}

$sequence "missile_idle_2" {
	"marine_anims\missile_idle_2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_missile_passive"
}

$sequence "pistol_hp_idle_1" {
	"marine_anims\pistol_hp_idle_1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
}

$sequence "pistol_hp_idle_2" {
	"marine_anims\pistol_hp_idle_2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 69
}

$sequence "pistol_hp_idle_3" {
	"marine_anims\pistol_hp_idle_3.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
}

$sequence "pistol_hp_grip" {
	"marine_anims\pistol_hp_grip.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
}

$sequence "rifle_dive_left_1" {
	"marine_anims\rifle_dive_left_1.smd"
	activity "ACT_ROLL_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 77 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 77
}

$sequence "rifle_dive_left_2" {
	"marine_anims\rifle_dive_left_2.smd"
	activity "ACT_ROLL_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
}

$sequence "rifle_dive_right_1" {
	"marine_anims\rifle_dive_right_1.smd"
	activity "ACT_ROLL_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 77 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 77
}

$sequence "rifle_dive_right_2" {
	"marine_anims\rifle_dive_right_2.smd"
	activity "ACT_ROLL_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
}

$sequence "rifle_dive_front" {
	"marine_anims\rifle_dive_front.smd"
	activity "ACT_SIGNAL_FORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 77 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 77
}

$sequence "rifle_dodge_left" {
	"marine_anims\rifle_dodge_left.smd"
	activity "ACT_STRAFE_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 38 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 38
}

$sequence "rifle_dodge_right" {
	"marine_anims\rifle_dodge_right.smd"
	activity "ACT_STRAFE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 38 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 38
}

$sequence "pistol_dodge_left" {
	"marine_anims\pistol_dodge_left.smd"
	activity "ACT_STRAFE_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 29 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 29
}

$sequence "pistol_dodge_right" {
	"marine_anims\pistol_dodge_right.smd"
	activity "ACT_STRAFE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 29 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 29
}

$sequence "missile_dodge_left" {
	"marine_anims\missile_dodge_left.smd"
	activity "ACT_STRAFE_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 29 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 29
}

$sequence "missile_dodge_right" {
	"marine_anims\missile_dodge_right.smd"
	activity "ACT_STRAFE_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 29 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 29
}

$sequence "any_turn_left" {
	"marine_anims\any_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_unnarmed"
	frame 1 14
}

$sequence "any_turn_right" {
	"marine_anims\any_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_unnarmed"
	frame 1 14
}

$sequence "rifle_turn_left" {
	"marine_anims\rifle_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_battle_rifle"
	frame 1 21
}

$sequence "rifle_turn_right" {
	"marine_anims\rifle_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_battle_rifle"
	frame 1 21
}

$sequence "missile_turn_left" {
	"marine_anims\missile_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_missile"
	frame 1 14
}

$sequence "missile_turn_right" {
	"marine_anims\missile_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_missile"
	frame 1 14
}

$sequence "pistol_turn_left" {
	"marine_anims\pistol_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_pistol"
	frame 1 14
}

$sequence "pistol_turn_right" {
	"marine_anims\pistol_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_pistol"
	frame 1 14
}

$sequence "rifle_crouch_turn_left" {
	"marine_anims\rifle_crouch_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_crouch_battle_rifle"
	frame 1 21
}

$sequence "rifle_crouch_turn_right" {
	"marine_anims\rifle_crouch_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_crouch_battle_rifle"
	frame 1 21
}

$sequence "missile_crouch_turn_left" {
	"marine_anims\missile_crouch_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_crouch_missile"
	frame 1 14
}

$sequence "missile_crouch_turn_right" {
	"marine_anims\missile_crouch_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_crouch_missile"
	frame 1 14
}

$sequence "pistol_crouch_turn_left" {
	"marine_anims\pistol_crouch_turn_left.smd"
	activity "ACT_TURN_LEFT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_crouch_pistol"
	frame 1 21
}

$sequence "pistol_crouch_turn_right" {
	"marine_anims\pistol_crouch_turn_right.smd"
	activity "ACT_TURN_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_crouch_pistol"
	frame 1 21
}

$sequence "turret_enter" {
	"marine_anims\any_turret_enter.smd"
	activity "ACT_FIRE_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "turret_exit" {
	"marine_anims\any_turret_exit.smd"
	activity "ACT_FIRE_END" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "turret_idle" {
	"marine_anims\any_turret_idle.smd"
	activity "ACT_IDLE_MANNEDGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

$sequence "turret_fire" {
	"marine_anims\any_turret_fire.smd"
	activity "ACT_FIRE_LOOP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

$sequence "rifle_throwgrenade_1" {
	"marine_anims\rifle_throwgrenade_1.smd"
	activity "ACT_SPECIAL_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
	weightlist "weights_melee1"
}

$sequence "rifle_throwgrenade_2" {
	"marine_anims\rifle_throwgrenade_2.smd"
	activity "ACT_SPECIAL_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
	weightlist "weights_melee1"
}

$sequence "missile_throw_grenade" {
	"marine_anims\missile_throw_grenade.smd"
	activity "ACT_SPECIAL_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 57
}

// Rifle cover

$sequence "rifle_bunker_cover_2_bunker_open_idle" {
	"marine_anims\rifle_bunker_cover_2_bunker_open_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
	weightlist "weights_melee1"
	rotate -90
}

$sequence "rifle_bunker_cover_exit" {
	"marine_anims\rifle_bunker_cover_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 19
}

$sequence "rifle_bunker_cover_enter" {
	"marine_anims\rifle_bunker_cover_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 34 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 34
}

$sequence "rifle_bunker_cover_idle" {
	"marine_anims\rifle_bunker_cover_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
}

$sequence "rifle_bunker_open_2_bunker_cover_idle" {
	"marine_anims\rifle_bunker_open_2_bunker_cover_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 18
}

$sequence "rifle_bunker_open_exit" {
	"marine_anims\rifle_bunker_open_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 19
}

$sequence "rifle_bunker_open_enter" {
	"marine_anims\rifle_bunker_open_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 35 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 35
}

$sequence "rifle_bunker_open_idle" {
	"marine_anims\rifle_bunker_open_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 60
}

// Cover bunker stuff above

$sequence "rifle_corner_open_right_exit" {
	"marine_anims\rifle_corner_open_right_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LXR LYR
	weightlist "weights_melee1"
}

$sequence "rifle_corner_open_right_enter" {
	"marine_anims\rifle_corner_open_right_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 15 LXR LYR
	weightlist "weights_melee1"
}

$sequence "rifle_corner_open_right_idle" {
	"marine_anims\rifle_corner_open_right_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

$sequence "rifle_corner_open_right_idle_low" {
	"marine_anims\rifle_corner_open_right_idle_low.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

$sequence "rifle_corner_cover_right_exit" {
	"marine_anims\rifle_corner_cover_right_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LXR LYR
	weightlist "weights_melee1"
}

$sequence "rifle_corner_cover_right_enter" {
	"marine_anims\rifle_corner_cover_right_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_corner_cover_right_idle" {
	"marine_anims\rifle_corner_cover_right_idle.smd"
	activity "ACT_IDLE_STEALTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

$sequence "rifle_corner_open_left_exit" {
	"marine_anims\rifle_corner_open_left_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LXR LYR
	weightlist "weights_melee1"
}

$sequence "rifle_corner_open_left_enter" {
	"marine_anims\rifle_corner_open_left_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 16 LXR LYR
	weightlist "weights_melee1"
}

$sequence "rifle_corner_open_left_idle" {
	"marine_anims\rifle_corner_open_left_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

$sequence "rifle_corner_open_left_idle_low" {
	"marine_anims\rifle_corner_open_left_idle_low.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

$sequence "rifle_corner_cover_left_exit" {
	"marine_anims\rifle_corner_cover_left_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 8 LXR LYR
	weightlist "weights_melee1"
}

$sequence "rifle_corner_cover_left_enter" {
	"marine_anims\rifle_corner_cover_left_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_corner_cover_left_idle" {
	"marine_anims\rifle_corner_cover_left_idle.smd"
	activity "ACT_IDLE_STEALTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
}

// Pistol cover

$sequence "pistol_bunker_cover_2_bunker_open_idle" {
	"marine_anims\pistol_bunker_cover_2_bunker_open_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_bunker_cover_exit" {
	"marine_anims\pistol_bunker_cover_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 19
}

$sequence "pistol_bunker_cover_enter" {
	"marine_anims\pistol_bunker_cover_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 34 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 34
}

$sequence "pistol_bunker_cover_idle" {
	"marine_anims\pistol_bunker_cover_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
}

$sequence "pistol_bunker_open_2_bunker_cover_idle" {
	"marine_anims\pistol_bunker_open_2_bunker_cover_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 18
}

$sequence "pistol_bunker_open_exit" {
	"marine_anims\pistol_bunker_open_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 19
}

$sequence "pistol_bunker_open_enter" {
	"marine_anims\pistol_bunker_open_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 35 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 35
}

$sequence "pistol_bunker_open_idle" {
	"marine_anims\pistol_bunker_open_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 60
}

// Cover bunker stuff above

$sequence "pistol_corner_open_right_exit" {
	"marine_anims\pistol_corner_open_right_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LXR LYR
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_open_right_enter" {
	"marine_anims\pistol_corner_open_right_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 15 LXR LYR
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_open_right_idle" {
	"marine_anims\pistol_corner_open_right_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_open_right_idle_low" {
	"marine_anims\pistol_corner_open_right_idle_low.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_cover_right_exit" {
	"marine_anims\pistol_corner_cover_right_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LXR LYR
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_cover_right_enter" {
	"marine_anims\pistol_corner_cover_right_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_cover_right_idle" {
	"marine_anims\pistol_corner_cover_right_idle.smd"
	activity "ACT_IDLE_STEALTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_open_left_exit" {
	"marine_anims\pistol_corner_open_left_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LXR LYR
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_open_left_enter" {
	"marine_anims\pistol_corner_open_left_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 16 LXR LYR
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_open_left_idle" {
	"marine_anims\pistol_corner_open_left_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_open_left_idle_low" {
	"marine_anims\pistol_corner_open_left_idle_low.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_cover_left_exit" {
	"marine_anims\pistol_corner_cover_left_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 8 LXR LYR
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_cover_left_enter" {
	"marine_anims\pistol_corner_cover_left_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_corner_cover_left_idle" {
	"marine_anims\pistol_corner_cover_left_idle.smd"
	activity "ACT_IDLE_STEALTH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
}

// Missile cover

$sequence "missile_bunker_cover_2_bunker_open_idle" {
	"marine_anims\missile_bunker_cover_2_bunker_open_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 19
}

$sequence "missile_bunker_cover_exit" {
	"marine_anims\missile_bunker_cover_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 19
}

$sequence "missile_bunker_cover_enter" {
	"marine_anims\missile_bunker_cover_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 34 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 34
}

$sequence "missile_bunker_cover_idle" {
	"marine_anims\missile_bunker_cover_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
}

$sequence "missile_bunker_open_2_bunker_cover_idle" {
	"marine_anims\missile_bunker_open_2_bunker_cover_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 18 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 18
}

$sequence "missile_bunker_open_exit" {
	"marine_anims\missile_bunker_open_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 19
}

$sequence "missile_bunker_open_enter" {
	"marine_anims\missile_bunker_open_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 35 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 35
}

$sequence "missile_bunker_open_idle" {
	"marine_anims\missile_bunker_open_idle.smd"
	activity "ACT_IDLE_AGITATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	rotate -90
	frame 1 60
}

// Cover bunker stuff above

$sequence "rifle_reload" {
	"marine_anims\rifle_reload.smd"
	activity "ACT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
}

$sequence "pistol_reload" {
	"marine_anims\pistol_reload.smd"
	activity "ACT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	frame 1 51
	addlayer "aimlayer_pistol"
}

$sequence "rockets_reload" {
	"marine_anims\missile_reload.smd"
	activity "ACT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	frame 1 84
	rotate -90
}

$sequence "rifle_crouch_fire" {
	"marine_anims\rifle_crouch_fire.smd"
	activity "ACT_RANGE_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	frame 1 12
	addlayer "aimlayer_crouch_battle_rifle"
}

$animation "rifle_smash_front" "marine_anims\rifle_smash_front.smd" {
	frame 1 26
	walkframe 26 LX LY
	rotate -90
}

$animation "rifle_smash_left" "marine_anims\rifle_smash_left.smd" {
	frame 1 24
	walkframe 24 LX LY
	rotate -90
}

$animation "rifle_smash_right" "marine_anims\rifle_smash_right.smd" {
	frame 1 25
	walkframe 25 LX LY
	rotate -90
}

$sequence "rifle_smash" {
	"rifle_smash_right"
	"rifle_smash_front"
	"rifle_smash_left"
	activity "ACT_SPECIAL_ATTACK1" 1
	blend "body_aim_yaw" -45 45
	blendwidth 3
	fadein 0.2
	fadeout 0.2
	node "rifle_smash"
	fps 30
	weightlist "weights_melee1"
}

$animation "pistol_smash_front" "marine_anims\pistol_smash_front.smd" {
	frame 1 26
	walkframe 26 LX LY
	rotate -90
}

$animation "pistol_smash_left" "marine_anims\pistol_smash_left.smd" {
	frame 1 24
	walkframe 24 LX LY
	rotate -90
}

$animation "pistol_smash_right" "marine_anims\pistol_smash_right.smd" {
	frame 1 25
	walkframe 25 LX LY
	rotate -90
}

$sequence "pistol_smash" {
	"pistol_smash_right"
	"pistol_smash_front"
	"pistol_smash_left"
	activity "ACT_SPECIAL_ATTACK1" 1
	blend "body_aim_yaw" -45 45
	blendwidth 3
	fadein 0.2
	fadeout 0.2
	node "pistol_smash"
	fps 30
	weightlist "weights_melee1"
}

$animation "missile_smash_front" "marine_anims\missile_smash_front.smd" {
	frame 1 26
	walkframe 26 LX LY
	rotate -90
}

$animation "missile_smash_left" "marine_anims\missile_smash_left.smd" {
	frame 1 24
	walkframe 24 LX LY
	rotate -90
}

$animation "missile_smash_right" "marine_anims\missile_smash_right.smd" {
	frame 1 25
	walkframe 25 LX LY
	rotate -90
}

$sequence "missile_smash" {
	"missile_smash_right"
	"missile_smash_front"
	"missile_smash_left"
	activity "ACT_SPECIAL_ATTACK1" 1
	blend "body_aim_yaw" -45 45
	blendwidth 3
	fadein 0.2
	fadeout 0.2
	node "missile_smash"
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_br_crouch_idle" {
	"marine_anims\rifle_br_crouch_idle.smd"
	activity "ACT_CROUCHIDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_battle_rifle"
}

$sequence "pistol_crouch_idle" {
	"marine_anims\pistol_crouch_idle.smd"
	activity "ACT_CROUCHIDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_pistol"
	rotate -90
	frame 1 51
}

$sequence "missile_crouch_idle" {
	"marine_anims\missile_crouch_idle.smd"
	activity "ACT_CROUCHIDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_missile"
	rotate -90
	frame 1 60
}

$sequence "rifle_br_aim_idle" {
	"marine_anims\rifle_br_aim_idle.smd"
	activity "ACT_IDLE_AIM_STIMULATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle"
}

$sequence "rifle_br_fire_1" {
	"marine_anims\rifle_br_fire_1.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
}

$sequence "rifle_br_fire_2" {
	"marine_anims\rifle_br_fire_2.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
}

$sequence "pistol_fire" {
	"marine_anims\pistol_fire.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	frame 1 12
	rotate -90
	addlayer "aimlayer_pistol"
}

$sequence "pistol_crouch_fire" {
	"marine_anims\pistol_crouch_fire.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	frame 1 12
	rotate -90
}

$sequence "missile_fire" {
	"marine_anims\missile_fire.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	frame 1 12
	rotate -90
	addlayer "aimlayer_missile"
}

$sequence "rifle_pr_grip" {
	"marine_anims\rifle_pr_grip.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	rotate -90
	frame 1 1
	rotate -90
}

$sequence "rifle_sg_fire" {
	"marine_anims\rifle_sg_fire.smd"
	activity "ACT_RANGE_ATTACK_SHOTGUN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	frame 1 20
	rotate -90
	addlayer "aimlayer_battle_rifle"
}

$sequence "rifle_sg_grip" {
	"marine_anims\rifle_sg_grip.smd"
	activity "ACT_IDLE_SHOTGUN_STIMULATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	rotate -90
	frame 1 1
}

$sequence "missile_sl_grip" {
	"marine_anims\missile_sl_grip.smd"
	activity "ACT_RANGE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	rotate -90
	frame 1 1
	rotate -90
}

$sequence "rifle_combat_to_idle" {
	"marine_anims\rifle_combat_to_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_crouch_throw_grenade" {
	"marine_anims\rifle_crouch_throw_grenade.smd"
	activity "ACT_SPECIAL_ATTACK2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "die_forward_1" {
	"marine_anims\any_die_forward_1.smd"
	activity "ACT_DIEFORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 62 LX LY
	weightlist "weights_melee1"
}

$sequence "die_forward_2" {
	"marine_anims\any_die_forward_2.smd"
	activity "ACT_DIEFORWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 44 LX LY
	weightlist "weights_melee1"
}

$sequence "die_left_1" {
	"marine_anims\any_die_left_1.smd"
	activity "ACT_any_die_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 40 LX LY
	weightlist "weights_melee1"
}

$sequence "die_right_1" {
	"marine_anims\any_die_right_1.smd"
	activity "ACT_any_die_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 40 LX LY
	weightlist "weights_melee1"
}

$sequence "die_back_1" {
	"marine_anims\any_die_back_1.smd"
	activity "ACT_DIEBACKWARD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
}

$sequence "die_head_1" {
	"marine_anims\any_die_head_1.smd"
	activity "ACT_any_die_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 74 LX LY
	weightlist "weights_melee1"
}

$sequence "die_head_2" {
	"marine_anims\any_die_head_2.smd"
	activity "ACT_any_die_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 59 LX LY
	weightlist "weights_melee1"
}

$sequence "die_head_3" {
	"marine_anims\any_die_head_3.smd"
	activity "ACT_any_die_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 46 LX LY
	weightlist "weights_melee1"
}

$sequence "die_head_4" {
	"marine_anims\any_die_head_4.smd"
	activity "ACT_any_die_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 42 LX LY
	weightlist "weights_melee1"
}

$sequence "die_head_5" {
	"marine_anims\any_die_head_5.smd"
	activity "ACT_any_die_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 47 LX LY
	weightlist "weights_melee1"
}

$sequence "die_head_6" {
	"marine_anims\any_die_head_6.smd"
	activity "ACT_any_die_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 163 LX LY
	weightlist "weights_melee1"
}

$sequence "die_head_7" {
	"marine_anims\any_die_head_7.smd"
	activity "ACT_any_die_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 42 LX LY
	weightlist "weights_melee1"
}

$sequence "die_head_8" {
	"marine_anims\any_die_head_8.smd"
	activity "ACT_any_die_HEADSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 50 LX LY
	weightlist "weights_melee1"
}

$sequence "rifle_land_hard" {
	"marine_anims\rifle_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
}

$sequence "rifle_land_soft" {
	"marine_anims\rifle_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
}

$sequence "pistol_land_hard" {
	"marine_anims\pistol_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
}

$sequence "pistol_land_soft" {
	"marine_anims\pistol_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
}

$sequence "missile_land_hard" {
	"marine_anims\missile_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
}

$sequence "missile_land_soft" {
	"marine_anims\missile_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 39 LX LY
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
}

$sequence "any_dead_fly" {
	"marine_anims\any_dead_fly.smd"
	activity "ACT_HOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 36 LX LY
	weightlist "weights_melee1"
}

$sequence "any_dead_land" {
	"marine_anims\any_dead_land.smd"
	activity "ACT_HOP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 36 LX LY
	weightlist "weights_melee1"
}

$sequence "infected_1" {
	"marine_anims\any_flood_infected_1.smd"
	activity "ACT_DIEVIOLENT" 1
	{ event 1100 0 "event_flood_infect_alive_start" }
	{ event 1100 23 "event_flood_infect_alive" }
	{ event 1100 156 "event_flood_infect_alive_end" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 157 LX LY
	weightlist "weights_melee1"
}

$sequence "infected_2" {
	"marine_anims\any_flood_infected_2.smd"
	activity "ACT_DIEVIOLENT" 1
	{ event 1100 0 "event_flood_infect_alive_start" }
	{ event 1100 15 "event_flood_infect_alive" }
	{ event 1100 158 "event_flood_infect_alive_end" }
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 158 LX LY
	weightlist "weights_melee1"
}

$sequence "flood_infect" {
	"marine_anims\any_flood_infect.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "flood_revive_1" {
	"marine_anims\any_flood_revive_1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "flood_revive_2" {
	"marine_anims\any_flood_revive_2.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

// Transition Anims

$animation "rifle_move_back_2_idle" "marine_anims\rifle_move_back_2_idle.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "rifle_move_left_2_idle" "marine_anims\rifle_move_left_2_idle.smd" {
	walkframe 18 LX LY
	frame 2 18
	rotate -90
}

$animation "rifle_move_right_2_idle" "marine_anims\rifle_move_right_2_idle.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "rifle_move_front_2_idle" "marine_anims\rifle_move_front_2_idle.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "rifle_move_2_idle" {
	"rifle_move_back_2_idle"
	"rifle_move_right_2_idle"
	"rifle_move_front_2_idle"
	"rifle_move_left_2_idle"
	"rifle_move_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move"
}

$sequence "rifle_move_2_idle_passive" {
	"rifle_move_back_2_idle"
	"rifle_move_right_2_idle"
	"rifle_move_front_2_idle"
	"rifle_move_left_2_idle"
	"rifle_move_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move_passive"
}

// Walk Rifle

$animation "rifle_walk_back_2_idle" "marine_anims\rifle_walk_back_2_idle.smd" {
	walkframe 15 LX LY
	frame 1 15
	rotate -90
}

$animation "rifle_walk_left_2_idle" "marine_anims\rifle_walk_left_2_idle.smd" {
	walkframe 15 LX LY
	frame 2 15
	rotate -90
}

$animation "rifle_walk_right_2_idle" "marine_anims\rifle_walk_right_2_idle.smd" {
	walkframe 15 LX LY
	frame 2 15
	rotate -90
}

$animation "rifle_walk_front_2_idle" "marine_anims\rifle_walk_front_2_idle.smd" {
	walkframe 17 LX LY
	frame 1 17
	rotate -90
}

$sequence "rifle_walk_2_idle" {
	"rifle_walk_back_2_idle"
	"rifle_walk_right_2_idle"
	"rifle_walk_front_2_idle"
	"rifle_walk_left_2_idle"
	"rifle_walk_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move"
}

$sequence "rifle_walk_2_idle_passive" {
	"rifle_walk_back_2_idle"
	"rifle_walk_right_2_idle"
	"rifle_walk_front_2_idle"
	"rifle_walk_left_2_idle"
	"rifle_walk_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move_passive"
}

// Crouch Stuff

$animation "rifle_crouch_move_back_2_crouch_idle" "marine_anims\rifle_crouch_move_back_2_crouch_idle.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "rifle_crouch_move_left_2_crouch_idle" "marine_anims\rifle_crouch_move_left_2_crouch_idle.smd" {
	walkframe 18 LX LY
	frame 2 18
	rotate -90
}

$animation "rifle_crouch_move_right_2_crouch_idle" "marine_anims\rifle_crouch_move_right_2_crouch_idle.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "rifle_crouch_move_front_2_crouch_idle" "marine_anims\rifle_crouch_move_front_2_crouch_idle.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "rifle_crouch_move_2_crouch_idle" {
	"rifle_crouch_move_back_2_crouch_idle"
	"rifle_crouch_move_right_2_crouch_idle"
	"rifle_crouch_move_front_2_crouch_idle"
	"rifle_crouch_move_left_2_crouch_idle"
	"rifle_crouch_move_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move"
}

$sequence "rifle_crouch_move_2_crouch_idle_passive" {
	"rifle_crouch_move_back_2_crouch_idle"
	"rifle_crouch_move_right_2_crouch_idle"
	"rifle_crouch_move_front_2_crouch_idle"
	"rifle_crouch_move_left_2_crouch_idle"
	"rifle_crouch_move_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move_passive"
}

$animation "rifle_crouch_walk_back_2_crouch_idle" "marine_anims\rifle_crouch_walk_back_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 1 15
	rotate -90
}

$animation "rifle_crouch_walk_left_2_crouch_idle" "marine_anims\rifle_crouch_walk_left_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 2 15
	rotate -90
}

$animation "rifle_crouch_walk_right_2_crouch_idle" "marine_anims\rifle_crouch_walk_right_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 2 15
	rotate -90
}

$animation "rifle_crouch_walk_front_2_crouch_idle" "marine_anims\rifle_crouch_walk_front_2_crouch_idle.smd" {
	walkframe 17 LX LY
	frame 1 17
	rotate -90
}

$sequence "rifle_crouch_walk_2_crouch_idle" {
	"rifle_crouch_walk_back_2_crouch_idle"
	"rifle_crouch_walk_right_2_crouch_idle"
	"rifle_crouch_walk_front_2_crouch_idle"
	"rifle_crouch_walk_left_2_crouch_idle"
	"rifle_crouch_walk_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move"
}

$sequence "rifle_crouch_walk_2_idle_passive" {
	"rifle_crouch_walk_back_2_crouch_idle"
	"rifle_crouch_walk_right_2_crouch_idle"
	"rifle_crouch_walk_front_2_crouch_idle"
	"rifle_crouch_walk_left_2_crouch_idle"
	"rifle_crouch_walk_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move_passive"
}

// Idle To Move Rifle

$animation "rifle_idle_2_move_back" "marine_anims\rifle_idle_2_move_back.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "rifle_idle_2_move_left" "marine_anims\rifle_idle_2_move_left.smd" {
	walkframe 18 LX LY
	frame 2 18
	rotate -90
}

$animation "rifle_idle_2_move_right" "marine_anims\rifle_idle_2_move_right.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "rifle_idle_2_move_front" "marine_anims\rifle_idle_2_move_front.smd" {
	walkframe 17 LX LY
	frame 1 17
	rotate -90
}

$sequence "rifle_idle_2_move" {
	"rifle_idle_2_move_back"
	"rifle_idle_2_move_right"
	"rifle_idle_2_move_front"
	"rifle_idle_2_move_left"
	"rifle_idle_2_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move"
}

$sequence "rifle_idle_2_move_passive" {
	"rifle_idle_2_move_back"
	"rifle_idle_2_move_right"
	"rifle_idle_2_move_front"
	"rifle_idle_2_move_left"
	"rifle_idle_2_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move_passive"
}

$animation "rifle_idle_2_walk_back" "marine_anims\rifle_idle_2_walk_back.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$animation "rifle_idle_2_walk_left" "marine_anims\rifle_idle_2_walk_left.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "rifle_idle_2_walk_right" "marine_anims\rifle_idle_2_walk_right.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "rifle_idle_2_walk_front" "marine_anims\rifle_idle_2_walk_front.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "rifle_idle_2_walk" {
	"rifle_idle_2_walk_back"
	"rifle_idle_2_walk_right"
	"rifle_idle_2_walk_front"
	"rifle_idle_2_walk_left"
	"rifle_idle_2_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move"
}

$sequence "rifle_idle_2_walk_passive" {
	"rifle_idle_2_walk_back"
	"rifle_idle_2_walk_right"
	"rifle_idle_2_walk_front"
	"rifle_idle_2_walk_left"
	"rifle_idle_2_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move_passive"
}

$sequence "rifle_idle_2_guard_idle" {
	"marine_anims\rifle_idle_2_guard_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 30 LX LY
	weightlist "weights_melee1"
	frame 1 19
	rotate -90
	addlayer "aimlayer_battle_rifle_passive"
}

$sequence "rifle_idle_2_crouch_idle" {
	"marine_anims\rifle_idle_2_crouch_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	frame 1 22
	walkframe 22 LX LY
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle"
	rotate -90
}

// Crouch Idle To Move Rifle

$animation "rifle_crouch_idle_2_crouch_move_back" "marine_anims\rifle_crouch_idle_2_crouch_move_back.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "rifle_crouch_idle_2_crouch_move_left" "marine_anims\rifle_crouch_idle_2_crouch_move_left.smd" {
	walkframe 18 LX LY
	frame 2 18
	rotate -90
}

$animation "rifle_crouch_idle_2_crouch_move_right" "marine_anims\rifle_crouch_idle_2_crouch_move_right.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "rifle_crouch_idle_2_crouch_move_front" "marine_anims\rifle_crouch_idle_2_crouch_move_front.smd" {
	walkframe 17 LX LY
	frame 1 17
	rotate -90
}

$sequence "rifle_crouch_idle_2_crouch_move" {
	"rifle_crouch_idle_2_crouch_move_back"
	"rifle_crouch_idle_2_crouch_move_right"
	"rifle_crouch_idle_2_crouch_move_front"
	"rifle_crouch_idle_2_crouch_move_left"
	"rifle_crouch_idle_2_crouch_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_battle_rifle_move"
}

$sequence "rifle_crouch_idle_2_crouch_move_passive" {
	"rifle_crouch_idle_2_crouch_move_back"
	"rifle_crouch_idle_2_crouch_move_right"
	"rifle_crouch_idle_2_crouch_move_front"
	"rifle_crouch_idle_2_crouch_move_left"
	"rifle_crouch_idle_2_crouch_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_battle_rifle_move_passive"
}

$animation "rifle_crouch_idle_2_crouch_walk_back" "marine_anims\rifle_crouch_idle_2_crouch_walk_back.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$animation "rifle_crouch_idle_2_crouch_walk_left" "marine_anims\rifle_crouch_idle_2_crouch_walk_left.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "rifle_crouch_idle_2_crouch_walk_right" "marine_anims\rifle_crouch_idle_2_crouch_walk_right.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "rifle_crouch_idle_2_crouch_walk_front" "marine_anims\rifle_crouch_idle_2_crouch_walk_front.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "rifle_crouch_idle_2_crouch_walk" {
	"rifle_crouch_idle_2_crouch_walk_back"
	"rifle_crouch_idle_2_crouch_walk_right"
	"rifle_crouch_idle_2_crouch_walk_front"
	"rifle_crouch_idle_2_crouch_walk_left"
	"rifle_crouch_idle_2_crouch_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_battle_rifle_move"
}

$sequence "rifle_crouch_idle_2_guard_idle" {
	"marine_anims\rifle_crouch_idle_2_guard_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
	weightlist "weights_melee1"
}

$sequence "rifle_crouch_idle_2_idle" {
	"marine_anims\rifle_crouch_idle_2_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
	weightlist "weights_melee1"
}

// Pistol Section

$animation "pistol_move_back_2_idle" "marine_anims\pistol_move_back_2_idle.smd" {
	walkframe 20 LX LY
	frame 1 20
	rotate -90
}

$animation "pistol_move_left_2_idle" "marine_anims\pistol_move_left_2_idle.smd" {
	walkframe 14 LX LY
	frame 2 14
	rotate -90
}

$animation "pistol_move_right_2_idle" "marine_anims\pistol_move_right_2_idle.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "pistol_move_front_2_idle" "marine_anims\pistol_move_front_2_idle.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "pistol_move_2_idle" {
	"pistol_move_back_2_idle"
	"pistol_move_right_2_idle"
	"pistol_move_front_2_idle"
	"pistol_move_left_2_idle"
	"pistol_move_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move"
}

$sequence "pistol_move_2_idle_passive" {
	"pistol_move_back_2_idle"
	"pistol_move_right_2_idle"
	"pistol_move_front_2_idle"
	"pistol_move_left_2_idle"
	"pistol_move_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move_passive"
}

// Walk Pistol

$animation "pistol_walk_back_2_idle" "marine_anims\pistol_walk_back_2_idle.smd" {
	walkframe 7 LX LY
	frame 1 7
	rotate -90
}

$animation "pistol_walk_left_2_idle" "marine_anims\pistol_walk_left_2_idle.smd" {
	walkframe 9 LX LY
	frame 2 9
	rotate -90
}

$animation "pistol_walk_right_2_idle" "marine_anims\pistol_walk_right_2_idle.smd" {
	walkframe 9 LX LY
	frame 2 9
	rotate -90
}

$animation "pistol_walk_front_2_idle" "marine_anims\pistol_walk_front_2_idle.smd" {
	walkframe 11 LX LY
	frame 1 11
	rotate -90
}

$sequence "pistol_walk_2_idle" {
	"pistol_walk_back_2_idle"
	"pistol_walk_right_2_idle"
	"pistol_walk_front_2_idle"
	"pistol_walk_left_2_idle"
	"pistol_walk_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move"
}

$sequence "pistol_walk_2_idle_passive" {
	"pistol_walk_back_2_idle"
	"pistol_walk_right_2_idle"
	"pistol_walk_front_2_idle"
	"pistol_walk_left_2_idle"
	"pistol_walk_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move_passive"
}

// Crouch Stuff

$animation "pistol_crouch_move_back_2_crouch_idle" "marine_anims\pistol_crouch_move_back_2_crouch_idle.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "pistol_crouch_move_left_2_crouch_idle" "marine_anims\pistol_crouch_move_left_2_crouch_idle.smd" {
	walkframe 18 LX LY
	frame 2 18
	rotate -90
}

$animation "pistol_crouch_move_right_2_crouch_idle" "marine_anims\pistol_crouch_move_right_2_crouch_idle.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "pistol_crouch_move_front_2_crouch_idle" "marine_anims\pistol_crouch_move_front_2_crouch_idle.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "pistol_crouch_move_2_crouch_idle" {
	"pistol_crouch_move_back_2_crouch_idle"
	"pistol_crouch_move_right_2_crouch_idle"
	"pistol_crouch_move_front_2_crouch_idle"
	"pistol_crouch_move_left_2_crouch_idle"
	"pistol_crouch_move_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move"
}

$sequence "pistol_crouch_move_2_crouch_idle_passive" {
	"pistol_crouch_move_back_2_crouch_idle"
	"pistol_crouch_move_right_2_crouch_idle"
	"pistol_crouch_move_front_2_crouch_idle"
	"pistol_crouch_move_left_2_crouch_idle"
	"pistol_crouch_move_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move_passive"
}

$animation "pistol_crouch_walk_back_2_crouch_idle" "marine_anims\pistol_crouch_walk_back_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 1 15
	rotate -90
}

$animation "pistol_crouch_walk_left_2_crouch_idle" "marine_anims\pistol_crouch_walk_left_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 2 15
	rotate -90
}

$animation "pistol_crouch_walk_right_2_crouch_idle" "marine_anims\pistol_crouch_walk_right_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 2 15
	rotate -90
}

$animation "pistol_crouch_walk_front_2_crouch_idle" "marine_anims\pistol_crouch_walk_front_2_crouch_idle.smd" {
	walkframe 17 LX LY
	frame 1 17
	rotate -90
}

$sequence "pistol_crouch_walk_2_crouch_idle" {
	"pistol_crouch_walk_back_2_crouch_idle"
	"pistol_crouch_walk_right_2_crouch_idle"
	"pistol_crouch_walk_front_2_crouch_idle"
	"pistol_crouch_walk_left_2_crouch_idle"
	"pistol_crouch_walk_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move"
}

$sequence "pistol_crouch_walk_2_idle_passive" {
	"pistol_crouch_walk_back_2_crouch_idle"
	"pistol_crouch_walk_right_2_crouch_idle"
	"pistol_crouch_walk_front_2_crouch_idle"
	"pistol_crouch_walk_left_2_crouch_idle"
	"pistol_crouch_walk_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move_passive"
}

// Idle To Move Pistol

$animation "pistol_idle_2_move_back" "marine_anims\pistol_idle_2_move_back.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "pistol_idle_2_move_left" "marine_anims\pistol_idle_2_move_left.smd" {
	walkframe 14 LX LY
	frame 2 14
	rotate -90
}

$animation "pistol_idle_2_move_right" "marine_anims\pistol_idle_2_move_right.smd" {
	walkframe 14 LX LY
	frame 2 14
	rotate -90
}

$animation "pistol_idle_2_move_front" "marine_anims\pistol_idle_2_move_front.smd" {
	walkframe 16 LX LY
	frame 1 16
	rotate -90
}

$sequence "pistol_idle_2_move" {
	"pistol_idle_2_move_back"
	"pistol_idle_2_move_right"
	"pistol_idle_2_move_front"
	"pistol_idle_2_move_left"
	"pistol_idle_2_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move"
}

$sequence "pistol_idle_2_move_passive" {
	"pistol_idle_2_move_back"
	"pistol_idle_2_move_right"
	"pistol_idle_2_move_front"
	"pistol_idle_2_move_left"
	"pistol_idle_2_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move_passive"
}

$animation "pistol_idle_2_walk_back" "marine_anims\pistol_idle_2_walk_back.smd" {
	walkframe 15 LX LY
	frame 1 15
	rotate -90
}

$animation "pistol_idle_2_walk_left" "marine_anims\pistol_idle_2_walk_left.smd" {
	walkframe 13 LX LY
	frame 2 13
	rotate -90
}

$animation "pistol_idle_2_walk_right" "marine_anims\pistol_idle_2_walk_right.smd" {
	walkframe 13 LX LY
	frame 2 13
	rotate -90
}

$animation "pistol_idle_2_walk_front" "marine_anims\pistol_idle_2_walk_front.smd" {
	walkframe 14 LX LY
	frame 1 14
	rotate -90
}

$sequence "pistol_idle_2_walk" {
	"pistol_idle_2_walk_back"
	"pistol_idle_2_walk_right"
	"pistol_idle_2_walk_front"
	"pistol_idle_2_walk_left"
	"pistol_idle_2_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move"
}

$sequence "pistol_idle_2_walk_passive" {
	"pistol_idle_2_walk_back"
	"pistol_idle_2_walk_right"
	"pistol_idle_2_walk_front"
	"pistol_idle_2_walk_left"
	"pistol_idle_2_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_walk"
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_pistol_move_passive"
}

$sequence "pistol_idle_2_crouch_idle" {
	"marine_anims\pistol_idle_2_crouch_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	frame 1 12
	walkframe 12 LX LY
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_pistol"
}

// Crouch Idle To Move Pistol

$animation "pistol_crouch_idle_2_crouch_move_back" "marine_anims\pistol_crouch_idle_2_crouch_move_back.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "pistol_crouch_idle_2_crouch_move_left" "marine_anims\pistol_crouch_idle_2_crouch_move_left.smd" {
	walkframe 18 LX LY
	frame 2 18
	rotate -90
}

$animation "pistol_crouch_idle_2_crouch_move_right" "marine_anims\pistol_crouch_idle_2_crouch_move_right.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "pistol_crouch_idle_2_crouch_move_front" "marine_anims\pistol_crouch_idle_2_crouch_move_front.smd" {
	walkframe 17 LX LY
	frame 1 17
	rotate -90
}

$sequence "pistol_crouch_idle_2_crouch_move" {
	"pistol_crouch_idle_2_crouch_move_back"
	"pistol_crouch_idle_2_crouch_move_right"
	"pistol_crouch_idle_2_crouch_move_front"
	"pistol_crouch_idle_2_crouch_move_left"
	"pistol_crouch_idle_2_crouch_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_pistol_move"
}

$sequence "pistol_crouch_idle_2_crouch_move_passive" {
	"pistol_crouch_idle_2_crouch_move_back"
	"pistol_crouch_idle_2_crouch_move_right"
	"pistol_crouch_idle_2_crouch_move_front"
	"pistol_crouch_idle_2_crouch_move_left"
	"pistol_crouch_idle_2_crouch_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_pistol_move_passive"
}

$animation "pistol_crouch_idle_2_crouch_walk_back" "marine_anims\pistol_crouch_idle_2_crouch_walk_back.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$animation "pistol_crouch_idle_2_crouch_walk_left" "marine_anims\pistol_crouch_idle_2_crouch_walk_left.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "pistol_crouch_idle_2_crouch_walk_right" "marine_anims\pistol_crouch_idle_2_crouch_walk_right.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "pistol_crouch_idle_2_crouch_walk_front" "marine_anims\pistol_crouch_idle_2_crouch_walk_front.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "pistol_crouch_idle_2_crouch_walk" {
	"pistol_crouch_idle_2_crouch_walk_back"
	"pistol_crouch_idle_2_crouch_walk_right"
	"pistol_crouch_idle_2_crouch_walk_front"
	"pistol_crouch_idle_2_crouch_walk_left"
	"pistol_crouch_idle_2_crouch_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_pistol_move"
}

$sequence "pistol_crouch_idle_2_guard_idle" {
	"marine_anims\pistol_crouch_idle_2_guard_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
	weightlist "weights_melee1"
}

$sequence "pistol_crouch_idle_2_idle" {
	"marine_anims\pistol_crouch_idle_2_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
	weightlist "weights_melee1"
}

// Missile Section

$animation "missile_move_back_2_idle" "marine_anims\missile_move_back_2_idle.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$animation "missile_move_left_2_idle" "marine_anims\missile_move_left_2_idle.smd" {
	walkframe 14 LX LY
	frame 2 14
	rotate -90
}

$animation "missile_move_right_2_idle" "marine_anims\missile_move_right_2_idle.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "missile_move_front_2_idle" "marine_anims\missile_move_front_2_idle.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "missile_move_2_idle" {
	"missile_move_back_2_idle"
	"missile_move_right_2_idle"
	"missile_move_front_2_idle"
	"missile_move_left_2_idle"
	"missile_move_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move"
}

$sequence "missile_move_2_idle_passive" {
	"missile_move_back_2_idle"
	"missile_move_right_2_idle"
	"missile_move_front_2_idle"
	"missile_move_left_2_idle"
	"missile_move_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move_passive"
}

// Walk missile

$animation "missile_walk_back_2_idle" "marine_anims\missile_walk_back_2_idle.smd" {
	walkframe 7 LX LY
	frame 1 7
	rotate -90
}

$animation "missile_walk_left_2_idle" "marine_anims\missile_walk_left_2_idle.smd" {
	walkframe 9 LX LY
	frame 2 9
	rotate -90
}

$animation "missile_walk_right_2_idle" "marine_anims\missile_walk_right_2_idle.smd" {
	walkframe 9 LX LY
	frame 2 9
	rotate -90
}

$animation "missile_walk_front_2_idle" "marine_anims\missile_walk_front_2_idle.smd" {
	walkframe 11 LX LY
	frame 1 11
	rotate -90
}

$sequence "missile_walk_2_idle" {
	"missile_walk_back_2_idle"
	"missile_walk_right_2_idle"
	"missile_walk_front_2_idle"
	"missile_walk_left_2_idle"
	"missile_walk_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move"
}

$sequence "missile_walk_2_idle_passive" {
	"missile_walk_back_2_idle"
	"missile_walk_right_2_idle"
	"missile_walk_front_2_idle"
	"missile_walk_left_2_idle"
	"missile_walk_back_2_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move_passive"
}

// Crouch Stuff

$animation "missile_crouch_move_back_2_crouch_idle" "marine_anims\missile_crouch_move_back_2_crouch_idle.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "missile_crouch_move_left_2_crouch_idle" "marine_anims\missile_crouch_move_left_2_crouch_idle.smd" {
	walkframe 18 LX LY
	frame 2 18
	rotate -90
}

$animation "missile_crouch_move_right_2_crouch_idle" "marine_anims\missile_crouch_move_right_2_crouch_idle.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "missile_crouch_move_front_2_crouch_idle" "marine_anims\missile_crouch_move_front_2_crouch_idle.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "missile_crouch_move_2_crouch_idle" {
	"missile_crouch_move_back_2_crouch_idle"
	"missile_crouch_move_right_2_crouch_idle"
	"missile_crouch_move_front_2_crouch_idle"
	"missile_crouch_move_left_2_crouch_idle"
	"missile_crouch_move_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move"
}

$sequence "missile_crouch_move_2_crouch_idle_passive" {
	"missile_crouch_move_back_2_crouch_idle"
	"missile_crouch_move_right_2_crouch_idle"
	"missile_crouch_move_front_2_crouch_idle"
	"missile_crouch_move_left_2_crouch_idle"
	"missile_crouch_move_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move_passive"
}

$animation "missile_crouch_walk_back_2_crouch_idle" "marine_anims\missile_crouch_walk_back_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 1 15
	rotate -90
}

$animation "missile_crouch_walk_left_2_crouch_idle" "marine_anims\missile_crouch_walk_left_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 2 15
	rotate -90
}

$animation "missile_crouch_walk_right_2_crouch_idle" "marine_anims\missile_crouch_walk_right_2_crouch_idle.smd" {
	walkframe 15 LX LY
	frame 2 15
	rotate -90
}

$animation "missile_crouch_walk_front_2_crouch_idle" "marine_anims\missile_crouch_walk_front_2_crouch_idle.smd" {
	walkframe 17 LX LY
	frame 1 17
	rotate -90
}

$sequence "missile_crouch_walk_2_crouch_idle" {
	"missile_crouch_walk_back_2_crouch_idle"
	"missile_crouch_walk_right_2_crouch_idle"
	"missile_crouch_walk_front_2_crouch_idle"
	"missile_crouch_walk_left_2_crouch_idle"
	"missile_crouch_walk_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move"
}

$sequence "missile_crouch_walk_2_idle_passive" {
	"missile_crouch_walk_back_2_crouch_idle"
	"missile_crouch_walk_right_2_crouch_idle"
	"missile_crouch_walk_front_2_crouch_idle"
	"missile_crouch_walk_left_2_crouch_idle"
	"missile_crouch_walk_back_2_crouch_idle"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move_passive"
}

// Idle To Move missile

$animation "missile_idle_2_move_back" "marine_anims\missile_idle_2_move_back.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "missile_idle_2_move_left" "marine_anims\missile_idle_2_move_left.smd" {
	walkframe 14 LX LY
	frame 2 14
	rotate -90
}

$animation "missile_idle_2_move_right" "marine_anims\missile_idle_2_move_right.smd" {
	walkframe 14 LX LY
	frame 2 14
	rotate -90
}

$animation "missile_idle_2_move_front" "marine_anims\missile_idle_2_move_front.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$sequence "missile_idle_2_move" {
	"missile_idle_2_move_back"
	"missile_idle_2_move_right"
	"missile_idle_2_move_front"
	"missile_idle_2_move_left"
	"missile_idle_2_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move"
}

$sequence "missile_idle_2_move_passive" {
	"missile_idle_2_move_back"
	"missile_idle_2_move_right"
	"missile_idle_2_move_front"
	"missile_idle_2_move_left"
	"missile_idle_2_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move_passive"
}

$animation "missile_idle_2_walk_back" "marine_anims\missile_idle_2_walk_back.smd" {
	walkframe 14 LX LY
	frame 1 14
	rotate -90
}

$animation "missile_idle_2_walk_left" "marine_anims\missile_idle_2_walk_left.smd" {
	walkframe 13 LX LY
	frame 2 13
	rotate -90
}

$animation "missile_idle_2_walk_right" "marine_anims\missile_idle_2_walk_right.smd" {
	walkframe 13 LX LY
	frame 2 13
	rotate -90
}

$animation "missile_idle_2_walk_front" "marine_anims\missile_idle_2_walk_front.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$sequence "missile_idle_2_walk" {
	"missile_idle_2_walk_back"
	"missile_idle_2_walk_right"
	"missile_idle_2_walk_front"
	"missile_idle_2_walk_left"
	"missile_idle_2_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move"
}

$sequence "missile_idle_2_walk_passive" {
	"missile_idle_2_walk_back"
	"missile_idle_2_walk_right"
	"missile_idle_2_walk_front"
	"missile_idle_2_walk_left"
	"missile_idle_2_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_walk"
	fps 30
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_missile_move_passive"
}

$sequence "missile_idle_2_crouch_idle" {
	"marine_anims\missile_idle_2_crouch_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	frame 1 12
	walkframe 12 LX LY
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_missile"
}

// Crouch Idle To Move Missile

$animation "missile_crouch_idle_2_crouch_move_back" "marine_anims\missile_crouch_idle_2_crouch_move_back.smd" {
	walkframe 13 LX LY
	frame 1 13
	rotate -90
}

$animation "missile_crouch_idle_2_crouch_move_left" "marine_anims\missile_crouch_idle_2_crouch_move_left.smd" {
	walkframe 18 LX LY
	frame 2 18
	rotate -90
}

$animation "missile_crouch_idle_2_crouch_move_right" "marine_anims\missile_crouch_idle_2_crouch_move_right.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "missile_crouch_idle_2_crouch_move_front" "marine_anims\missile_crouch_idle_2_crouch_move_front.smd" {
	walkframe 17 LX LY
	frame 1 17
	rotate -90
}

$sequence "missile_crouch_idle_2_crouch_move" {
	"missile_crouch_idle_2_crouch_move_back"
	"missile_crouch_idle_2_crouch_move_right"
	"missile_crouch_idle_2_crouch_move_front"
	"missile_crouch_idle_2_crouch_move_left"
	"missile_crouch_idle_2_crouch_move_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_missile_move"
}

$animation "missile_crouch_idle_2_crouch_walk_back" "marine_anims\missile_crouch_idle_2_crouch_walk_back.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$animation "missile_crouch_idle_2_crouch_walk_left" "marine_anims\missile_crouch_idle_2_crouch_walk_left.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "missile_crouch_idle_2_crouch_walk_right" "marine_anims\missile_crouch_idle_2_crouch_walk_right.smd" {
	walkframe 19 LX LY
	frame 2 19
	rotate -90
}

$animation "missile_crouch_idle_2_crouch_walk_front" "marine_anims\missile_crouch_idle_2_crouch_walk_front.smd" {
	walkframe 19 LX LY
	frame 1 19
	rotate -90
}

$sequence "missile_crouch_idle_2_crouch_walk" {
	"missile_crouch_idle_2_crouch_walk_back"
	"missile_crouch_idle_2_crouch_walk_right"
	"missile_crouch_idle_2_crouch_walk_front"
	"missile_crouch_idle_2_crouch_walk_left"
	"missile_crouch_idle_2_crouch_walk_back"
	activity "ACT_TRANSITION" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_walk"
	fps 30
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_missile_move"
}

$sequence "missile_crouch_idle_2_idle" {
	"marine_anims\missile_crouch_idle_2_idle.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 49 LX LY
	weightlist "weights_melee1"
}

// Transition Anims

$animation "rifle_move_back" "marine_anims\rifle_move_back.smd" {
	walkframe 27 LX LY
	frame 2 27
	rotate -90
}

$animation "rifle_move_left" "marine_anims\rifle_move_left.smd" {
	walkframe 25 LX LY
	frame 2 25
	rotate -90
}

$animation "rifle_move_right" "marine_anims\rifle_move_right.smd" {
	walkframe 26 LX LY
	frame 2 26
	rotate -90
}

$animation "rifle_move_front" "marine_anims\rifle_move_front.smd" {
	walkframe 25 LX LY
	frame 1 25
	rotate -90
}

$sequence "rifle_move" {
	"rifle_move_back"
	"rifle_move_right"
	"rifle_move_front"
	"rifle_move_left"
	"rifle_move_back"
	activity "ACT_RUN_AIM_RIFLE" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move"
}

$sequence "rifle_move_passive" {
	"rifle_move_back"
	"rifle_move_right"
	"rifle_move_front"
	"rifle_move_left"
	"rifle_move_back"
	activity "ACT_RUN_PASSIVE_RIFLE" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move_passive"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move_passive"
}

$sequence "rifle_crouch_move" {
	"marine_anims\rifle_crouch_move_back.smd"
	"marine_anims\rifle_crouch_move_right.smd"
	"marine_anims\rifle_crouch_move_front.smd"
	"marine_anims\rifle_crouch_move_left.smd"
	"marine_anims\rifle_crouch_move_back.smd"
	activity "ACT_WALK_AIM_AGITATED" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move_crouch"
	fps 30
	loop
	walkframe 41 LX LY
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_battle_rifle_move"
}

$sequence "rifle_crouch_move_passive" {
	"marine_anims\rifle_crouch_move_back.smd"
	"marine_anims\rifle_crouch_move_right.smd"
	"marine_anims\rifle_crouch_move_front.smd"
	"marine_anims\rifle_crouch_move_left.smd"
	"marine_anims\rifle_crouch_move_back.smd"
	activity "ACT_WALK_AIM_PASSIVE" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_move_crouch_passive"
	fps 30
	loop
	walkframe 41 LX LY
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_battle_rifle_move_passive"
}

$sequence "rifle_crouch_walk" {
	"marine_anims\rifle_crouch_walk_back.smd"
	"marine_anims\rifle_crouch_walk_right.smd"
	"marine_anims\rifle_crouch_walk_front.smd"
	"marine_anims\rifle_crouch_walk_left.smd"
	"marine_anims\rifle_crouch_walk_back.smd"
	activity "ACT_WALK_CROUCH_AIM_RIFLE" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_crouch_walk"
	fps 30
	loop
	walkframe 79 LX LY
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_battle_rifle_move"
}

$sequence "rifle_walk" {
	"marine_anims\rifle_walk_back.smd"
	"marine_anims\rifle_walk_right.smd"
	"marine_anims\rifle_walk_front.smd"
	"marine_anims\rifle_walk_left.smd"
	"marine_anims\rifle_walk_back.smd"
	activity "ACT_WALK" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	loop
	walkframe 37 LX LY
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move"
}

$sequence "rifle_walk_passive" {
	"marine_anims\rifle_walk_back.smd"
	"marine_anims\rifle_walk_right.smd"
	"marine_anims\rifle_walk_front.smd"
	"marine_anims\rifle_walk_left.smd"
	"marine_anims\rifle_walk_back.smd"
	activity "ACT_WALK" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "rifle_walk"
	fps 30
	loop
	walkframe 37 LX LY
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle_move_passive"
}

$animation "pistol_move_back" "marine_anims\pistol_move_back.smd" {
	walkframe 27 LX LY
	frame 1 27
	rotate -90
}

$animation "pistol_move_left" "marine_anims\pistol_move_left.smd" {
	walkframe 24 LX LY
	frame 1 24
	rotate -90
}

$animation "pistol_move_right" "marine_anims\pistol_move_right.smd" {
	walkframe 25 LX LY
	frame 1 25
	rotate -90
}

$animation "pistol_move_front" "marine_anims\pistol_move_front.smd" {
	walkframe 21 LX LY
	frame 1 21
	rotate -90
}

$sequence "pistol_move" {
	"pistol_move_back"
	"pistol_move_right"
	"pistol_move_front"
	"pistol_move_left"
	"pistol_move_back"
	activity "ACT_RUN_AIM_PISTOL" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move"
}

$sequence "pistol_move_passive" {
	"pistol_move_back"
	"pistol_move_right"
	"pistol_move_front"
	"pistol_move_left"
	"pistol_move_back"
	activity "ACT_RUN_PASSIVE_PISTOL" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_move_passive"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move_passive"
}

$animation "pistol_walk_back" "marine_anims\pistol_walk_back.smd" {
	walkframe 37 LX LY
	frame 1 37
	rotate -90
}

$animation "pistol_walk_left" "marine_anims\pistol_walk_left.smd" {
	walkframe 39 LX LY
	frame 1 39
	rotate -90
}

$animation "pistol_walk_right" "marine_anims\pistol_walk_right.smd" {
	walkframe 32 LX LY
	frame 1 32
	rotate -90
}

$animation "pistol_walk_front" "marine_anims\pistol_walk_front.smd" {
	walkframe 29 LX LY
	frame 1 29
	rotate -90
}

$sequence "pistol_walk" {
	"pistol_walk_back"
	"pistol_walk_right"
	"pistol_walk_front"
	"pistol_walk_left"
	"pistol_walk_back"
	activity "ACT_WALK_AIM_PISTOL" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_walk"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_pistol_move"
}

$animation "pistol_crouch_walk_back" "marine_anims\pistol_crouch_walk_back.smd" {
	walkframe 79 LX LY
	frame 1 79
	rotate -90
}

$animation "pistol_crouch_walk_left" "marine_anims\pistol_crouch_walk_left.smd" {
	walkframe 59 LX LY
	frame 1 59
	rotate -90
}

$animation "pistol_crouch_walk_right" "marine_anims\pistol_crouch_walk_right.smd" {
	walkframe 59 LX LY
	frame 1 59
	rotate -90
}

$animation "pistol_crouch_walk_front" "marine_anims\pistol_crouch_walk_front.smd" {
	walkframe 79 LX LY
	frame 1 79
	rotate -90
}

$sequence "pistol_crouch_walk" {
	"pistol_crouch_walk_back"
	"pistol_crouch_walk_right"
	"pistol_crouch_walk_front"
	"pistol_crouch_walk_left"
	"pistol_crouch_walk_back"
	activity "ACT_WALK_AIM_PISTOL" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_crouch_walk"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_pistol_move"
}

$animation "pistol_crouch_move_back" "marine_anims\pistol_crouch_move_back.smd" {
	walkframe 41 LX LY
	frame 1 41
	rotate -90
}

$animation "pistol_crouch_move_left" "marine_anims\pistol_crouch_move_left.smd" {
	walkframe 37 LX LY
	frame 1 37
	rotate -90
}

$animation "pistol_crouch_move_right" "marine_anims\pistol_crouch_move_right.smd" {
	walkframe 35 LX LY
	frame 1 35
	rotate -90
}

$animation "pistol_crouch_move_front" "marine_anims\pistol_crouch_move_front.smd" {
	walkframe 35 LX LY
	frame 1 35
	rotate -90
}

$sequence "pistol_crouch_move" {
	"pistol_crouch_move_back"
	"pistol_crouch_move_right"
	"pistol_crouch_move_front"
	"pistol_crouch_move_left"
	"pistol_crouch_move_back"
	activity "ACT_WALK_AIM_PISTOL" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_crouch_move"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_pistol_move"
}

$sequence "pistol_crouch_move_passive" {
	"pistol_crouch_move_back"
	"pistol_crouch_move_right"
	"pistol_crouch_move_front"
	"pistol_crouch_move_left"
	"pistol_crouch_move_back"
	activity "ACT_WALK_PASSIVE_PISTOL" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "pistol_crouch_move_passive"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_pistol_move_passive"
}

$animation "missile_move_back" "marine_anims\missile_move_back.smd" {
	walkframe 27 LX LY
	frame 1 27
	rotate -90
}

$animation "missile_move_left" "marine_anims\missile_move_left.smd" {
	walkframe 24 LX LY
	frame 1 24
	rotate -90
}

$animation "missile_move_right" "marine_anims\missile_move_right.smd" {
	walkframe 25 LX LY
	frame 1 25
	rotate -90
}

$animation "missile_move_front" "marine_anims\missile_move_front.smd" {
	walkframe 24 LX LY
	frame 1 24
	rotate -90
}

$sequence "missile_move" {
	"missile_move_back"
	"missile_move_right"
	"missile_move_front"
	"missile_move_left"
	"missile_move_back"
	activity "ACT_RUN_AIM_RPG" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move"
}

$sequence "missile_move_passive" {
	"missile_move_back"
	"missile_move_right"
	"missile_move_front"
	"missile_move_left"
	"missile_move_back"
	activity "ACT_RUN_PASSIVE_RPG" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_move_passive"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move_passive"
}

$animation "missile_walk_back" "marine_anims\missile_walk_back.smd" {
	walkframe 37 LX LY
	frame 1 37
	rotate -90
}

$animation "missile_walk_left" "marine_anims\missile_walk_left.smd" {
	walkframe 37 LX LY
	frame 1 37
	rotate -90
}

$animation "missile_walk_right" "marine_anims\missile_walk_right.smd" {
	walkframe 32 LX LY
	frame 1 32
	rotate -90
}

$animation "missile_walk_front" "marine_anims\missile_walk_front.smd" {
	walkframe 36 LX LY
	frame 1 36
	rotate -90
}

$sequence "missile_walk" {
	"missile_walk_back"
	"missile_walk_right"
	"missile_walk_front"
	"missile_walk_left"
	"missile_walk_back"
	activity "ACT_WALK_AIM_RPG" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_walk"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_missile_move"
}

$animation "missile_crouch_walk_back" "marine_anims\missile_crouch_walk_back.smd" {
	walkframe 78 LX LY
	frame 1 78
	rotate -90
}

$animation "missile_crouch_walk_left" "marine_anims\missile_crouch_walk_left.smd" {
	walkframe 58 LX LY
	frame 1 58
	rotate -90
}

$animation "missile_crouch_walk_right" "marine_anims\missile_crouch_walk_right.smd" {
	walkframe 63 LX LY
	frame 1 63
	rotate -90
}

$animation "missile_crouch_walk_front" "marine_anims\missile_crouch_walk_front.smd" {
	walkframe 78 LX LY
	frame 1 78
	rotate -90
}

$sequence "missile_crouch_walk" {
	"missile_crouch_walk_back"
	"missile_crouch_walk_right"
	"missile_crouch_walk_front"
	"missile_crouch_walk_left"
	"missile_crouch_walk_back"
	activity "ACT_WALK_AIM_RPG" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_crouch_walk"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_missile_move"
}

$animation "missile_crouch_move_back" "marine_anims\missile_crouch_move_back.smd" {
	walkframe 41 LX LY
	frame 1 41
	rotate -90
}

$animation "missile_crouch_move_left" "marine_anims\missile_crouch_move_left.smd" {
	walkframe 37 LX LY
	frame 1 37
	rotate -90
}

$animation "missile_crouch_move_right" "marine_anims\missile_crouch_move_right.smd" {
	walkframe 35 LX LY
	frame 1 35
	rotate -90
}

$animation "missile_crouch_move_front" "marine_anims\missile_crouch_move_front.smd" {
	walkframe 35 LX LY
	frame 1 35
	rotate -90
}

$sequence "missile_crouch_move" {
	"missile_crouch_move_back"
	"missile_crouch_move_right"
	"missile_crouch_move_front"
	"missile_crouch_move_left"
	"missile_crouch_move_back"
	activity "ACT_WALK_AIM_RPG" 1
	blend "move_yaw" 180 -180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "missile_crouch_move"
	fps 30
	loop
	weightlist "weights_melee1"
	addlayer "aimlayer_crouch_missile_move"
}

$sequence "rifle_crouch_to_aim" {
	"marine_anims\rifle_crouch_to_aim.smd"
	activity "ACT_STEP_FORE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_crouch_to_idle" {
	"marine_anims\rifle_crouch_to_idle.smd"
	activity "ACT_BUSY_STAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "injured_back" {
	"marine_anims\any_injured_back.smd"
	activity "ACT_FLINCH_CHEST" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	walkframe 31 LX LY
}

$sequence "taunt" {
	"marine_anims\any_taunt.smd"
	activity "ACT_SIGNAL_TAKECOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 49
	rotate -90
}

$sequence "any_resurrect_front" {
	"marine_anims\any_resurrect_front.smd"
	activity "ACT_GETUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 61
	rotate -90
}

$sequence "any_resurrect_back" {
	"marine_anims\any_resurrect_back.smd"
	activity "ACT_GETUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 79
	rotate -90
}

$sequence "any_cheer" {
	"marine_anims\any_cheer.smd"
	activity "ACT_SIGNAL_GROUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 55
	rotate -90
}

$sequence "missile_cheer" {
	"marine_anims\missile_cheer.smd"
	activity "ACT_SIGNAL_GROUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "rifle_cheer" {
	"marine_anims\rifle_cheer.smd"
	activity "ACT_SIGNAL_GROUP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "any_shakefist" {
	"marine_anims\any_shakefist.smd"
	activity "ACT_GMOD_GESTURE_POINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 55
	rotate -90
}

$sequence "missile_shakefist" {
	"marine_anims\missile_shakefist.smd"
	activity "ACT_GMOD_GESTURE_POINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 84
}

$sequence "pistol_shakefist" {
	"marine_anims\pistol_shakefist.smd"
	activity "ACT_GMOD_GESTURE_POINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
}

$sequence "rifle_taunt_1" {
	"marine_anims\rifle_taunt_1.smd"
	activity "ACT_GMOD_TAUNT_PERSISTENCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 46
}

$sequence "rifle_taunt_2" {
	"marine_anims\rifle_taunt_2.smd"
	activity "ACT_GMOD_TAUNT_PERSISTENCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 41
}

$sequence "missile_taunt" {
	"marine_anims\missile_taunt.smd"
	activity "ACT_GMOD_TAUNT_PERSISTENCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 45
}

$sequence "any_cower" {
	"marine_anims\any_cower.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "rifle_crouch_signal" {
	"marine_anims\rifle_crouch_signal.smd"
	activity "ACT_SIGNAL3" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 42
}

$sequence "rifle_crouch_signal_attack" {
	"marine_anims\rifle_crouch_signal_attack.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "any_wave" {
	"marine_anims\any_wave.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 65
	rotate -90
}

$sequence "any_wave_nav_1" {
	"marine_anims\any_wave_nav_1.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 65
	rotate -90
}

$sequence "any_wave_nav_2" {
	"marine_anims\any_wave_nav_2.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 66
	rotate -90
}

$sequence "missile_wave" {
	"marine_anims\missile_wave.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 46
	rotate -90
}

$sequence "missile_wave_nav_1" {
	"marine_anims\missile_wave_nav_1.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 66
	rotate -90
}

$sequence "missile_wave_nav_2" {
	"marine_anims\missile_wave_nav_2.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 66
	rotate -90
}

$sequence "pistol_wave" {
	"marine_anims\pistol_wave.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_reload"
	frame 1 65
	rotate -90
}

$sequence "pistol_wave_nav_1" {
	"marine_anims\pistol_wave_nav_1.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 65
	rotate -90
}

$sequence "pistol_wave_nav_2" {
	"marine_anims\pistol_wave_nav_2.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 147
	rotate -90
}

$sequence "rifle_wave" {
	"marine_anims\rifle_wave.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 62
	rotate -90
}

$sequence "rifle_wave_nav_1" {
	"marine_anims\rifle_wave_nav_1.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 66
	rotate -90
}

$sequence "rifle_wave_nav_2" {
	"marine_anims\rifle_wave_nav_2.smd"
	activity "ACT_WAVE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 66
	rotate -90
}

$sequence "any_advance" {
	"marine_anims\any_advance.smd"
	activity "ACT_SIGNAL_ADVANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 47
	rotate -90
}

$sequence "any_fallback" {
	"marine_anims\any_fallback.smd"
	activity "ACT_SIGNAL_HALT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 59
	rotate -90
	walkframe 59 LX LY
}

$sequence "any_brace" {
	"marine_anims\any_brace.smd"
	activity "ACT_SIGNAL_TAKECOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 54
	rotate -90
}

$sequence "pistol_advance" {
	"marine_anims\pistol_advance.smd"
	activity "ACT_SIGNAL_ADVANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_fallback" {
	"marine_anims\pistol_fallback.smd"
	activity "ACT_SIGNAL_HALT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 59
	rotate -90
	walkframe 59 LX LY
}

$sequence "pistol_brace" {
	"marine_anims\pistol_brace.smd"
	activity "ACT_SIGNAL_TAKECOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 65
	rotate -90
}

$sequence "missile_advance" {
	"marine_anims\missile_advance.smd"
	activity "ACT_SIGNAL_ADVANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "missile_fallback" {
	"marine_anims\missile_fallback.smd"
	activity "ACT_SIGNAL_HALT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	walkframe 64 LX LY
}

$sequence "rifle_advance" {
	"marine_anims\rifle_advance.smd"
	activity "ACT_SIGNAL_ADVANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 37
	rotate -90
}

$sequence "rifle_fallback" {
	"marine_anims\rifle_fallback.smd"
	activity "ACT_SIGNAL_HALT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	walkframe 66 LX LY
}

$sequence "rifle_brace" {
	"marine_anims\rifle_brace.smd"
	activity "ACT_SIGNAL_TAKECOVER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "rifle_signal_move" {
	"marine_anims\rifle_signal_move.smd"
	activity "ACT_SIGNAL_ADVANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 47
	rotate -90
}

$sequence "rifle_warn" {
	"marine_anims\rifle_warn.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
}

$sequence "rifle_putaway" {
	"marine_anims\rifle_putaway.smd"
	activity "ACT_UNDEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
}

$sequence "missile_surprise_front" {
	"marine_anims\missile_surprise_front.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 43
	walkframe 43 LX LY
}

$sequence "missile_surprise_back" {
	"marine_anims\missile_surprise_back.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 44
	walkframe 44 LX LY
}

$sequence "pistol_surprise_front" {
	"marine_anims\pistol_surprise_front.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 43
	walkframe 43 LX LY
}

$sequence "pistol_surprise_back" {
	"marine_anims\pistol_surprise_back.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 46
	walkframe 46 LX LY
}

$sequence "rifle_hold" {
	"marine_anims\rifle_hold.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 36
}

$sequence "pistol_hold_1" {
	"marine_anims\pistol_hold_1.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 79
}

$sequence "pistol_hold_2" {
	"marine_anims\pistol_hold_2.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 59
}

$sequence "missile_hold_1" {
	"marine_anims\missile_hold_1.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 39
	rotate -90
}

$sequence "missile_hold_2" {
	"marine_anims\missile_hold_2.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 59
	rotate -90
}

$sequence "rifle_airborne" {
	"marine_anims\rifle_airborne.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 57 LX LY
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle"
}

$sequence "missile_signal_attack" {
	"marine_anims\missile_signal_attack.smd"
	activity "ACT_SIGNAL_ADVANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 73
}

$sequence "missile_signal_move" {
	"marine_anims\missile_signal_move.smd"
	activity "ACT_SIGNAL_ADVANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 84
}

$sequence "missile_warn" {
	"marine_anims\missile_warn.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 78
	rotate -90
}

$sequence "missile_deploy" {
	"marine_anims\missile_deploy.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 19
	walkframe 19 LX LY
	rotate -90
}

$sequence "missile_deploy_fast" {
	"marine_anims\missile_deploy_fast.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 38
	rotate -90
	walkframe 38 LX LY
}

$sequence "missile_deploy_slow" {
	"marine_anims\missile_deploy_slow.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	walkframe 67 LX LY
}

$sequence "missile_airborne" {
	"marine_anims\missile_airborne.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 57 LX LY
	weightlist "weights_melee1"
	rotate -90
}

$sequence "pistol_signal_attack" {
	"marine_anims\pistol_signal_attack.smd"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 73
}

$sequence "pistol_signal_move" {
	"marine_anims\pistol_signal_move.smd"
	activity "ACT_SIGNAL_ADVANCE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 49
}

$sequence "pistol_warn_1" {
	"marine_anims\pistol_warn_1.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 44
	rotate -90
}

$sequence "pistol_warn_2" {
	"marine_anims\pistol_warn_2.smd"
	activity "ACT_SIGNAL2" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 44
}

$sequence "pistol_draw_slow" {
	"marine_anims\pistol_draw_slow.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	frame 1 88
	rotate -90
	walkframe 88 LX LY
}

$sequence "pistol_draw_fast" {
	"marine_anims\pistol_draw_fast.smd"
	activity "ACT_DEPLOY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_melee1"
	rotate -90
	frame 1 21
	walkframe 21 LX LY
}

$sequence "pistol_airborne" {
	"marine_anims\pistol_airborne.smd"
	activity "ACT_JUMP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 57 LX LY
	weightlist "weights_melee1"
	rotate -90
	addlayer "aimlayer_crouch_pistol_move"
}

$sequence "berserk" {
	"marine_anims\rifle_berserk.smd"
	activity "ACT_STAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 43 LX LY
	weightlist "weights_melee1"
}

$sequence "warthog_g_enter" {
	"marine_anims\any_warthog_g_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 33 LX LY
	weightlist "weights_melee1"
}

$sequence "warthog_g_exit" {
	"marine_anims\any_warthog_g_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 36 LX LY
	weightlist "weights_melee1"
}

$sequence "warthog_g_idle" {
	"marine_anims\any_warthog_g_idle.smd"
	activity "ACT_IDLE_RELAXED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 41 LX LY
	weightlist "weights_melee1"
}

$sequence "warthog_g_fire" {
	"marine_anims\any_warthog_g_fire.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 7 LX LY
	weightlist "weights_melee1"
}

$sequence "warthog_p_enter" {
	"marine_anims\any_warthog_p_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 41 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "warthog_p_exit" {
	"marine_anims\any_warthog_p_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "rifle_warthog_p_idle" {
	"marine_anims\rifle_warthog_p_idle.smd"
	activity "ACT_IDLE_STIMULATED" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 41 LX LY
	weightlist "weights_melee1"
	addlayer "aimlayer_battle_rifle"
}

$sequence "rifle_warthog_p_fire" {
	"marine_anims\rifle_warthog_p_fire.smd"
	activity "ACT_RANGE_ATTACK1_LOW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 9 LX LY
	weightlist "weights_melee1"
}

$sequence "rifle_warthog_p_grenade" {
	"marine_anims\rifle_warthog_p_grenade.smd"
	activity "ACT_RANGE_ATTACK2_LOW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 19 LX LY
	weightlist "weights_melee1"
}

$sequence "mongoose_p_enter" {
	"marine_anims\any_mongoose_p_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 31 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "mongoose_p_exit" {
	"marine_anims\any_mongoose_p_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 16 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "mongoose_p_idle" {
	"marine_anims\any_mongoose_p_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 41 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "warthog_d_enter" {
	"marine_anims\any_warthog_d_enter.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 38 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "warthog_d_exit" {
	"marine_anims\any_warthog_d_exit.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 25 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "warthog_d_idle" {
	"marine_anims\any_warthog_d_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 58 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "pelican_d_idle" {
	"marine_anims\any_pelican_d_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 58 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "mauler_p_l_idle" {
	"marine_anims\any_mauler_p_l_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 41 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "mauler_p_r_idle" {
	"marine_anims\any_mauler_p_r_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 41 LX LY LZ
	weightlist "weights_melee1"
}

$sequence "scorpion_p_idle" {
	"marine_anims\any_scorpion_p_idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 41 LX LY LZ
	weightlist "weights_melee1"
}