AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "NMPD Officer"

ENT.Models = {"models/halo3/Police.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.EnableFlashlight = true

ENT.GreetQuote = "grt"

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

function ENT:DoInit()
	local wep = table.Random(self.PossibleWeapons)
	self:Give(wep)
	local headbod = math.random(1,4)
	if headbod == 1 then
		-- Sarge
		self.VoiceType = "Cop2"
		self:SetBodygroup(1,1)
		self:SetBodygroup(2,1)
	else
		self.VoiceType = "Cop1"
	end
	if math.random(1,2) == 1 then
		self:SetBodygroup(3,1)
	else
		self:SetBodygroup(4,1)
	end
	--self:SetBodygroup(2,math.random(-1,1))
	--self:SetBodygroup(3,math.random(-4,1))
	--self:SetBodygroup(5,math.random(-1,1))

	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	if self.EnableFlashlight then

	end
end
--[[
list.Set( "NPC", "npc_iv04_h3odst_all_nmpd", {
	Name = "NMPD Officer",
	Class = "npc_iv04_h3odst_all_nmpd",
	Category = "Halo 3 ODST"
} )]]