AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Grunt Heavy"

ENT.StartHealth = 50

ENT.MaxShield = 55

ENT.AITemplate = "GRUNT"

ENT.Models = {"models/halo_3/characters/covenant/grunt.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 3

ENT.PossibleWeapons = {
	"astw2_halo3_fuelrod"
}

list.Set( "NPC", "npc_iv04_h3_cov_grunt_heavy", {
	Name = "Grunt Heavy",
	Class = "npc_iv04_h3_cov_grunt_heavy",
	Category = "Halo 3"
} )
