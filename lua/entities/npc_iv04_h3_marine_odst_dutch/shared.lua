AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "Dutch"

ENT.Models = {"models/halo3/ODSTS.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.GreetQuote = "grt"

ENT.CanInteractWithOthers = true

ENT.InteractableAllies = {
	["npc_iv04_h3_marine_odst_mickey"] = "dutch_look_mickey"
}

ENT.InteractableAlliesResponses = {
	["npc_iv04_h3_marine_odst_mickey"] = "dutch_look_mickey_re"
}

ENT.PossibleWeapons = {
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_spartanlaser"
}

function ENT:DoInit()
	self.VoiceType = "Dutch"
	self.ColR = 171--math.random(255)
	self.ColG = 112--math.random(255)
	self.ColB = 55--math.random(255)
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsHeroSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	self:SetBodygroup(3,2)
	self:SetBodygroup(6,2)
	self:SetBodygroup(8,2)
	self:SetBodygroup(13,1)
	self:SetBodygroup(14,1)
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3_marine_odst_dutch", {
	Name = "ODST Dutch",
	Class = "npc_iv04_h3_marine_odst_dutch",
	Category = "Halo 3"
} )