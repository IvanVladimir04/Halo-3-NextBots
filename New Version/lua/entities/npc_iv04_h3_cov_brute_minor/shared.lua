AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Minor"

ENT.StartHealth = 50

ENT.MaxShield = 55

ENT.AITemplate = "BRUTE"

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 1

ENT.PossibleWeapons = {
	"astw2_halo3_spiker",
	--"astw2_halo3_plasmarifle_brute",
	--"astw2_halo3_plasmarifle",
	"astw2_halo3_spiker"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_minor", {
	Name = "Brute Minor",
	Class = "npc_iv04_h3_cov_brute_minor",
	Category = "Halo 3"
} )
