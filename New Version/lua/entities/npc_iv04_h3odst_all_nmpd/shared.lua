AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "NMPD Officer"

ENT.Models = {"models/halo_3/characters/alliance/nmpd_officer.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.ODSTAnims = true

ENT.GreetQuote = "grt"

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_assaultrifle",
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_smg_odst",
	"astw2_halo3_shotgun",
	"astw2_halo3_magnum_odst",
	"astw2_halo3_magnum_odst",
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
	net.Broadcast()
	local headbod = math.random(1,4)
	if headbod == 1 then
		-- Sarge
		self.VoiceType = "Cop2"
		self:SetBodygroup(2,1)
		self:SetBodygroup(3,1)
		self.IsSergeant = true
	else
		self.VoiceType = "Cop1"
	end
	if math.random(1,2) == 1 then
		self:SetBodygroup(5,1)
	else
		self:SetBodygroup(6,1)
	end
end

list.Set( "NPC", "npc_iv04_h3odst_all_nmpd", {
	Name = "NMPD Officer",
	Class = "npc_iv04_h3odst_all_nmpd",
	Category = "Halo 3: ODST"
} )