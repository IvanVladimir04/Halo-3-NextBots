AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "Buck"

ENT.Models = {"models/halo3/ODSTS.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_magnum_odst",
	"astw2_halo3_magnum_odst"
}

function ENT:DoInit()
	self.ColR = 205--math.random(255)
	self.ColG = 205--math.random(255)
	self.ColB = 205--math.random(255)
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsHeroSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	self:SetBodygroup(6,1)
	self:SetBodygroup(8,1)
	self:SetBodygroup(11,1)
	self:SetBodygroup(13,1)
	self:SetBodygroup(14,1)
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3_marine_odst_buck", {
	Name = "ODST Buck",
	Class = "npc_iv04_h3_marine_odst_buck",
	Category = "Halo 3"
} )