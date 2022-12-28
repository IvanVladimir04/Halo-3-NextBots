AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Ranged Form"

ENT.AITemplate = "FLOOD_RANGED"

ENT.Models = {"models/halo_3/characters/covenant/hunter.mdl"}

ENT.Faction = "FACTION_FLOOD"

ENT.StartHealth = 700

ENT.Rank = 1

ENT.MoveSpeed = 60

ENT.MoveSpeedMultiplier = 3

ENT.DisableCorpseShooting = true

ENT.WeakHitGroup = 2

ENT.HunterProjectile = "astw2_halo3_hunter_projectile"

ENT.BurstSize = 30

function ENT:GetShootPos()
	return self:GetAttachment(1).Pos
end

list.Set( "NPC", "npc_iv04_h3_fld_pure_form_ranged", {
	Name = "Flood Ranged Form",
	Class = "npc_iv04_h3_fld_pure_form_ranged",
	Category = "Halo 3"
} )
