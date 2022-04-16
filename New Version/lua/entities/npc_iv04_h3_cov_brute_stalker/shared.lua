AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Stalker"

ENT.StartHealth = 75

ENT.MaxShield = 75

ENT.AITemplate = "BRUTE"

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 1



ENT.IsStalker = true


ENT.PossibleWeapons = {
	"astw2_halo3_spiker",
	"astw2_halo3_plasmarifle_brute",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_mauler"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_stalker", {
	Name = "Brute Stalker",
	Class = "npc_iv04_h3_cov_brute_stalker",
	Category = "Halo 3"
} )
