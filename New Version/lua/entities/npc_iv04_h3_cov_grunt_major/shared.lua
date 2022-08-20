AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Grunt Major"

ENT.StartHealth = 50

ENT.MaxShield = 55

ENT.AITemplate = "GRUNT"

ENT.Models = {"models/halo_3/characters/covenant/grunt.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 2

ENT.PossibleWeapons = {
	"astw2_halo3_plasmapistol",
	"astw2_halo3_needler"
}

list.Set( "NPC", "npc_iv04_h3_cov_grunt_major", {
	Name = "Grunt Major",
	Class = "npc_iv04_h3_cov_grunt_major",
	Category = "Halo 3"
} )
