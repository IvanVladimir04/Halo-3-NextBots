game.AddParticles( "particles/iv04_h3_blood.pcf" )
game.AddParticles( "particles/iv04_h3_shield_effects.pcf" )
game.AddParticles( "particles/iv04_h3_projectile_fx.pcf" )
game.AddParticles( "particles/iv04_h3_beam_fx.pcf" )
game.AddParticles( "particles/iv04_h3_covenant_explosions.pcf" )
game.AddParticles( "particles/iv04_h3_explosions.pcf" )
game.AddParticles( "particles/iv04_h3_forerunner_explosions.pcf" )
game.AddParticles( "particles/iv04_h3_covenant_vehicle_explosions.pcf" )
game.AddParticles( "particles/iv04_h3_thruster_fx.pcf" )


--Thruster Effects
PrecacheParticleSystem( "iv04_halo_3_brute_jumppack_fx" )
PrecacheParticleSystem( "iv04_halo_3_pelican_thruster_fx" )

--Shield Effects
PrecacheParticleSystem( "iv04_halo_3_brute_shield_critical" )

--Shield Deplete Effects
PrecacheParticleSystem( "iv04_halo_3_jackal_shield_deplete" )
PrecacheParticleSystem( "iv04_halo_3_jackal_shield_deplete_major" )
PrecacheParticleSystem( "iv04_halo_3_brute_shield_deplete" )
PrecacheParticleSystem( "iv04_halo_3_elite_shield_deplete" )
PrecacheParticleSystem( "iv04_halo_3_elite_shield_deplete_arcs" )
PrecacheParticleSystem( "iv04_halo_3_spartan_shield_deplete" )
PrecacheParticleSystem( "iv04_halo_3_spartan_shield_deplete_arcs" )

--Shield Impact Effects
PrecacheParticleSystem( "iv04_halo_3_brute_shield_impact_effect" )
PrecacheParticleSystem( "iv04_halo_3_elite_shield_impact_effect" )
PrecacheParticleSystem( "iv04_halo_3_spartan_shield_impact_effect" )
PrecacheParticleSystem( "iv04_halo_3_jackal_shield_impact_effect" )

--Shield Recharge Effects
PrecacheParticleSystem( "iv04_halo_3_spartan_shield_recharge" )
PrecacheParticleSystem( "iv04_halo_3_elite_shield_recharge" )


--Blood Effects

PrecacheParticleSystem( "iv04_halo_3_blood_impact_human" )
PrecacheParticleSystem( "iv04_halo_3_blood_impact_elite" )
PrecacheParticleSystem( "iv04_halo_3_blood_impact_grunt" )
PrecacheParticleSystem( "iv04_halo_3_blood_impact_jackal" )
PrecacheParticleSystem( "iv04_halo_3_blood_impact_drone" )
PrecacheParticleSystem( "iv04_halo_3_blood_impact_brute" )
PrecacheParticleSystem( "iv04_halo_3_blood_impact_hunter" )

--Gib effects
PrecacheParticleSystem( "iv04_halo_3_flood_carrier_explode" )
PrecacheParticleSystem( "iv04_halo_3_flood_gib_medium" )
PrecacheParticleSystem( "iv04_halo_3_flood_gib_small" )

--Explosion Effects
PrecacheParticleSystem( "iv04_halo_3_monitor_damage_lvl1_fire" )
PrecacheParticleSystem( "iv04_halo_3_monitor_damage_lvl2_fire" )
PrecacheParticleSystem( "iv04_halo_3_sentinel_death_explosion" )
PrecacheParticleSystem( "iv04_halo_3_explosion_engineer" )
PrecacheParticleSystem( "iv04_halo_3_phantom_explosion" )
PrecacheParticleSystem( "iv04_halo_3_scarab_explosion" )
PrecacheParticleSystem( "iv04_halo_3_explosion_large" )

--Misc Effects
PrecacheParticleSystem( "iv04_halo_3_monitor_idle_rings" )
PrecacheParticleSystem( "iv04_halo_3_monitor_idle_rings_red" )
PrecacheParticleSystem( "iv04_halo_3_monitor_push_fx" )
PrecacheParticleSystem( "iv04_halo_3_grunt_methane_fx" )

--Beam Effect
PrecacheParticleSystem( "iv04_halo_3_laser_beam_red" )
PrecacheParticleSystem( "iv04_halo_3_laser_beam_blue" )
PrecacheParticleSystem( "iv04_halo_3_laser_beam_monitor" )


