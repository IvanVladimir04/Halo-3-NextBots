AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Mickey"

ENT.Models = {"models/halo_3/characters/alliance/mickey.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

ENT.GreetQuote = "grt"

ENT.AITemplate = "MARINE"

ENT.CanInteractWithOthers = true

ENT.Faction = "FACTION_ALLIANCE"

ENT.InteractableAllies = {
	["npc_iv04_h3odst_all_dutch"] = "mickey_look_dutch"
}

ENT.InteractableAlliesResponses = {
	["npc_iv04_h3odst_all_dutch"] = "mickey_look_dutch_re"
}

ENT.PossibleWeapons = {
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_shotgun",
	"astw2_halo3_rocketlauncher"
}

function ENT:DoInit()
	self.VoiceType = "Mickey"
	self.ColR = 75--math.random(255)
	self.ColG = 20--math.random(255)
	self.ColB = 15--math.random(255)
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	self:SetColor(Color(self.ColR,self.ColG,self.ColB))
	net.Start( "H3NBsHeroSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()
	self:SetBodygroup(6,3)
	self:SetBodygroup(8,3)
	self:SetBodygroup(14,1)
	self.Unkillable = GetConVar("halo_3_nextbots_ai_heroes"):GetBool()
end

list.Set( "NPC", "npc_iv04_h3odst_all_mickey", {
	Name = "ODST Mickey",
	Class = "npc_iv04_h3odst_all_mickey",
	Category = "Halo 3: ODST"
} )