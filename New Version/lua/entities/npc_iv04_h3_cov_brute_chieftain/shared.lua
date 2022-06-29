AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Chieftain"

ENT.AITemplate = "BRUTE"

ENT.StartHealth = 175

ENT.MaxShield = 200

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 4

ENT.IsChieftain = true

ENT.PossibleWeapons = {
	"astw2_halo3_gravityhammer"
}

ENT.PossibleEquipment = {
	"astw2_halo_3_eq_powerdrain_deployed",
	"astw2_halo_3_eq_flare_deployed"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_chieftain", {
	Name = "Brute Chieftain",
	Class = "npc_iv04_h3_cov_brute_chieftain",
	Category = "Halo 3"
} )
