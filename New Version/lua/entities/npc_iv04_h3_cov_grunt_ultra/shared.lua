AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Grunt Ultra"

ENT.StartHealth = 50

ENT.MaxShield = 55

ENT.AITemplate = "GRUNT"

ENT.Models = {"models/halo_3/characters/covenant/grunt.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 4

ENT.PossibleWeapons = {
	"astw2_halo3_plasmapistol",
	"astw2_halo3_needler",
	"astw2_halo3_plasmarifle"
}

list.Set( "NPC", "npc_iv04_h3_cov_grunt_ultra", {
	Name = "Grunt Ultra",
	Class = "npc_iv04_h3_cov_grunt_ultra",
	Category = "Halo 3"
} )
