AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "Civilian"

ENT.Models = {"models/halo3/Civilian.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.PossibleWeapons = {
	"astw2_halo3_magnum"
}

ENT.PossibleHeads = {
	0,1,2
}

function ENT:DoInit()
	self.VoiceType = "Civilian"..math.random(1,2)..""
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	--self:SetBodygroup(2,math.random(-1,1))
	self:SetBodygroup(1,1)
	--self:SetBodygroup(5,math.random(-1,1))
	local head = table.Random(self.PossibleHeads)
	self:SetBodygroup(3,head)
	self:SetSkin(1)
	--print(head)
	--self:SetBodygroup(8,math.random(-4,3))
	--self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	--self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
end

list.Set( "NPC", "npc_iv04_h3_marine_civilian", {
	Name = "Civilian",
	Class = "npc_iv04_h3_marine_civilian",
	Category = "Halo 3"
} )