game.AddDecal( "iv04_halo_3_blood_splat_hunter", "effects/halo3/decals/blood_hunter" ) 
game.AddDecal( "iv04_halo_3_blood_splat_human", "effects/halo3/decals/blood_human" ) 
game.AddDecal( "iv04_halo_3_blood_splat_elite", "effects/halo3/decals/blood_elite" ) 
game.AddDecal( "iv04_halo_3_blood_splat_jackal", "effects/halo3/decals/blood_jackal" ) 
game.AddDecal( "iv04_halo_3_blood_splat_grunt", "effects/halo3/decals/blood_grunt" ) 
game.AddDecal( "iv04_halo_3_blood_splat_brute", "effects/halo3/decals/blood_brute" ) 
game.AddDecal( "iv04_halo_3_blood_splat_drone", "effects/halo3/decals/blood_drone" ) 
game.AddDecal( "iv04_halo_3_blood_splat_engineer", "effects/halo3/decals/blood_engineer" ) 
game.AddDecal( "iv04_halo_3_blood_splat_flood", "effects/halo3/decals/blood_flood" ) 

sound.Add(
{
    name = "iv04.h3_brute_jetpack_in",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
	pitch = { 100 },
    sound = {"halo_3/sfx/jetpack_in.wav"}
})

sound.Add(
{
    name = "iv04.h3_brute_jetpack_lp",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 90,
	pitch = { 100 },
    sound = {"halo_3/sfx/jetpack_loop.wav"}
})

sound.Add(
{
    name = "iv04.h3_brute_jetpack_out",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 100,
	pitch = { 100 },
    sound = {"halo_3/sfx/jetpack_out.wav"}
})

sound.Add(
{
    name = "iv04.h3_impact_veh_bip_generic",
    channel = CHAN_WEAPON,
    volume = 1.25,
    level = 120,
	pitch = { 100 },
    sound = {"halo_3/sfx/veh_bip_hit_generic1.wav", "halo_3/sfx/veh_bip_hit_generic2.wav", "halo_3/sfx/veh_bip_hit_generic3.wav", "halo_3/sfx/veh_bip_hit_generic4.wav"}
})

sound.Add(
{
    name = "iv04.h3_impact_veh_bip_grunt",
    channel = CHAN_WEAPON,
    volume = 1.25,
    level = 120,
	pitch = { 100 },
    sound = {"halo_3/sfx/veh_hit_grunt1.wav", "halo_3/sfx/veh_hit_grunt2.wav", "halo_3/sfx/veh_hit_grunt3.wav", "halo_3/sfx/veh_hit_grunt4.wav", "halo_3/sfx/veh_hit_grunt5.wav"}
})

