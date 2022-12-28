AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Dutch"

ENT.Models = {"models/halo_3/characters/alliance/dutch.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.GreetQuote = "grt"

ENT.CanInteractWithOthers = true

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

ENT.InteractableAllies = {
	["npc_iv04_h3odst_all_mickey"] = "mickey_look_dutch",
	["npc_iv04_h3odst_all_buck"] = "buck_look_dutch"
}

ENT.InteractableAlliesResponses = {
	["npc_iv04_h3odst_all_mickey"] = "dutch_look_mickey_re"
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
	self:SetColor(Color(self.ColR,self.ColG,self.ColB))
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsColoredSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3odst_all_dutch", {
	Name = "ODST Dutch",
	Class = "npc_iv04_h3odst_all_dutch",
	Category = "Halo 3: ODST"
} )