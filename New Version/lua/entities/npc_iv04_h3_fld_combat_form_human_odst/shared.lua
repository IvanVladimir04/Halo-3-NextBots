AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Combat Form Human"

ENT.Models = {"models/halo_3/characters/flood/human_odst_combat_form.mdl"}

ENT.StartHealth = 130

ENT.Relationship = 4

ENT.AITemplate = "FLOOD_HUMAN"

ENT.Faction = "FACTION_FLOOD"

--ENT.SpawnWithWeaponDrawn = true

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_smg_odst",
	"astw2_halo3_magnum_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_battlerifle",
	"astw2_halo3_shotgun"
}

function ENT:DoInit()
	self.VoiceType = "Flood_Combat_"..math.random(1,2)..""
	self.FloodGibGroups = {
		[9] = 1,
		[4] = 3,
		[5] = 4
	}
end

list.Set( "NPC", "npc_iv04_h3_fld_combat_form_human_odst", {
	Name = "Flood Combat Form Human ODST",
	Class = "npc_iv04_h3_fld_combat_form_human_odst",
	Category = "Halo 3"
} )