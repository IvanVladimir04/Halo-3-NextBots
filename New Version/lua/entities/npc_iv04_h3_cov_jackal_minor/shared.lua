AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Jackal"

ENT.StartHealth = 40

ENT.MaxShield = 45

ENT.AITemplate = "JACKAL"

ENT.Models = {"models/halo_3/characters/covenant/jackal.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.Rank = 1

ENT.ShieldParticle = "iv04_halo_3_jackal_shield_impact_effect"

ENT.ShieldDepleteParticle = "iv04_halo_3_jackal_shield_deplete"

ENT.PossibleWeapons = {
	"astw2_halo3_plasmapistol",
	"astw2_halo3_needler"
}

list.Set( "NPC", "npc_iv04_h3_cov_jackal_minor", {
	Name = "Jackal Minor",
	Class = "npc_iv04_h3_cov_jackal_minor",
	Category = "Halo 3"
} )
