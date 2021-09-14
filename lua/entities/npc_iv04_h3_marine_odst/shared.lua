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

function ENT:DoInit()
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	--print(head)
	self:SetBodygroup(1,math.random(-3,1))
	self:SetBodygroup(2,math.random(-3,1))
	self:SetBodygroup(4,math.random(-3,1))
	self:SetBodygroup(5,math.random(-3,1))
	self:SetBodygroup(3,1)
	if math.random(1,4) == 1 then
		if math.random(1,2) == 1 then
			--print("Stacker")
			self.VoiceType = "Stacker"
		else
			--print("Reynolds")
			self.VoiceType = "Reynolds"
		end
	else
		self.VoiceType = "Marine"..math.random(1,6)..""
		if math.random(1,5) == 1 then
			self:SetSkin(2)
		else
			self:SetSkin(1)
		end
	end
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