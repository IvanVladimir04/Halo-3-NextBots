AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "ODST Pilot"

ENT.Models = {"models/halo_3/characters/alliance/odst_custom.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

--ENT.SpawnWithWeaponDrawn = true

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

ENT.PossibleWeapons = {
	"astw2_halo3_magnum_odst",
	"astw2_halo3_magnum"
}

function ENT:DoInit()
	--print(head)
	-- self:SetBodygroup(1,math.random(0,1))
	self.VoiceType = "Marine"..math.random(1,6)..""
	if math.random(1,5) == 1 then
		self:SetSkin(2)
	else
		self:SetSkin(1)
	end
	self:SetBodygroup(0,1)
	self:SetBodygroup(1,3)
	self:SetBodygroup(3,6)
	self:SetBodygroup(4,1)
	self:SetBodygroup(6,1)
	self:SetBodygroup(7,1)
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	if self.EnableFlashlight then

	end
end

list.Set( "NPC", "npc_iv04_h3_all_odst_pilot", {
	Name = "ODST Pilot",
	Class = "npc_iv04_h3_all_odst_pilot",
	Category = "Halo 3"
} )