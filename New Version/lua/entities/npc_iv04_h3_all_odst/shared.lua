AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "ODST"

ENT.Models = {"models/halo_3/characters/alliance/odst.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

--ENT.SpawnWithWeaponDrawn = true

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

ENT.PossibleWeapons = {
	"astw2_halo3_assaultrifle",
	"astw2_halo3_battlerifle",
	"astw2_halo3_shotgun"
}

function ENT:DoInit()
	--print(head)
	-- self:SetBodygroup(1,math.random(0,1))
	self.VoiceType = "Marine"..math.random(1,6)..""
	if math.random(1,5) == 1 then
		self:SetSkin(2)
	else
		self:SetSkin(1)
	end
	self:SetBodygroup(1,math.random(0,1))
end

list.Set( "NPC", "npc_iv04_h3_all_odst", {
	Name = "ODST",
	Class = "npc_iv04_h3_all_odst",
	Category = "Halo 3"
} )