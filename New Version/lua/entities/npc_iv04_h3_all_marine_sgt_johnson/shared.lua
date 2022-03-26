AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Johnson"

ENT.Models = {"models/halo_3/characters/alliance/marine.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.EnableFlashlight = false

--ENT.SpawnWithWeaponDrawn = true

ENT.Faction = "FACTION_ALLIANCE"

ENT.AITemplate = "MARINE"

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_shotgun",
	"astw2_halo3_spartanlaser"
}

function ENT:DoInit()
	self:SetBodygroup(1,math.random(-4,1))
	self:SetBodygroup(4,1)
	self:SetBodygroup(5,8)
	self:SetSkin(3)
	--print(head)
	self.VoiceType = "Johnson"
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3_all_marine_sgt_johnson", {
	Name = "Sergeant Johnson",
	Class = "npc_iv04_h3_all_marine_sgt_johnson",
	Category = "Halo 3"
} )