sound.Add(
{
    name = "iv04.h3_foley_step_marine",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {"halo_3/sfx/foley/marine/shortmove1.wav",
				"halo_3/sfx/foley/marine/shortmove2.wav",
				"halo_3/sfx/foley/marine/shortmove3.wav",
				"halo_3/sfx/foley/marine/shortmove4.wav",
				"halo_3/sfx/foley/marine/shortmove5.wav",
				"halo_3/sfx/foley/marine/shortmove6.wav",
				"halo_3/sfx/foley/marine/shortmove7.wav",
				"halo_3/sfx/foley/marine/shortmove8.wav",
				"halo_3/sfx/foley/marine/shortmove9.wav",
				"halo_3/sfx/foley/marine/shortmove10.wav",
				"halo_3/sfx/foley/marine/shortmove11.wav",
				"halo_3/sfx/foley/marine/shortmove12.wav",
				"halo_3/sfx/foley/marine/shortmove13.wav",
				"halo_3/sfx/foley/marine/shortmove14.wav",
				"halo_3/sfx/foley/marine/shortmove15.wav",
				"halo_3/sfx/foley/marine/shortmove16.wav",
				"halo_3/sfx/foley/marine/shortmove17.wav",
				"halo_3/sfx/foley/marine/shortmove18.wav",
				"halo_3/sfx/foley/marine/shortmove19.wav",
				"halo_3/sfx/foley/marine/shortmove20.wav",
				"halo_3/sfx/foley/marine/shortmove22.wav",
				"halo_3/sfx/foley/marine/shortmove23.wav",
				"halo_3/sfx/foley/marine/shortmove24.wav",
				"halo_3/sfx/foley/marine/shortmove25.wav",
				"halo_3/sfx/foley/marine/shortmove26.wav",
				"halo_3/sfx/foley/marine/shortmove27.wav",
				"halo_3/sfx/foley/marine/shortmove28.wav",
				"halo_3/sfx/foley/marine/shortmove29.wav",
				"halo_3/sfx/foley/marine/shortmove30.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_step_spartan",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {"halo_3/sfx/foley/mc/footsteps/concrete_run1.wav",
				"halo_3/sfx/foley/mc/footsteps/concrete_run2.wav",
				"halo_3/sfx/foley/mc/footsteps/concrete_run3.wav",
				"halo_3/sfx/foley/mc/footsteps/concrete_run4.wav",
				"halo_3/sfx/foley/mc/footsteps/concrete_run5.wav",
				"halo_3/sfx/foley/mc/footsteps/concrete_run6.wav",
				"halo_3/sfx/foley/mc/footsteps/concrete_run7.wav",
				"halo_3/sfx/foley/mc/footsteps/concrete_run8.wav",
				"halo_3/sfx/foley/mc/footsteps/concrete_run9.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_step_brute",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/brute/foosteps/grtcem_run1.wav",
				"halo_3/sfx/foley/brute/foosteps/grtcem_run2.wav",
				"halo_3/sfx/foley/brute/footsteps/grtcem_run3.wav",
				"halo_3/sfx/foley/brute/footsteps/grtcem_run4.wav",
				"halo_3/sfx/foley/brute/footsteps/grtcem_run6.wav",
				"halo_3/sfx/foley/brute/footsteps/grtcem_run8.wav",
				"halo_3/sfx/foley/brute/footsteps/grtcem_run21.wav",
				"halo_3/sfx/foley/brute/footsteps/grtcem_run23.wav",
				"halo_3/sfx/foley/brute/footsteps/grtcem_run24.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_step_elite",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/elite/footsteps/stone_run1.wav",
				"halo_3/sfx/foley/elite/footsteps/stone_run2.wav",
				"halo_3/sfx/foley/elite/footsteps/stone_run3.wav",
				"halo_3/sfx/foley/elite/footsteps/stone_run4.wav",
				"halo_3/sfx/foley/elite/footsteps/stone_run5.wav",
				"halo_3/sfx/foley/elite/footsteps/stone_run6.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_step_hunter",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 90,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/hunter/move1.wav",
				"halo_3/sfx/foley/hunter/move2.wav",
				"halo_3/sfx/foley/hunter/move3.wav",
				"halo_3/sfx/foley/hunter/move4.wav",
				"halo_3/sfx/foley/hunter/move5.wav",
				"halo_3/sfx/foley/hunter/move6.wav",
				"halo_3/sfx/foley/hunter/move7.wav",
				"halo_3/sfx/foley/hunter/move8.wav",
				"halo_3/sfx/foley/hunter/move9.wav",
				"halo_3/sfx/foley/hunter/move10.wav",
				"halo_3/sfx/foley/hunter/move11.wav",
				"halo_3/sfx/foley/hunter/move12.wav",
				"halo_3/sfx/foley/hunter/move13.wav",
				"halo_3/sfx/foley/hunter/move14.wav",
				"halo_3/sfx/foley/hunter/move15.wav",
				"halo_3/sfx/foley/hunter/move16.wav",
				"halo_3/sfx/foley/hunter/move17.wav",
				"halo_3/sfx/foley/hunter/move18.wav",
				"halo_3/sfx/foley/hunter/move19.wav",
				"halo_3/sfx/foley/hunter/move20.wav",
				"halo_3/sfx/foley/hunter/move21.wav",
				"halo_3/sfx/foley/hunter/move22.wav",
				"halo_3/sfx/foley/hunter/move23.wav",
				"halo_3/sfx/foley/hunter/move24.wav",
				"halo_3/sfx/foley/hunter/move25.wav",
				"halo_3/sfx/foley/hunter/move26.wav",
				"halo_3/sfx/foley/hunter/move27.wav",
				"halo_3/sfx/foley/hunter/move28.wav",
				"halo_3/sfx/foley/hunter/move29.wav",
				"halo_3/sfx/foley/hunter/move30.wav",
				"halo_3/sfx/foley/hunter/move31.wav"	}
})

sound.Add(
{
    name = "iv04.h3_foley_step_grunt",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/grunt/footsteps/walk1.wav",
				"halo_3/sfx/foley/grunt/footsteps/walk2.wav",
				"halo_3/sfx/foley/grunt/footsteps/walk3.wav",
				"halo_3/sfx/foley/grunt/footsteps/walk4.wav",
				"halo_3/sfx/foley/grunt/footsteps/walk5.wav",
				"halo_3/sfx/foley/grunt/footsteps/walk6.wav"	}
})

