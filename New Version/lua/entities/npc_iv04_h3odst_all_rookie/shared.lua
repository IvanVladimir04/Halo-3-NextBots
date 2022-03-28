AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Rookie"

ENT.Models = {"models/halo_3/characters/alliance/rookie.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.AITemplate = "MARINE"

ENT.CanInteractWithOthers = true

ENT.Faction = "FACTION_ALLIANCE"

ENT.InteractableAllies = {
	["npc_iv04_h3_marine_odst_buck"] = "rookie_look_buck",
	["npc_iv04_h3_marine_odst_dare"] = "rookie_look_dare"
}

ENT.InteractableAlliesResponses = {

}

ENT.PossibleWeapons = {
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_magnum_odst",
	"astw2_halo3_magnum_odst"
}

function ENT:DoInit()
	self.VoiceType = "Rookie"
	local wep = table.Random(self.PossibleWeapons)
	--self:Give(wep)
	self:SetBodygroup(13,1)
	self:SetBodygroup(14,1)
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3odst_all_rookie", {
	Name = "ODST Rookie",
	Class = "npc_iv04_h3odst_all_rookie",
	Category = "Halo 3: ODST"
} )