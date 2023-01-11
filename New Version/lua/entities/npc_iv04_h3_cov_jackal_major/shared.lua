AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Jackal"

ENT.StartHealth = 50

ENT.MaxShield = 55

ENT.AITemplate = "JACKAL"

ENT.Models = {"models/halo_3/characters/covenant/jackal.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 2

ENT.ShieldParticle = "iv04_halo_3_jackal_shield_impact_effect"

ENT.ShieldDepleteParticle = "iv04_halo_3_jackal_shield_deplete_major"

ENT.PossibleWeapons = {
	"astw2_halo3_plasmapistol",
	"astw2_halo3_needler"
}

list.Set( "NPC", "npc_iv04_h3_cov_jackal_major", {
	Name = "Jackal Major",
	Class = "npc_iv04_h3_cov_jackal_major",
	Category = "Halo 3"
} )
