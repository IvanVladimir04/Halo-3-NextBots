AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Buck"

ENT.Models = {"models/halo_3/characters/alliance/buck.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.AITemplate = "MARINE"

ENT.GreetQuote = "grt"

ENT.Faction = "FACTION_ALLIANCE"

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
	self:SetColor(Color(self.ColR,self.ColG,self.ColB))
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsHeroSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3odst_all_buck", {
	Name = "ODST Buck",
	Class = "npc_iv04_h3odst_all_buck",
	Category = "Halo 3: ODST"
} )