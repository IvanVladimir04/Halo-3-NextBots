AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Guilty Spark"

ENT.AITemplate = "MONITOR"

ENT.Models = {"models/halo_3/characters/forerunner/monitor.mdl"}

ENT.VoiceType = "Guilty_Spark"

ENT.Faction = "FACTION_FORERUNNER"

--ENT.MonitorColor = Color(255,70,0)

--ENT.MonitorColor = Color(100,0,100)

ENT.ImmuneDMGs = {
		[DMG_GENERIC] = true,
		[DMG_CRUSH] = true,
		[DMG_BULLET] = true,
		[DMG_SLASH] = true,
		[DMG_BURN] = true,
		[DMG_VEHICLE] = true,
		[DMG_FALL] = true,
		[DMG_BLAST] = true,
		[DMG_CLUB] = true,
		[DMG_SHOCK] = true,
		[DMG_SONIC] = true,
		[DMG_ENERGYBEAM] = false,
		[DMG_PREVENT_PHYSICS_FORCE] = true,
		[DMG_NEVERGIB] = true,
		[DMG_ALWAYSGIB] = true,
		[DMG_DROWN] = true,
		[DMG_PARALYZE] = true,
		[DMG_NERVEGAS] = true,
		[DMG_POISON] = true,
		[DMG_RADIATION] = true,
		[DMG_DROWNRECOVER] = true,
		[DMG_ACID] = true,
		[DMG_SLOWBURN] = true,
		[DMG_REMOVENORAGDOLL] = true,
		[DMG_PHYSGUN] = true,
		[DMG_PLASMA] = true,
		[DMG_AIRBOAT] = true,
		[DMG_DISSOLVE] = true,
		[DMG_BLAST_SURFACE] = true,
		[DMG_DIRECT] = true,
		[DMG_BUCKSHOT] = true,
		[DMG_SNIPER] = true,
		[DMG_MISSILEDEFENSE] = true
}

list.Set( "NPC", "npc_iv04_h3_343_gs", {
	Name = "343 Guilty Spark",
	Class = "npc_iv04_h3_343_gs",
	Category = "Halo 3"
} )
