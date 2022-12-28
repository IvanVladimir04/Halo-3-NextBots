AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "NMPD Pilot"

ENT.Models = {"models/halo_3/characters/alliance/nmpd_officer.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.GreetQuote = "grt"

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

ENT.ODSTAnims = true

ENT.PossibleWeapons = {
	"astw2_halo3_battlerifle",
	"astw2_halo3_magnum_odst"
	--[["astw2_haloreach_rocket_launcher",
	"astw2_haloreach_sniper_rifle",
	"astw2_haloreach_spartan_laser"]]
}

ENT.PossibleColors = {
	Color(144,189,200),Color(70,70,70)
}

function ENT:DoInit()
	local col = self:TableRandom(self.PossibleColors)
	self.ColR = col.r--math.random(255)
	self.ColG = col.g--math.random(255)
	self.ColB = col.b--math.random(255)
	self:SetColor(Color(self.ColR,self.ColG,self.ColB))
	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsColoredSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	--net.WriteColor(Color(self.ColR,self.ColG,self.ColB))
	net.Broadcast()
	self:SetBodygroup(3,2)
	self:SetBodygroup(4,math.random(0,1))
end

list.Set( "NPC", "npc_iv04_h3odst_all_nmpd_pilot", {
	Name = "NMPD Pilot",
	Class = "npc_iv04_h3odst_all_nmpd_pilot",
	Category = "Halo 3: ODST"
} )