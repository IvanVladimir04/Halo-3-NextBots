AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Brute Jumppack Major"

ENT.AITemplate = "BRUTE"

ENT.Models = {"models/halo_3/characters/covenant/brute.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 3

ENT.IsJumpers = true

ENT.PossibleWeapons = {
	"astw2_halo3_bruteshot",
	"astw2_halo3_plasmarifle_brute",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_carbine",
	"astw2_halo3_spiker",
	"astw2_halo3_fuelrod"
}

list.Set( "NPC", "npc_iv04_h3odst_brute_jumppack_major", {
	Name = "Brute Jumppack Major",
	Class = "npc_iv04_h3odst_brute_jumppack_major",
	Category = "Halo 3: ODST"
} )
