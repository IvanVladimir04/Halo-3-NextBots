AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Romeo"

ENT.Models = {"models/halo_3/characters/alliance/romeo.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.AITemplate = "MARINE"

ENT.GreetQuote = "grt"

ENT.CanInteractWithOthers = true

ENT.Faction = "FACTION_ALLIANCE"

ENT.InteractableAllies = {
	["npc_iv04_h3odst_all_buck"] = "romeo_look_buck"
}

ENT.InteractableAlliesResponses = {
	["npc_iv04_h3odst_all_buck"] = "romeo_look_buck_re"
}

ENT.PossibleWeapons = {
	"astw2_halo3_magnum_odst",
	"astw2_halo3_sniperrifle",
	"astw2_halo3_sniperrifle",
	"astw2_halo3_sniperrifle"
}

function ENT:DoInit()
	self.VoiceType = "Romeo"
	self.ColR = 55--math.random(255)
	self.ColG = 65--math.random(255)
	self.ColB = 135--math.random(255)
	self:SetColor(Color(self.ColR,self.ColG,self.ColB))
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsHeroSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	self:SetBodygroup(6,4)
	self:SetBodygroup(8,4)
	--self:SetBodygroup(14,1)
	self:SetSkin(1)
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3odst_all_romeo", {
	Name = "ODST Romeo",
	Class = "npc_iv04_h3odst_all_romeo",
	Category = "Halo 3: ODST"
} )