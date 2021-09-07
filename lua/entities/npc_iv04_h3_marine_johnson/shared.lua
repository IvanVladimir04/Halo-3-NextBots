AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "Johnson"

ENT.Models = {"models/halo3/Marine.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.EnableFlashlight = true

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
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	self:SetBodygroup(2,math.random(-1,1))
	self:SetBodygroup(3,math.random(-4,1))
	self:SetBodygroup(5,math.random(-1,1))
	self:SetBodygroup(6,8)
	self:SetSkin(2)
	--print(head)
	self.VoiceType = "Johnson"
	self:SetBodygroup(8,math.random(-4,3))
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	if self.EnableFlashlight then

	end
end

list.Set( "NPC", "npc_iv04_h3_marine_johnson", {
	Name = "Johnson",
	Class = "npc_iv04_h3_marine_johnson",
	Category = "Halo 3"
} )