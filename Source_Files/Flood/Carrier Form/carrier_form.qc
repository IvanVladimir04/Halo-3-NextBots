// Created by Crowbar 0.68

$modelname "halo_3/characters/flood/carrier_form.mdl"

$scale	1.065
$origin 	0 0 0 -90
$surfaceprop "alienflesh"

$cdmaterials "\models\halo_3\characters\flood\carrier_form\"

$BodyGroup "Main"
{
	studio "carrier.smd"
}



$poseparameter "move_yaw" -180 180 loop 360
$PoseParameter "aim_yaw" -45 45 0
$PoseParameter "aim_pitch" -90 90 0


//REFERENCE

$animation "ref" "flood_carrier_animations\REFERENCE.smd" {
	fps 30
}


//MOVE ANIMATIONS

$animation "any_move_1_N" "flood_carrier_animations\combat_unarmed_move_front_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_2_N" "flood_carrier_animations\combat_unarmed_move_front_var2.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_3_N" "flood_carrier_animations\combat_unarmed_move_front_var3.smd" {
	fps 30
	walkframe 140 LX LY
}
$animation "patrol_unarmed_move_N" "flood_carrier_animations\patrol_unarmed_move_front.smd" {
	fps 30
	walkframe 140 LX LY
}



//FLINCH ANIMATIONS


$animation "flinch_gut1" "flood_carrier_animations\h_ping_front_gut_var1.smd" {
	fps 30
}

$animation "flinch_gut2" "flood_carrier_animations\h_ping_front_gut_var2.smd" {
	fps 30
}

$animation "flinch_gut3" "flood_carrier_animations\h_ping_front_gut_var3.smd" {
	fps 30
}
$animation "flinch_head1" "flood_carrier_animations\h_ping_front_head_var1.smd" {
	fps 30
}

$animation "flinch_head2" "flood_carrier_animations\h_ping_front_head_var2.smd" {
	fps 30
}

$animation "flinch_head3" "flood_carrier_animations\h_ping_front_head_var3.smd" {
	fps 30
}

//MISC ANIMATIONS

$animation "combat_overlay_pose" "flood_carrier_animations\combat_constant_overlay.smd" {
	fps 30
	frame 150 150
	loop
}
$animation "combat_overlay" "flood_carrier_animations\combat_constant_overlay.smd" {
	fps 30
	subtract	"combat_overlay_pose"	0
}

//PING ANIMATIONS


$animation "ping_gut1_pose" "flood_carrier_animations\s_ping_front_gut_var1.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_gut1" "flood_carrier_animations\s_ping_front_gut_var1.smd" {
	fps 30
	subtract	"ping_gut1_pose"	0
}
$animation "ping_gut2_pose" "flood_carrier_animations\s_ping_front_gut_var2.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_gut2" "flood_carrier_animations\s_ping_front_gut_var2.smd" {
	fps 30
	subtract	"ping_gut2_pose"	0
}
$animation "ping_gut3_pose" "flood_carrier_animations\s_ping_front_gut_var2.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_gut3" "flood_carrier_animations\s_ping_front_gut_var3.smd" {
	fps 30
	subtract	"ping_gut3_pose"	0
}
$animation "ping_head1_pose" "flood_carrier_animations\s_ping_front_head_var1.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_head1" "flood_carrier_animations\s_ping_front_head_var1.smd" {
	fps 30
	subtract	"ping_head1_pose"	0
}
$animation "ping_head2_pose" "flood_carrier_animations\s_ping_front_head_var2.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_head2" "flood_carrier_animations\s_ping_front_head_var2.smd" {
	fps 30
	subtract	"ping_head2_pose"	0
}
$animation "ping_head3_pose" "flood_carrier_animations\s_ping_front_head_var3.smd" {
	fps 30
	frame 8 8
	loop
}
$animation "ping_head3" "flood_carrier_animations\s_ping_front_head_var3.smd" {
	fps 30
	subtract	"ping_head3_pose"	0
}

//AIMLAYER ANIMATIONS
$animation "aim_combat_unarmed_still_up_neutral" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	frame 0 1
	fps 30
}

