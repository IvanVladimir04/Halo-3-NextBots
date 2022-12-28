AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Master Chief"

ENT.Models = {"models/halo_3/characters/alliance/master_chief.mdl"}

ENT.StartHealth = 100

ENT.MaxShield = 200

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

--ENT.SpawnWithWeaponDrawn = true

ENT.Faction = "FACTION_ALLIANCE"

ENT.AITemplate = "SPARTAN"

ENT.CanInteractWithOthers = true

ENT.StareReply = "look_plr_mc"

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_smg",
	"astw2_halo3_smg",
	"astw2_halo3_shotgun",
	"astw2_halo3_sniperrifle",
	"astw2_halo3_spartanlaser"
}

function ENT:DoInit()
	self:SetBodygroup(1,math.random(-4,1))
	self:SetBodygroup(4,1)
	self:SetBodygroup(5,8)
	self:SetSkin(3)
	--print(head)
	self.VoiceType = "Spartan"
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3_all_masterchief", {
	Name = "Master Chief",
	Class = "npc_iv04_h3_all_masterchief",
	Category = "Halo 3"
} )