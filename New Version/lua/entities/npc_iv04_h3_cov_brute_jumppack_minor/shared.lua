AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Jumppack Minor"

ENT.AITemplate = "BRUTE"

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 2

ENT.IsJumpers = true

ENT.PossibleWeapons = {
	"astw2_halo3_bruteshot",
	"astw2_halo3_plasmarifle_brute",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_carbine",
	"astw2_halo3_spiker",
	"astw2_halo3_fuelrod"
}

list.Set( "NPC", "npc_iv04_h3_cov_brute_jumppack_minor", {
	Name = "Brute Jumppack Minor",
	Class = "npc_iv04_h3_cov_brute_jumppack_minor",
	Category = "Halo 3"
} )
