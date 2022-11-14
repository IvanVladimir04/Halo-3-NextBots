AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Hunter"

ENT.AITemplate = "HUNTER"

ENT.Models = {"models/halo_3/characters/covenant/hunter.mdl"}

ENT.Faction = "FACTION_COVENANT"

ENT.StartHealth = 250

ENT.Rank = 2

ENT.MoveSpeed = 75

ENT.MoveSpeedMultiplier = 3

ENT.DisableCorpseShooting = true

ENT.WeakHitGroup = 2

ENT.HunterProjectile = "astw2_halo3_fuelrod_projectile"

ENT.BurstSize = 1

function ENT:GetShootPos()
	return self:GetAttachment(1).Pos
end

list.Set( "NPC", "npc_iv04_h3_cov_hunter_flak", {
	Name = "Hunter (Flak)",
	Class = "npc_iv04_h3_cov_hunter_flak",
	Category = "Halo 3: ODST"
} )
