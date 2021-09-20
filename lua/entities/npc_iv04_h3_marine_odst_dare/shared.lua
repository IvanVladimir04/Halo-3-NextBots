AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "Dare"

ENT.Models = {"models/halo3/ODST_Dare.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.EnableFlashlight = true

ENT.PossibleWeapons = {
	"astw2_halo3_magnum_odst"
}


function ENT:DoInit()
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	--print(head)
	self.VoiceType = "Dare"
	self:SetBodygroup(8,math.random(-4,3))
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	if self.EnableFlashlight then

	end
end

function ENT:MoveMouth()
	--self:DoGestureSeq("pose_face",true,0.25,0.75)
	-- Trollge
end

function ENT:PoseEyes()
	--self:DoGestureSeq("pose_eyes",true,0.1)
	-- Trollge
end

--list.Set( "NPC", "npc_iv04_h3_marine_odst_dare", {
--	Name = "ODST Dare",
--	Class = "npc_iv04_h3_marine_odst_dare",
--	Category = "Halo 3"
--} )