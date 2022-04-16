AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Arbiter"

ENT.Models = {"models/halo_3/characters/alliance/arbiter.mdl"}

ENT.StartHealth = 100
ENT.MaxShield = 200

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
	"astw2_halo3_energysword"
	-- "astw2_halo3_flamethrower"
} 

function ENT:DoInit()
	--self:SetBodygroup(1,math.random(-4,1))
	--self:SetBodygroup(4,1)
	--self:SetBodygroup(5,8)
	--print(head)
	self.VoiceType = "Arbiter"
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3_all_arbiter", {
	Name = "Arbiter",
	Class = "npc_iv04_h3_all_arbiter",
	Category = "Halo 3"
} )