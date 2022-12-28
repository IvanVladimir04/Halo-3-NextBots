AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Jackal"

ENT.StartHealth = 50

ENT.MaxShield = 55

ENT.AITemplate = "JACKAL"

ENT.Models = {"models/halo_3/characters/covenant/jackal.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 3

ENT.IsSniper = true

ENT.PossibleWeapons = {
	"astw2_halo3_carbine",
	"astw2_halo3_carbine",
	"astw2_halo3_beamrifle"
}

list.Set( "NPC", "npc_iv04_h3_cov_jackal_sniper", {
	Name = "Jackal Sniper",
	Class = "npc_iv04_h3_cov_jackal_sniper",
	Category = "Halo 3"
} )
