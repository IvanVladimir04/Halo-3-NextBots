AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Johnson"

ENT.Models = {"models/halo_3/characters/alliance/johnson.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_shotgun",
	"astw2_halo3_spartanlaser"
}

function ENT:DoInit()
	self.ColR = 255--math.random(255)
	self.ColG = 255--math.random(255)
	self.ColB = 255--math.random(255)
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsColoredSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	self:SetSkin(1)
	self:SetBodygroup(6,5)
	self:SetBodygroup(7,5)
	self:SetBodygroup(9,1)
	self:SetBodygroup(13,1)
	self:SetBodygroup(14,1)
	--print(head)
	self.VoiceType = "Johnson"
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3odst_all_johnson", {
	Name = "Johnson",
	Class = "npc_iv04_h3odst_all_johnson",
	Category = "Halo 3: ODST"
} )