$animation "aim_combat_unarmed_still_up_down_left" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30
	frame 4 4
	subtract "aim_combat_unarmed_still_up_neutral" 0
}

$animation "aim_combat_unarmed_still_up_down_center" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30

	frame 3 3
	subtract "aim_combat_unarmed_still_up_neutral" 0
}

$animation "aim_combat_unarmed_still_up_down_right" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30
	frame 2 2
	subtract "aim_combat_unarmed_still_up_neutral" 0
}

$animation "aim_combat_unarmed_still_up_mid_left" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30
	frame 7 7
	subtract "aim_combat_unarmed_still_up_neutral" 0
}

$animation "aim_combat_unarmed_still_up_mid_center" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30
	frame 6 6
	subtract "aim_combat_unarmed_still_up_neutral" 0
}

$animation "aim_combat_unarmed_still_up_mid_right" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30
	frame 5 5
	subtract "aim_combat_unarmed_still_up_neutral" 0
}

$animation "aim_combat_unarmed_still_up_up_left" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30
	frame 10 10
	subtract "aim_combat_unarmed_still_up_neutral" 0
}

$animation "aim_combat_unarmed_still_up_up_center" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30
	frame 9 9
	subtract "aim_combat_unarmed_still_up_neutral" 0
}

$animation "aim_combat_unarmed_still_up_up_right" "flood_carrier_animations\combat_unarmed_aim_still_up.smd" {
	fps 30
	frame 8 8
	subtract "aim_combat_unarmed_still_up_neutral" 0
}


$sequence "aim_combat_unarmed_still_up" {
	"aim_combat_unarmed_still_up_up_right" "aim_combat_unarmed_still_up_up_center"  "aim_combat_unarmed_still_up_up_left"
	"aim_combat_unarmed_still_up_mid_right" "aim_combat_unarmed_still_up_mid_center"  "aim_combat_unarmed_still_up_mid_left"
	"aim_combat_unarmed_still_up_down_right" "aim_combat_unarmed_still_up_down_center" "aim_combat_unarmed_still_up_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 90
	blendwidth 3
	delta
	fadein 0.3
	fadeout 0.3
	hidden
}



$sequence "Combat_Fidget_Layer" {
	"combat_overlay"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	delta
	hidden
}

