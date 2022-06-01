AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Combat Form Human"

ENT.Models = {"models/halo_3/characters/flood/human_combat_form.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 4

ENT.AITemplate = "FLOOD_HUMAN"

ENT.Faction = "FACTION_FLOOD"

--ENT.SpawnWithWeaponDrawn = true

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_shotgun",
	"astw2_halo3_magnum"
}

function ENT:DoInit()
	self.VoiceType = "Flood_Combat_"..math.random(1,2)..""
end

list.Set( "NPC", "npc_iv04_h3_fld_combat_form_human", {
	Name = "Flood Combat Form Human",
	Class = "npc_iv04_h3_fld_combat_form_human",
	Category = "Halo 3"
} )