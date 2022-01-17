AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Buck"

ENT.Models = {"models/halo3/ODSTS.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.GreetQuote = "grt"

ENT.CanInteractWithOthers = true

ENT.InteractableAllies = {
	["npc_iv04_h3odst_all_mickey"] = "buck_look_mickey",
	["npc_iv04_h3odst_all_dutch"] = "buck_look_dutch",
	["npc_iv04_h3odst_all_romeo"] = "buck_look_romeo"
}

ENT.InteractableAlliesResponses = {
	["npc_iv04_h3odst_all_mickey"] = "buck_look_mickey_re",
	["npc_iv04_h3odst_all_dutch"] = "buck_look_dutch_re",
	["npc_iv04_h3odst_all_romeo"] = "buck_look_romeo_re"
}

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_magnum_odst",
	"astw2_halo3_magnum_odst"
}

function ENT:DoInit()
	self.VoiceType = "Buck"
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
--[[
list.Set( "NPC", "npc_iv04_h3odst_all_buck", {
	Name = "ODST Buck",
	Class = "npc_iv04_h3odst_all_buck",
	Category = "Halo 3 ODST"
} )]]