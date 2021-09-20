AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "Miranda Keyes"

ENT.Models = {"models/halo3/Miranda.mdl"}

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
	--"astw2_halo3_smg",
	--"astw2_halo3_smg",
	"astw2_halo3_shotgun",
	"astw2_halo3_magnum"
	--[["astw2_haloreach_rocket_launcher",
	"astw2_haloreach_sniper_rifle",
	"astw2_haloreach_spartan_laser"]]
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

--list.Set( "NPC", "npc_iv04_h3_marine_miranda", {
--	Name = "Miranda Keyes",
--	Class = "npc_iv04_h3_marine_miranda",
--	Category = "Halo 3"
--} )