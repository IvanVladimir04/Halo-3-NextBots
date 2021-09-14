AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_marine_ai"

ENT.PrintName = "Romeo"

ENT.Models = {"models/halo3/ODSTS.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.GreetQuote = "grt"

ENT.CanInteractWithOthers = true

ENT.InteractableAllies = {
	["npc_iv04_h3_marine_odst_buck"] = "romeo_look_buck"
}

ENT.InteractableAlliesResponses = {
	["npc_iv04_h3_marine_odst_buck"] = "romeo_look_buck_re"
}

ENT.PossibleWeapons = {
	"astw2_halo3_magnum_odst",
	"astw2_halo3_sniperrifle",
	"astw2_halo3_sniperrifle",
	"astw2_halo3_sniperrifle"
}

function ENT:DoInit()
	self.VoiceType = "Romeo"
	self.ColR = 30--math.random(255)
	self.ColG = 60--math.random(255)
	self.ColB = 125--math.random(255)
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsHeroSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	self:SetBodygroup(6,4)
	self:SetBodygroup(8,4)
	--self:SetBodygroup(14,1)
	self:SetSkin(1)
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3_marine_odst_romeo", {
	Name = "ODST Romeo",
	Class = "npc_iv04_h3_marine_odst_romeo",
	Category = "Halo 3"
} )