AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Hunter"

ENT.AITemplate = "HUNTER"

ENT.Models = {"models/halo_3/characters/covenant/hunter.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.StartHealth = 200

ENT.Rank = 1

ENT.MoveSpeed = 75

ENT.MoveSpeedMultiplier = 3

ENT.DisableCorpseShooting = true

ENT.WeakHitGroup = 2

function ENT:GetShootPos()
	return self:GetAttachment(1).Pos
end

list.Set( "NPC", "npc_iv04_h3_cov_hunter", {
	Name = "Hunter",
	Class = "npc_iv04_h3_cov_hunter",
	Category = "Halo 3"
} )
