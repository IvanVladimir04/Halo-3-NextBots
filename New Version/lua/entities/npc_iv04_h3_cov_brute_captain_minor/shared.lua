AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Captain Minor"

ENT.AITemplate = "BRUTE"

ENT.StartHealth = 95

ENT.MaxShield = 110

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 1

ENT.IsCaptain = true

ENT.PossibleWeapons = {
	"astw2_halo3_bruteshot",
	--"astw2_halo3_plasmarifle_brute",
	--"astw2_halo3_plasmarifle",
	"astw2_halo3_spiker",
	"astw2_halo3_mauler",
	"astw2_halo3_fuelrod"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_captain_minor", {
	Name = "Brute Captain Minor",
	Class = "npc_iv04_h3_cov_brute_captain_minor",
	Category = "Halo 3"
} )
