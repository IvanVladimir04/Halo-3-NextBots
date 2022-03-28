AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Dare"

ENT.Models = {"models/halo_3/characters/alliance/dare.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.EnableFlashlight = true

ENT.AITemplate = "MARINE"

ENT.Faction = "FACTION_ALLIANCE"

ENT.PossibleWeapons = {
	"astw2_halo3_magnum_odst"
}


function ENT:DoInit()
	--print(head)
	self.VoiceType = "Dare"
	-- self:SetBodygroup(8,math.random(-4,3))
	self:SetColor(Color(75,85,105))
end

function ENT:MoveMouth()
	--self:DoGestureSeq("pose_face",true,0.25,0.75)
	-- Trollge
end

function ENT:PoseEyes()
	--self:DoGestureSeq("pose_eyes",true,0.1)
	-- Trollge
end

list.Set( "NPC", "npc_iv04_h3odst_all_dare", {
	Name = "ODST Dare",
	Class = "npc_iv04_h3odst_all_dare",
	Category = "Halo 3: ODST"
} )