sound.Add(
{
    name = "iv04.h3_foley_step_drone",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/drone/long_move1.wav",
				"halo_3/sfx/foley/drone/long_move2.wav",
				"halo_3/sfx/foley/drone/long_move3.wav",
				"halo_3/sfx/foley/drone/long_move4.wav",
				"halo_3/sfx/foley/drone/long_move5.wav",
				"halo_3/sfx/foley/drone/long_move6.wav",
				"halo_3/sfx/foley/drone/long_move7.wav",
				"halo_3/sfx/foley/drone/long_move8.wav",
				"halo_3/sfx/foley/drone/long_move9.wav",
				"halo_3/sfx/foley/drone/long_move10.wav",
				"halo_3/sfx/foley/drone/long_move11.wav",
				"halo_3/sfx/foley/drone/long_move12.wav",
				"halo_3/sfx/foley/drone/long_move13.wav",
				"halo_3/sfx/foley/drone/long_move14.wav",
				"halo_3/sfx/foley/drone/long_move15.wav",
				"halo_3/sfx/foley/drone/long_move16.wav",
				"halo_3/sfx/foley/drone/long_move17.wav",
				"halo_3/sfx/foley/drone/long_move18.wav"	}
})

sound.Add(
{
    name = "iv04.h3_foley_stick_drone",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 100,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/drone/stick1.wav",
				"halo_3/sfx/foley/drone/stick2.wav",
				"halo_3/sfx/foley/drone/stick3.wav",
				"halo_3/sfx/foley/drone/stick5.wav"	}
})

sound.Add(
{
    name = "iv04.h3_foley_flying_drone",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 100,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/drone/flying1.wav",
				"halo_3/sfx/foley/drone/flying2.wav",
				"halo_3/sfx/foley/drone/flying3.wav",
				"halo_3/sfx/foley/drone/flying4.wav",
				"halo_3/sfx/foley/drone/flying5.wav",
				"halo_3/sfx/foley/drone/flying6.wav",
				"halo_3/sfx/foley/drone/flying7.wav",
				"halo_3/sfx/foley/drone/flying8.wav",
				"halo_3/sfx/foley/drone/flying9.wav",
				"halo_3/sfx/foley/drone/flying10.wav",
				"halo_3/sfx/foley/drone/flying11.wav",
				"halo_3/sfx/foley/drone/flying12.wav",
				"halo_3/sfx/foley/drone/flying13.wav",
				"halo_3/sfx/foley/drone/flying14.wav",
				"halo_3/sfx/foley/drone/flying15.wav",
				"halo_3/sfx/foley/drone/flying16.wav",
				"halo_3/sfx/foley/drone/flying17.wav"	}
})

sound.Add(
{
    name = "iv04.h3_foley_step_jackal",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/jackal/shortmove1.wav",
				"halo_3/sfx/foley/jackal/shortmove2.wav",
				"halo_3/sfx/foley/jackal/shortmove3.wav",
				"halo_3/sfx/foley/jackal/shortmove4.wav",
				"halo_3/sfx/foley/jackal/shortmove5.wav",
				"halo_3/sfx/foley/jackal/shortmove6.wav",
				"halo_3/sfx/foley/jackal/shortmove7.wav",
				"halo_3/sfx/foley/jackal/shortmove8.wav",
				"halo_3/sfx/foley/jackal/shortmove9.wav"	 }
})

sound.Add(
{
    name = "iv04.h3_foley_step_flood_brute",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove1.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove2.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove3.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove4.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove5.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove6.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove7.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove8.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove9.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove10.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove11.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove12.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove13.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove14.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove15.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove16.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove17.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove18.wav",
				"halo_3/sfx/foley/flood/combat_brute/brutecombatform_shortmove19.wav" }
})
				
