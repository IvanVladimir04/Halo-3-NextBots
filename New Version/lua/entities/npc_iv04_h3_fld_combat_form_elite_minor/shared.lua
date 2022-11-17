AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Combat Form Elite"

ENT.Models = {"models/halo_3/characters/flood/elite_combat_form.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 4

ENT.AITemplate = "FLOOD_ELITE"

ENT.Faction = "FACTION_FLOOD"

ENT.Rank = 1

--ENT.SpawnWithWeaponDrawn = true

ENT.PossibleWeapons = {
	"astw2_halo3_plasmapistol",
	"astw2_halo3_plasmapistol",
	"astw2_halo3_needler",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_spiker",
	"astw2_halo3_carbine",
	"astw2_halo3_carbine",
	"astw2_halo3_energysword"
}

function ENT:DoInit()
	self.VoiceType = "Flood_Combat_"..math.random(1,2)..""
	--print(self:GetActiveWeapon())
end

list.Set( "NPC", "npc_iv04_h3_fld_combat_form_elite_minor", {
	Name = "Flood Combat Form Elite Minor",
	Class = "npc_iv04_h3_fld_combat_form_elite_minor",
	Category = "Halo 3"
} )