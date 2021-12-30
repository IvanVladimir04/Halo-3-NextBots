AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "Mickey"

ENT.Models = {"models/halo3/ODSTS.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.GreetQuote = "grt"

ENT.CanInteractWithOthers = true

ENT.InteractableAllies = {
	["npc_iv04_h3_marine_odst_dutch"] = "mickey_look_dutch"
}

ENT.InteractableAlliesResponses = {
	["npc_iv04_h3_marine_odst_dutch"] = "mickey_look_dutch_re"
}

ENT.PossibleWeapons = {
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_shotgun",
	"astw2_halo3_rocketlauncher"
}

function ENT:DoInit()
	self.VoiceType = "Mickey"
	self.ColR = 125--math.random(255)
	self.ColG = 30--math.random(255)
	self.ColB = 30--math.random(255)
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsHeroSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	self:SetBodygroup(6,3)
	self:SetBodygroup(8,3)
	self:SetBodygroup(14,1)
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3_marine_odst_mickey", {
	Name = "ODST Mickey",
	Class = "npc_iv04_h3_marine_odst_mickey",
	Category = "Halo 3"
} )