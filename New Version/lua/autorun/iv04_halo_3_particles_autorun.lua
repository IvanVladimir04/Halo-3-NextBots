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