AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Spartan"

ENT.Models = {"models/halo_3/characters/alliance/spartan.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

--ENT.SpawnWithWeaponDrawn = true

ENT.Faction = "FACTION_ALLIANCE"

ENT.AITemplate = "SPARTAN"

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_shotgun"
}

function ENT:DoInit()
	self:SetBodygroup(1,math.random(8,-4))
	self:SetBodygroup(2,math.random(11,-4))
	self:SetBodygroup(1,math.random(7,-4))
	--print(head)
	self.VoiceType = "Spartan_Female"
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
end

list.Set( "NPC", "npc_iv04_h3_all_spartan_female", {
	Name = "Spartan (Female)",
	Class = "npc_iv04_h3_all_spartan_female",
	Category = "Halo 3"
} )