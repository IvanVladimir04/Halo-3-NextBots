// Created by Crowbar 0.68

$modelname "halo_3/characters/flood/infection_form.mdl"

$scale	1.065
$origin 	0 0 0 -90
$surfaceprop "alienflesh"

$cdmaterials "\models\halo_3\characters\flood\infection_form\"

$BodyGroup "Main"
{
	studio "flood_infection_form.smd"
}



$poseparameter "move_yaw" -180 180 loop 360


//$attachment "1" "right hand" 4.50 1.50 1.50 rotate -10.00 -890.00 0.00


// 1 gut, 2 chest, 3 left arm, 4 right hand, 5 left leg, 6 right leg, 7 head




//REFERENCE

$animation "ref" "flood_infection_animations\REFERENCE.smd" {
	fps 30
}


//MOVE ANIMATIONS
$origin 0 0 -10 -90
$animation "any_move_1_S" "flood_infection_animations\combat_unarmed_move_back_var0.smd" {
	fps 30
	walkframe 140 LX LY LZ
}

$animation "any_move_2_S" "flood_infection_animations\combat_unarmed_move_back_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_3_S" "flood_infection_animations\combat_unarmed_move_back_var2.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_4_S" "flood_infection_animations\combat_unarmed_move_back_var3.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_5_S" "flood_infection_animations\combat_unarmed_move_back_var4.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_6_S" "flood_infection_animations\combat_unarmed_move_back_var5.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_7_S" "flood_infection_animations\combat_unarmed_move_back_var6.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_8_S" "flood_infection_animations\combat_unarmed_move_back_var7.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_9_S" "flood_infection_animations\combat_unarmed_move_back_var8.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_10_S" "flood_infection_animations\combat_unarmed_move_back_var9.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_W" "flood_infection_animations\combat_unarmed_move_left_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_E" "flood_infection_animations\combat_unarmed_move_right_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_1_N" "flood_infection_animations\combat_unarmed_move_front_var0.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_2_N" "flood_infection_animations\combat_unarmed_move_front_var1.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_3_N" "flood_infection_animations\combat_unarmed_move_front_var2.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_4_N" "flood_infection_animations\combat_unarmed_move_front_var3.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_5_N" "flood_infection_animations\combat_unarmed_move_front_var4.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_6_N" "flood_infection_animations\combat_unarmed_move_front_var5.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_7_N" "flood_infection_animations\combat_unarmed_move_front_var6.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_8_N" "flood_infection_animations\combat_unarmed_move_front_var7.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_9_N" "flood_infection_animations\combat_unarmed_move_front_var8.smd" {
	fps 30
	walkframe 140 LX LY
}

$animation "any_move_10_N" "flood_infection_animations\combat_unarmed_move_front_var9.smd" {
	fps 30
	walkframe 140 LX LY
}

$origin 0 0 0 -90

$animation "flinch_gut1" "flood_infection_animations\h_ping_front_gut_var0.smd" {
	fps 30
}

$animation "flinch_gut2" "flood_infection_animations\h_ping_front_gut_var1.smd" {
	fps 30
}

