AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Infection Form"

ENT.Models = {"models/halo_3/characters/flood/infection_form.mdl"}

ENT.StartHealth = 5

ENT.Relationship = 4

ENT.AITemplate = "FLOOD_INFECTION"

ENT.Faction = "FACTION_FLOOD"

ENT.DoesntUseWeapons = true

ENT.DeathParticle = "iv04_halo_3_flood_gib_small"

--ENT.SpawnWithWeaponDrawn = true

function ENT:DoInit()
	self.VoiceType = "Flood_Infection"
end

list.Set( "NPC", "npc_iv04_h3_fld_infection_form", {
	Name = "Flood Infection Form",
	Class = "npc_iv04_h3_fld_infection_form",
	Category = "Halo 3"
} )