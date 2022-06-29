AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute War Chieftain"

ENT.AITemplate = "BRUTE"

ENT.StartHealth = 175

ENT.MaxShield = 200

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 4

ENT.IsWarChieftain = true

ENT.PossibleWeapons = {
	"astw2_halo3_fuelrod",
	"astw2_halo3_plasmaturret"
}

ENT.PossibleEquipment = {
	"astw2_halo_3_eq_powerdrain_deployed",
	"astw2_halo_3_eq_flare_deployed"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_warchieftain", {
	Name = "Brute War Chieftain",
	Class = "npc_iv04_h3_cov_brute_warchieftain",
	Category = "Halo 3"
} )
