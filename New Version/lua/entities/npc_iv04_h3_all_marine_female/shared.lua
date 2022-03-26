AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Marine"

ENT.Models = {"models/halo_3/characters/alliance/marine_female.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.EnableFlashlight = false

--ENT.SpawnWithWeaponDrawn = true

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

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
	0,1,2,3
}

ENT.HeadSkins = {
	[0] = 4,
	[1] = 1,
	[2] = 1,
	[3] = 2
}

function ENT:DoInit()
	self:SetBodygroup(1,math.random(-4,1))
	self:SetBodygroup(2,math.random(-1,1))
	self:SetBodygroup(4,math.random(-4,1))
	local head = table.Random(self.PossibleHeads)
	self:SetBodygroup(5,head)
	self:SetSkin(self.HeadSkins[head])
	--print(head)
	if head == 0 then
		self.VoiceType = "Female_Marine_3"
	elseif head == 1 then
		self.VoiceType = "Female_Marine_1"
	else
		self.VoiceType = "Female_Marine_2"
	end
	self:SetBodygroup(6,math.random(1,2))
	self:SetBodygroup(7,math.random(-4,3))
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
end

function ENT:MoveMouth()
	--self:DoGestureSeq("pose_face",true,0.25,0.75)
	-- Trollge
end

function ENT:PoseEyes()
	--self:DoGestureSeq("pose_eyes",true,0.1)
	-- Trollge
end

list.Set( "NPC", "npc_iv04_h3_all_marine_female", {
	Name = "Marine (Female)",
	Class = "npc_iv04_h3_all_marine_female",
	Category = "Halo 3"
} )