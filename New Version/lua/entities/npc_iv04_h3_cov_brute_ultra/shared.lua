AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Ultra"

ENT.AITemplate = "BRUTE"

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 3

ENT.PossibleWeapons = {
	"astw2_halo3_spiker",
	"astw2_halo3_plasmarifle_brute",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_spiker"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_ultra", {
	Name = "Brute Ultra",
	Class = "npc_iv04_h3_cov_brute_ultra",
	Category = "Halo 3"
} )
