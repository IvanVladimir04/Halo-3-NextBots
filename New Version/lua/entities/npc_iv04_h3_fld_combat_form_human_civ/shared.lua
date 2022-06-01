AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Combat Form Human"

ENT.Models = {"models/halo_3/characters/flood/human_civilian_combat_form.mdl"}

ENT.StartHealth = 80

ENT.Relationship = 4

ENT.AITemplate = "FLOOD_HUMAN"

ENT.Faction = "FACTION_FLOOD"

--ENT.SpawnWithWeaponDrawn = true

ENT.PossibleWeapons = {
	"astw2_halo3_smg",
	"astw2_halo3_magnum"
}

ENT.PossibleColors = {
	Color(136,154,165),
	Color(80,80,70),
	Color(105,115,215),
	Color(144,189,200),
	Color(70,70,70),
	Color(255,255,255)
}

ENT.CopColors = {
	[Color(70,70,70)] = true,
	[Color(136,154,165)] = true
}

function ENT:DoInit()
	self.VoiceType = "Flood_Combat_"..math.random(1,2)..""
	local col = self:TableRandom(self.PossibleColors)
	self.ColR = col.r--math.random(255)
	self.ColG = col.g--math.random(255)
	self.ColB = col.b--math.random(255)
	self:SetColor(Color(self.ColR,self.ColG,self.ColB))
	if self.CopColors[col] then
		self.PossibleWeapons = {
			"astw2_halo3_smg_odst",
			"astw2_halo3_magnum_odst"
		}
	end
	self.FloodGibGroups = {
		[9] = 1,
		[4] = 3,
		[5] = 4
	}
--[[	self.GetPlayerColor = function()
		return Vector(self.ColR/255,self.ColG/255,self.ColB/255)
	end
	net.Start( "H3NBsColoredSpawned" )
	net.WriteEntity( self )
	net.WriteVector( self:GetPlayerColor() )
	net.Broadcast()]]
end

list.Set( "NPC", "npc_iv04_h3_fld_combat_form_human_civ", {
	Name = "Flood Combat Form Human Civilian",
	Class = "npc_iv04_h3_fld_combat_form_human_civ",
	Category = "Halo 3"
} )