$animation "flinch_gut3" "flood_infection_animations\h_ping_front_gut_var2.smd" {
	fps 30
}
$origin 0 0 -10 -90
$sequence "Idle_1" {
	"flood_infection_animations\combat_unarmed_idle_var0.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_2" {
	"flood_infection_animations\combat_unarmed_idle_var1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_3" {
	"flood_infection_animations\combat_unarmed_idle_var2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_4" {
	"flood_infection_animations\combat_unarmed_idle_var3.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_5" {
	"flood_infection_animations\combat_unarmed_idle_var4.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_6" {
	"flood_infection_animations\combat_unarmed_idle_var5.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "Idle_7" {
	"flood_infection_animations\combat_unarmed_idle_var6.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
$origin 0 0 0 -90
$sequence "die_front_gut_1" {
	"flood_infection_animations\h_kill_front_gut_var0.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_front_gut_2" {
	"flood_infection_animations\h_kill_front_gut_var1.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "die_front_gut_3" {
	"flood_infection_animations\h_kill_front_gut_var2.smd"
	activity "ACT_DIE_GUTSHOT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "flinch_back_chest" {
	"flinch_gut3"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 165 LX LY
}

$sequence "flinch_back_gut" {
	"flinch_gut1"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 41 LX LY
}

$sequence "flinch_front_chest" {
	"flinch_gut2"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 22 LX LY
}

$sequence "flinch_front_gut" {
	"flinch_gut3"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 19 LX LY
}

$sequence "flinch_front_right_leg" {
	"flinch_gut1"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 39 LX LY
}

$sequence "flinch_front_left_leg" {
	"flinch_gut2"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 49 LX LY
}

$sequence "flinch_front_left_arm" {
	"flinch_gut3"
	activity "ACT_SMALL_FLINCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30

	walkframe 165 LX LY
}

$sequence "airborne" {
	"flood_infection_animations\combat_unarmed_airborne.smd"
	activity "ACT_GLIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "leap_airborne" {
	"flood_infection_animations\combat_unarmed_leap_airborne.smd"
	activity "ACT_GLIDE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "land_hard" {
	"flood_infection_animations\combat_unarmed_land_hard.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "land_soft" {
	"flood_infection_animations\combat_unarmed_land_soft.smd"
	activity "ACT_LAND" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "infect_body" {
	"flood_infection_animations\combat_unarmed_infect_var0.smd"
	activity "ACT_COWER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence "melee_1" {
	"flood_infection_animations\combat_unarmed_melee_var0.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 27 "event_halo_3_infectionform_melee" }
}

$sequence "melee_2" {
	"flood_infection_animations\combat_unarmed_melee_var1.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 31 "event_halo_3_infectionform_melee" }
}

$sequence "melee_3" {
	"flood_infection_animations\combat_unarmed_melee_var2.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 61 LX LY LZR
	{ event 1100 12 "event_halo_3_infectionform_melee" }
	{ event 1100 31 "event_halo_3_infectionform_melee" }
}

$sequence "melee_continuous" {
	"flood_infection_animations\combat_unarmed_melee_continuous.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	walkframe 61 LX LY LZR
	{ event 1100 5 "event_halo_3_infectionform_melee" }
	{ event 1100 15 "event_halo_3_infectionform_melee" }
}


$sequence "move_1_any" {
	"any_move_1_S"
	"any_move_W"
	"any_move_1_N"
	"any_move_E"
	"any_move_1_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "move_2_any" {
	"any_move_2_S"
	"any_move_W"
	"any_move_2_N"
	"any_move_E"
	"any_move_2_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "move_3_any" {
	"any_move_3_S"
	"any_move_W"
	"any_move_3_N"
	"any_move_E"
	"any_move_3_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "move_4_any" {
	"any_move_4_S"
	"any_move_W"
	"any_move_4_N"
	"any_move_E"
	"any_move_4_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "move_5_any" {
	"any_move_5_S"
	"any_move_W"
	"any_move_5_N"
	"any_move_E"
	"any_move_5_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "move_6_any" {
	"any_move_6_S"
	"any_move_W"
	"any_move_6_N"
	"any_move_E"
	"any_move_6_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "move_7_any" {
	"any_move_7_S"
	"any_move_W"
	"any_move_7_N"
	"any_move_E"
	"any_move_7_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "move_8_any" {
	"any_move_8_S"
	"any_move_W"
	"any_move_8_N"
	"any_move_E"
	"any_move_8_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "move_9_any" {
	"any_move_9_S"
	"any_move_W"
	"any_move_9_N"
	"any_move_E"
	"any_move_9_S"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 5
	fadein 0.2
	fadeout 0.2
	node "move_any"
	fps 30
	loop
	{ event AE_CL_PLAYSOUND 2 "HALO3_infectionform.Step" }
	{ event AE_CL_PLAYSOUND 8 "HALO3_infectionform.Step" }
	walkframe 145 LX LY
}

$sequence "Flood_Wrestle" {
	"flood_infection_animations\any_any_any_infection_wrestle.smd"
	activity "ACT_ZOMBIE_CLIMB_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "Flood_Wrestle_Brute" {
	"flood_infection_animations\any_any_any_infection_wrestle_brute.smd"
	activity "ACT_ZOMBIE_CLIMB_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "Flood_Wrestle_Elite" {
	"flood_infection_animations\any_any_any_infection_wrestle_elite.smd"
	activity "ACT_ZOMBIE_CLIMB_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}

$sequence "Flood_Infection_Morph_Brute" {
	"flood_infection_animations\any_any_any_infection_morph_brute.smd"
	activity "ACT_GESTURE_BARNACLE_STRANGLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY
}


$sequence "Feeding_Loop" {
	"flood_infection_animations\combat_unarmed_feeding.smd"
	activity "ACT_HL2MP_ZOMBIE_SLUMP_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY LZ
}
$origin -10 0 -30 -90
$sequence "Infection_Eject" {
	"flood_infection_animations\combat_unarmed_eject_var0.smd"
	activity "ACT_GMOD_GESTURE_RANGE_ZOMBIE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 145 LX LY LZ
}

$origin 0 0 0 -90
$scale	1