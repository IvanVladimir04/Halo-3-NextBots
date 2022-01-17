AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Marine"

ENT.Models = {"models/halo_3/characters/alliance/marine.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.EnableFlashlight = true

ENT.AITemplate = "MARINE"

--ENT.SpawnWithWeaponDrawn = true

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_shotgun",
	"astw2_halo3_magnum"
	--[["astw2_haloreach_rocket_launcher",
	"astw2_haloreach_sniper_rifle",
	"astw2_haloreach_spartan_laser"]]
}

ENT.PossibleHeads = {
	0,1,2,3,4,5,6,7
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
	self:SetBodygroup(1,math.random(-4,1))
	self:SetBodygroup(2,math.random(-1,1))
	self:SetBodygroup(4,math.random(-4,1))
	self.VoiceType = "Marine"..math.random(1,6)..""
	local head = table.Random(self.PossibleHeads)
	self:SetBodygroup(5,head)
	self:SetSkin(self.HeadSkins[head])
	--print(head)
	self:SetBodygroup(6,math.random(1,2))
	self:SetBodygroup(7,math.random(-4,3))
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	if self.EnableFlashlight then

	end
end

list.Set( "NPC", "npc_iv04_h3_all_marine", {
	Name = "Marine",
	Class = "npc_iv04_h3_all_marine",
	Category = "Halo 3"
} )