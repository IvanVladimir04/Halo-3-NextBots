AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Major"

ENT.AITemplate = "BRUTE"

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 2

ENT.PossibleWeapons = {
	"astw2_halo3_spiker",
	"astw2_halo3_plasmarifle_brute",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_spiker"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_major", {
	Name = "Brute Major",
	Class = "npc_iv04_h3_cov_brute_major",
	Category = "Halo 3"
} )
