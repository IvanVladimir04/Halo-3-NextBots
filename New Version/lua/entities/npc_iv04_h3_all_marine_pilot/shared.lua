AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Pilot"

ENT.Models = {"models/halo_3/characters/alliance/marine.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

ENT.PossibleWeapons = {
	"astw2_halo3_magnum"
}

ENT.SpawnWithWeaponDrawn = true

function ENT:DoInit()
	self.VoiceType = "Marine1"
	self:SetBodygroup(3,1)
	self:SetBodygroup(4,1)
	self:SetBodygroup(5,1)
	self:SetBodygroup(7,3)
	self:SetBodygroup(6,3)
end

list.Set( "NPC", "npc_iv04_h3_all_marine_pilot", {
	Name = "Pilot",
	Class = "npc_iv04_h3_all_marine_pilot",
	Category = "Halo 3"
} )