// Created by Crowbar 0.71

$modelname "halo3/elite.mdl"

$bodygroup "lights_base"
{
	studio "lights_base.smd"
}
$bodygroup "RightShoulder"
{
	studio "rightshoulder_base.smd"
	studio "rightshoulder_specops.smd"
}
$bodygroup "LeftShoulder"
{
	studio "leftshoulder_base.smd"
	studio "leftshoulder_specops.smd"
}
$bodygroup "Head"
{
	studio "head_base.smd"
	studio "head_shipmaster.smd"
	studio "head_specops.smd"
}
$bodygroup "Chest"
{
	studio "chest_base.smd"
	studio "chest_specops.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -8.289 0 32.145

$cdmaterials "models/Ivan04/"

$cbox 0 0 0 0 0 0

$bbox -37.546 -36.084 0.122 37.547 19.506 64.169

$definebone "pelvis" "" 0.291583 0 16.5623 -89.999811 -89.999641 0 0 0 0 0 0 0
$definebone "spine" "pelvis" 1.769901 -1.68187 0 0 -32.454388 0 0 0 0 0 0 0
$definebone "spine1" "spine" 9.763411 -0.005857 0 0 66.49978 0 0 0 0 0 0 0
$definebone "r_clavicle" "spine1" 18.42989 0 -2.84396 49.295517 169.9496 -13.10005 0 0 0 0 0 0
$definebone "r_upperarm" "r_clavicle" 11.541798 -0.000002 0.000002 6.98442 -24.965255 1.419786 0 0 0 0 0 0
$definebone "r_forearm" "r_upperarm" 8.210975 0.000001 -0.000002 0.000006 -12.459185 -0.000005 0 0 0 0 0 0
$definebone "neck" "spine1" 18.42989 -0.001116 0 0 0 0 0 0 0 0 0 0
$definebone "head" "neck" 1.411057 0.000002 0 0 -4.045712 0 0 0 0 0 0 0
$definebone "l_clavicle" "spine1" 18.429901 0 2.84397 -49.295514 169.950174 13.099474 0 0 0 0 0 0
$definebone "l_upperarm" "l_clavicle" 11.541799 0.000004 -0.000002 -6.984412 -24.965313 -1.419791 0 0 0 0 0 0
$definebone "l_forearm" "l_upperarm" 8.210982 0.000003 0.000002 0.000003 -12.459188 -0.000005 0 0 0 0 0 0
$definebone "r_thigh" "pelvis" 0 0 -2.48343 54.580079 151.227628 -142.486584 0 0 0 0 0 0
$definebone "fx_fire_small" "r_thigh" 6.909301 2.342731 0 0 115.000073 -0.000002 0 0 0 0 0 0
$definebone "r_calf" "r_thigh" 9.406944 0 0 0 -66.976473 -0.000002 0 0 0 0 0 0
$definebone "r_foot" "r_calf" 8.474718 -0.000001 0 15.872882 8.857354 -61.449149 0 0 0 0 0 0
$definebone "l_thigh" "pelvis" 0 0 2.48343 -54.57996 151.227628 142.487172 0 0 0 0 0 0
$definebone "l_calf" "l_thigh" 9.406941 0 0 0 -66.976473 0.000002 0 0 0 0 0 0
$definebone "l_foot" "l_calf" 8.474722 0.000001 0 -15.872933 8.857353 61.448576 0 0 0 0 0 0
$definebone "r_jaw_top" "head" 0.341705 6.239394 -2.22559 1.828865 62.677566 98.764173 0 0 0 0 0 0
$definebone "r_jaw_bot" "head" -0.288143 5.156691 -2.12823 -0.198979 70.370681 93.556557 0 0 0 0 0 0
$definebone "l_jaw_top" "head" 0.342907 6.241552 2.18066 -1.828882 62.677566 81.236248 0 0 0 0 0 0
$definebone "l_jaw_bot" "head" -0.289425 5.154377 2.08232 1.561523 69.206427 85.85028 0 0 0 0 0 0
$definebone "r_hand" "r_forearm" 14.260796 0 0 -12.761595 7.305855 55.829123 0 0 0 0 0 0
$definebone "l_hand" "l_forearm" 14.260801 0.000003 0.000002 12.761595 7.305844 -55.829068 0 0 0 0 0 0
$definebone "l_thumb1" "l_hand" 3.38641 0.191072 -2.117319 41.319537 34.98833 -91.566691 0 0 0 0 0 0
$definebone "l_thumb2" "l_thumb1" 2.553389 0 0 0.000019 -33.453969 0.000002 0 0 0 0 0 0
$definebone "l_ring1" "l_hand" 7.442242 -0.751585 0.786142 0.974593 25.042878 5.037247 0 0 0 0 0 0
$definebone "l_ring2" "l_ring1" 4.392499 -0.000002 0 -0.000003 42.096239 -0.000004 0 0 0 0 0 0
$definebone "l_pinky1" "l_hand" 3.375341 -0.139051 1.18718 -44.453221 30.03368 96.879144 0 0 0 0 0 0
$definebone "l_pinky2" "l_pinky1" 3.61456 0 0.000001 -0.00002 -40.267192 0.000003 0 0 0 0 0 0
$definebone "l_index1" "l_hand" 7.538412 -0.934404 -1.667131 5.30443 28.524629 5.66792 0 0 0 0 0 0
$definebone "l_index2" "l_index1" 4.069169 -0.000002 -0.000002 0.000002 37.49837 -0.000007 0 0 0 0 0 0
$definebone "r_horselink" "r_calf" 10.232199 0.000002 0 -0.000003 63.826929 -0.000002 0 0 0 0 0 0
$definebone "l_horselink" "l_calf" 10.232201 0 0 0.000002 63.826923 -0.000002 0 0 0 0 0 0


$sequence "idle" {
	"elite_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "plasma_rifle_idle" {
	"elite_anims\plasma_rifle_idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
