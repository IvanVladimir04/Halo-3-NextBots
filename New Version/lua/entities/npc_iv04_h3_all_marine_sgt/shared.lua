AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Marine"

ENT.Models = {"models/halo_3/characters/alliance/marine.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.Faction = "FACTION_ALLIANCE"

--ENT.SpawnWithWeaponDrawn = true

ENT.AITemplate = "MARINE"

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
	9,10
}

ENT.HeadSkins = {
	[7] = 2,
	[10] = 1,
	[9] = 3
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
	local head = table.Random(self.PossibleHeads)
	self:SetBodygroup(5,head)
	self:SetSkin(self.HeadSkins[head])
	if head == 10 then
		--print("Stacker")
		self.VoiceType = "Stacker"
	elseif head == 9 then
		--print("Reynolds")
		self.VoiceType = "Reynolds"
	end
	--self:SetBodygroup(8,math.random(-4,3))
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
end

list.Set( "NPC", "npc_iv04_h3_all_marine_sgt", {
	Name = "Marine (Sergeant)",
	Class = "npc_iv04_h3_all_marine_sgt",
	Category = "Halo 3"
} )