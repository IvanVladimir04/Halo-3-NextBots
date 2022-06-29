AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Captain Ultra"

ENT.AITemplate = "BRUTE"

ENT.StartHealth = 130

ENT.MaxShield = 145

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 3

ENT.IsCaptain = true

ENT.PossibleWeapons = {
	"astw2_halo3_bruteshot",
	--"astw2_halo3_plasmarifle_brute",
	--"astw2_halo3_plasmarifle",
	"astw2_halo3_spiker",
	"astw2_halo3_carbine",
	"astw2_halo3_fuelrod"
}

ENT.PossibleEquipment = {
	"astw2_halo_3_eq_deployable_cover_deployed",
	"astw2_halo_3_eq_regenerator_deployed"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_captain_ultra", {
	Name = "Brute Captain Ultra",
	Class = "npc_iv04_h3_cov_brute_captain_ultra",
	Category = "Halo 3"
} )