sound.Add(
{
    name = "iv04.h3_foley_step_flood_elite",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/flood/combat_elite/shortmove1.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove2.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove3.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove4.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove5.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove6.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove7.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove8.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove9.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove10.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove11.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove12.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove13.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove14.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove15.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove16.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove17.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove18.wav",
				"halo_3/sfx/foley/flood/combat_elite/shortmove19.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_step_flood_human",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/foley/flood/combat_human/humanform_shortmove1.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove2.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove3.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove4.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove5.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove6.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove7.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove8.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove9.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove10.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove11.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove12.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove13.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove14.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove15.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove16.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove17.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove18.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove19.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove20.wav",
				"halo_3/sfx/foley/flood/combat_human/humanform_shortmove21.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_bodyfall_generic",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 85,
	pitch = { 100 },
    sound = {	"halo_3/sfx/bodyfalls/generic1.wav",
				"halo_3/sfx/bodyfalls/generic2.wav",
				"halo_3/sfx/bodyfalls/generic3.wav",
				"halo_3/sfx/bodyfalls/generic4.wav",
				"halo_3/sfx/bodyfalls/generic5.wav",
				"halo_3/sfx/bodyfalls/generic6.wav",
				"halo_3/sfx/bodyfalls/generic7.wav",
				"halo_3/sfx/bodyfalls/generic8.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_bodyfall_grunt",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/bodyfalls/grunt_fall1.wav",
				"halo_3/sfx/bodyfalls/grunt_fall2.wav",
				"halo_3/sfx/bodyfalls/grunt_fall3.wav",
				"halo_3/sfx/bodyfalls/grunt_fall4.wav",
				"halo_3/sfx/bodyfalls/grunt_fall5.wav",
				"halo_3/sfx/bodyfalls/grunt_fall6.wav",
				"halo_3/sfx/bodyfalls/grunt_fall7.wav",
				"halo_3/sfx/bodyfalls/grunt_fall8.wav",
				"halo_3/sfx/bodyfalls/grunt_fall9.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_bodyfall_hunter",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 100,
	pitch = { 100 },
    sound = {	"halo_3/sfx/bodyfalls/hunter_fall1.wav",
				"halo_3/sfx/bodyfalls/hunter_fall2.wav",
				"halo_3/sfx/bodyfalls/hunter_fall3.wav",
				"halo_3/sfx/bodyfalls/hunter_fall4.wav",
				"halo_3/sfx/bodyfalls/hunter_fall5.wav",
				"halo_3/sfx/bodyfalls/hunter_fall6.wav",
				"halo_3/sfx/bodyfalls/hunter_fall7.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_bodyfall_jackal",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/bodyfalls/jackal_fall1.wav",
				"halo_3/sfx/bodyfalls/jackal_fall2.wav",
				"halo_3/sfx/bodyfalls/jackal_fall3.wav",
				"halo_3/sfx/bodyfalls/jackal_fall4.wav",
				"halo_3/sfx/bodyfalls/jackal_fall5.wav",
				"halo_3/sfx/bodyfalls/jackal_fall6.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_bodyfall_brute",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 85,
	pitch = { 100 },
    sound = {	"halo_3/sfx/bodyfalls/brute_fall1.wav",
				"halo_3/sfx/bodyfalls/brute_fall2.wav",
				"halo_3/sfx/bodyfalls/brute_fall3.wav",
				"halo_3/sfx/bodyfalls/brute_fall4.wav",
				"halo_3/sfx/bodyfalls/brute_fall5.wav",
				"halo_3/sfx/bodyfalls/brute_fall6.wav",
				"halo_3/sfx/bodyfalls/brute_fall7.wav",
				"halo_3/sfx/bodyfalls/brute_fall8.wav",
				"halo_3/sfx/bodyfalls/brute_fall9.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_bodyfall_drone",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/bodyfalls/bugger_fall1.wav",
				"halo_3/sfx/bodyfalls/bugger_fall2.wav",
				"halo_3/sfx/bodyfalls/bugger_fall3.wav",
				"halo_3/sfx/bodyfalls/bugger_fall4.wav",
				"halo_3/sfx/bodyfalls/bugger_fall5.wav",
				"halo_3/sfx/bodyfalls/bugger_fall6.wav",
				"halo_3/sfx/bodyfalls/bugger_fall7.wav" }
})

sound.Add(
{
    name = "iv04.h3_foley_bodyfall_flood_combat",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 75,
	pitch = { 100 },
    sound = {	"halo_3/sfx/bodyfalls/floodcombat_elite_bodyfall1.wav",
				"halo_3/sfx/bodyfalls/floodcombat_elite_bodyfall2.wav",
				"halo_3/sfx/bodyfalls/floodcombat_elite_bodyfall3.wav",
				"halo_3/sfx/bodyfalls/floodcombat_elite_bodyfall4.wav",
				"halo_3/sfx/bodyfalls/floodcombat_elite_bodyfall5.wav",
				"halo_3/sfx/bodyfalls/floodcombat_elite_bodyfall6.wav"	}
})

sound.Add(
{
    name = "iv04.h3_foley_bodyfall_flood_tank",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 100,
	pitch = { 100 },
    sound = {	"halo_3/sfx/bodyfalls/tankform_bodyfall1.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall2.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall3.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall4.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall5.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall6.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall7.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall8.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall9.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall10.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall11.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall12.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall13.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall14.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall15.wav",
				"halo_3/sfx/bodyfalls/tankform_bodyfall16.wav" }
})
