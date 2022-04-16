AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Elite"

ENT.Models = {"models/halo_3/characters/alliance/elite.mdl"}

ENT.StartHealth = 75

ENT.MaxShield = 190

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

--ENT.SpawnWithWeaponDrawn = true

ENT.Faction = "FACTION_ALLIANCE"

ENT.AITemplate = "ELITE"

ENT.PossibleWeapons = {
	"astw2_halo3_plasmarifle",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_plasmarifle",
	"astw2_halo3_carbine",
	"astw2_halo3_carbine",
	"astw2_halo3_fuelrod",
	"astw2_halo3_energysword",
	"astw2_halo3_energysword"
}

function ENT:DoInit()
	--self:SetBodygroup(1,math.random(-4,1))
	--self:SetBodygroup(4,1)
	--self:SetBodygroup(5,8)
	self:SetSkin(7)
	self:SetBodygroup(7,1)
	--print(head)
	self.VoiceType = "Elite_"..math.random(1,2)..""
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
end

list.Set( "NPC", "npc_iv04_h3_all_elite_zealot", {
	Name = "Elite Zealot",
	Class = "npc_iv04_h3_all_elite_zealot",
	Category = "Halo 3"
} )