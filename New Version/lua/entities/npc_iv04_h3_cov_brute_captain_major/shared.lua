AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Captain Major"

ENT.AITemplate = "BRUTE"

ENT.StartHealth = 110

ENT.MaxShield = 125

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 4

ENT.IsCaptain = true

ENT.PossibleWeapons = {
	"astw2_halo3_bruteshot",
	"astw2_halo3_plasmarifle_brute",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_spiker",
	"astw2_halo3_fuelrod"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_captain_major", {
	Name = "Brute Captain Major",
	Class = "npc_iv04_h3_cov_brute_captain_major",
	Category = "Halo 3"
} )
