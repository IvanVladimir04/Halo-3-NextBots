AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "ODST"

ENT.Models = {"models/halo3/ODST.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_shotgun"
}

ENT.PossibleHeads = {
	0,1,2,3,4,5,6,7,9,10
}

ENT.HeadSkins = {
	[0] = 0,
	[1] = 1,
	[2] = 1,
	[3] = 1,
	[4] = 1,
	[5] = 5,
	[6] = 5,
	[7] = 2,
	[9] = 1,
	[10] = 3,
}

ENT.SergeantHeads = {
	[8] = true,
	[9] = true,
	[10] = true
}

function ENT:DoInit()
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	self:SetBodygroup(2,math.random(-1,1))
	self:SetBodygroup(3,math.random(-4,1))
	self:SetBodygroup(5,math.random(-1,1))
	local head = table.Random(self.PossibleHeads)
	self:SetBodygroup(6,head)
	self:SetSkin(self.HeadSkins[head])
	--print(head)
	if self.SergeantHeads[head] then
		if head == 9 then
			--print("Stacker")
			self.VoiceType = "Stacker"
		elseif head == 10 then
			--print("Reynolds")
			self.VoiceType = "Reynolds"
		end
	else
		self:SetBodygroup(7,math.random(1,2))
	end
	self:SetBodygroup(8,math.random(-4,3))
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	if self.EnableFlashlight then

	end
end

list.Set( "NPC", "npc_iv04_h3_marine_odst", {
	Name = "ODST",
	Class = "npc_iv04_h3_marine_odst",
	Category = "Halo 3"
} )