$sequence "Idle_1" {
	"flood_carrier_animations\combat_unarmed_idle.smd"
	activity "ACT_IDLE" 1
	addlayer	"Combat_Fidget_Layer"
	addlayer	"aim_combat_unarmed_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_2" {
	"flood_carrier_animations\combat_unarmed_idle_var2.smd"
	activity "ACT_IDLE" 1
	addlayer	"Combat_Fidget_Layer"
	addlayer	"aim_combat_unarmed_still_up"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "die_front_gut" {
	"flood_carrier_animations\h_kill_back_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_back_head_1" {
	"flood_carrier_animations\h_kill_front_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_back_head_2" {
	"flood_carrier_animations\s_kill_front_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_front_head_1" {
	"flood_carrier_animations\h_kill_front_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_front_head_2" {
	"flood_carrier_animations\s_kill_front_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_left_head_1" {
	"flood_carrier_animations\h_kill_left_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_left_head_2" {
	"flood_carrier_animations\s_kill_left_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_right_head_1" {
	"flood_carrier_animations\h_kill_right_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_right_head_2" {
	"flood_carrier_animations\s_kill_right_head.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}


$sequence "flinch_front_gut_1" {
	"flinch_gut1"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 165 LX LY
}

$sequence "flinch_front_gut_2" {
	"flinch_gut2"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 41 LX LY
}


$sequence "flinch_front_gut_3" {
	"flinch_gut3"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 19 LX LY
}

$sequence "flinch_front_head1" {
	"flinch_head1"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 39 LX LY
}

$sequence "flinch_front_head2" {
	"flinch_head2"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 49 LX LY
}

$sequence "flinch_front_head3" {
	"flinch_head3"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 165 LX LY
}

$sequence "airborne" {
	"flood_carrier_animations\combat_unarmed_airborne.smd"
	activity "ACT_GLIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}


$sequence "land_hard" {
	"flood_carrier_animations\combat_unarmed_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "land_soft" {
	"flood_carrier_animations\combat_unarmed_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "combat_unarmed_idle_2_combat_move_front" {
	"flood_carrier_animations\combat_unarmed_idle_2_combat_move_front.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "combat_unarmed_move_front_2_combat_idle" {
	"flood_carrier_animations\combat_unarmed_move_front_2_combat_idle.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "melee_suicide" {
	"flood_carrier_animations\combat_unarmed_melee_suicide.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 27 "event_halo_3_carrier_melee" }
}

$sequence "melee" {
	"flood_carrier_animations\combat_unarmed_melee.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 31 "event_halo_3_carrier_melee" }
}


$sequence "move_1_any" {
	"any_move_1_N"
	activity "ACT_RUN" 1
	addlayer	"aim_combat_unarmed_still_up"
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_carrier.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_carrier.Step" }
	walkframe 145 LX LY
}

$sequence "move_2_any" {
	"any_move_2_N"
	activity "ACT_RUN" 1
	addlayer	"aim_combat_unarmed_still_up"
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_carrier.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_carrier.Step" }
	walkframe 145 LX LY
}

$sequence "move_3_any" {
	"any_move_3_N"
	activity "ACT_RUN" 1
	addlayer	"aim_combat_unarmed_still_up"
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_carrier.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_carrier.Step" }
	walkframe 145 LX LY
}

$sequence "move_patrol" {
	"patrol_unarmed_move_N"
	activity "ACT_RUN" 1
	addlayer	"aim_combat_unarmed_still_up"
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_carrier.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_carrier.Step" }
	walkframe 145 LX LY
}

$scale	0.9
// .qc block generated by HLMV begins.

$surfaceprop "alienflesh"


$hboxset "default"

//$hbox 0 "rootxyz"	    -4.38   -6.11   -2.96     9.07    4.98    5.94
$hbox 6 "l_thigh"	    -5.95   -3.31  -18.35     5.22    5.47    4.40
$hbox 6 "l_calf"	    -3.87   -3.05  -14.10     4.43    4.82    4.44
$hbox 6 "l_foot"	    -3.36   -2.11   -6.39     3.14    3.82    0.79
$hbox 7 "r_thigh"	    -5.95   -5.42  -18.35     5.22    3.36    4.40
$hbox 7 "r_calf"	    -3.87   -4.76  -14.10     4.43    3.10    4.44
$hbox 7 "r_foot"	    -3.36   -3.77   -6.39     3.14    2.17    0.79
$hbox 2 "spine"	   -18.65  -14.04   -1.87     8.73   10.42    8.91
$hbox 2 "spine1"	   -23.61  -22.10  -19.06    11.00   20.16   26.32
$hbox 1 "sack_root"	   -24.02  -22.10   -0.06    19.39   20.16   31.47
$hbox 1 "l_sack"	   -11.88   -3.88   -8.71    14.45    6.30    9.69
$hbox 1 "r_sack"	   -13.25   -5.13  -10.64     3.00    2.07    4.84
$hbox 1 "sack"	   -19.15  -12.88  -10.77     9.82    9.85    8.18
$hbox 4 "l_shoulder"	    -5.69    0.00   -7.37     5.03   10.35    3.87
$hbox 4 "l_upperarm"	    -2.60    0.00   -6.55     3.62   21.68    1.79
$hbox 4 "l_forearm"	    -2.90   -2.29   -3.69     2.84   24.43    1.79
$hbox 4 "l_hand"	    -2.90   -3.18   -3.01     2.26   13.27    1.47
$hbox 5 "r_shoulder"	    -7.39  -15.48   -6.61     6.97    0.00    4.96
$hbox 5 "r_upperarm"	    -4.53  -21.76   -5.11     4.82    1.19    3.80
$hbox 5 "r_forearm"	    -4.18  -17.26   -2.16     1.53    9.45    3.23
$hbox 5 "r_hand"	    -4.02  -11.76   -1.89     1.18    6.28    3.11

// .qc block generated by HLMV ends.

