// Created by Crowbar 0.71

$modelname "halo3/brute.mdl"

$bodygroup "brute"
{
	studio "brute.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -0.731 7.638 -0.012

$cdmaterials "models/Ivan04/"

$cbox 0 0 0 0 0 0

$bbox -32.491 -44.156 -34.885 17.215 42.694 34.861

$definebone "pelvis" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "spine" "pelvis" 4.8412 -0.00626 0 0 -4.334844 0 0 0 0 0 0 0
$definebone "spine1" "spine" 7.88246 -0.011579 0 0 20.057419 0 0 0 0 0 0 0
$definebone "r_clavicle" "spine1" 15.476001 0 -3.28889 58.042347 179.954011 0 0 0 0 0 0 0
$definebone "r_upperarm" "r_clavicle" 9.189541 0.006554 -0.024464 -18.76248 -27.589356 24.434419 0 0 0 0 0 0
$definebone "r_forearm" "r_upperarm" 16.907101 0 0 -0.000004 -42.404147 0.000003 0 0 0 0 0 0
$definebone "r_hand" "r_forearm" 12.716898 -0.000001 0.000002 8.675548 2.620003 76.935633 0 0 0 0 0 0
$definebone "r_thumb1" "r_hand" 4.042583 1.764612 2.212451 -25.990632 57.542144 22.039207 0 0 0 0 0 0
$definebone "r_thumb2" "r_thumb1" 2.826699 0 0.000001 -0.000007 -30.358798 -0.000001 0 0 0 0 0 0
$definebone "r_ring1" "r_hand" 6.429531 -0.581205 -1.299217 1.085061 9.966894 21.181095 0 0 0 0 0 0
$definebone "r_ring2" "r_ring1" 2.714029 0.000002 0 0.000002 34.094368 -0.000001 0 0 0 0 0 0
$definebone "r_index1" "r_hand" 6.254663 -0.480564 2.685012 -7.166162 17.354952 176.872639 0 0 0 0 0 0
$definebone "r_index2" "r_index1" 3.444929 0 0.000001 -0.000003 -57.766748 -0.000006 0 0 0 0 0 0
$definebone "neck" "spine1" 15.477002 -0.003597 0 0 14.832155 0 0 0 0 0 0 0
$definebone "head" "neck" 4.6731 0 0 0 -4.887823 0 0 0 0 0 0 0
$definebone "jaw" "head" 0.802572 3.862402 0 0 102.147494 0 0 0 0 0 0 0
$definebone "l_clavicle" "spine1" 15.476001 0 3.28889 -58.042347 179.954584 0 0 0 0 0 0 0
$definebone "l_upperarm" "l_clavicle" 9.17675 -0.000001 0 18.76242 -27.58941 -24.434529 0 0 0 0 0 0
$definebone "l_forearm" "l_upperarm" 16.907103 0 -0.000002 0.000001 -42.404147 -0.000003 0 0 0 0 0 0
$definebone "l_hand" "l_forearm" 12.7169 0 0.000004 -8.675498 2.620032 -76.93564 0 0 0 0 0 0
$definebone "l_thumb1" "l_hand" 4.042593 1.76462 -2.21245 25.990629 57.542151 -22.039163 0 0 0 0 0 0
$definebone "l_thumb2" "l_thumb1" 2.826709 0 0 0.000002 -30.358798 -0.000004 0 0 0 0 0 0
$definebone "l_ring1" "l_hand" 6.429543 -0.5812 1.29921 -1.085066 9.966888 -21.181098 0 0 0 0 0 0
$definebone "l_ring2" "l_ring1" 2.714029 0 0 -0.000002 34.094365 0.000003 0 0 0 0 0 0
$definebone "l_index1" "l_hand" 6.254662 -0.480556 -2.68502 7.166155 17.354951 -176.872639 0 0 0 0 0 0
$definebone "l_index2" "l_index1" 3.444931 0 -0.000001 0.000009 -57.766748 0.000005 0 0 0 0 0 0
$definebone "r_thigh" "pelvis" 0 0 -7.27937 7.312374 151.061463 -167.004587 0 0 0 0 0 0
$definebone "r_calf" "r_thigh" 22.497402 0 0 0 -60.940935 0 0 0 0 0 0 0
$definebone "r_foot" "r_calf" 19.895798 0.000002 0 -0.015926 31.170569 0.804462 0 0 0 0 0 0
$definebone "r_toe" "r_foot" 7.604141 9.58783 0 0 90.000207 0 0 0 0 0 0 0
$definebone "l_thigh" "pelvis" 0 0 7.27937 -7.312202 151.061463 167.004587 0 0 0 0 0 0
$definebone "l_calf" "l_thigh" 22.497398 0 0 0 -60.940935 -0.000001 0 0 0 0 0 0
$definebone "l_foot" "l_calf" 19.895802 0 0 0.015919 31.170562 -0.804491 0 0 0 0 0 0
$definebone "l_toe" "l_foot" 7.604141 9.58782 0 0 90.000214 0 0 0 0 0 0 0
$definebone "flap_rear" "pelvis" -4.23071 -7.35304 0 0 179.999855 -179.999855 0 0 0 0 0 0
$definebone "flap_front" "pelvis" -4.09954 12.3822 0 0 179.999855 -179.999855 0 0 0 0 0 0


$sequence "idle" {
	"brute_anims\idle.smd"
	activity "ACT_IDLE" -1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "berserk" {
	"brute_anims\berserk.smd"
	activity "ACT_STAND" -1
	fadein 0.2
	fadeout 0.2
	fps 30
}
