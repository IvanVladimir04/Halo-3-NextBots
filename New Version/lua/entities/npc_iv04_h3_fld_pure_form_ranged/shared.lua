AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Ranged Form"

ENT.AITemplate = "FLOOD_RANGED"

ENT.Models = {"models/halo_3/characters/flood/ranged_pure_form.mdl"}

ENT.Faction = "FACTION_FLOOD"

ENT.StartHealth = 200

ENT.Rank = 1

ENT.MoveSpeed = 0

ENT.MoveSpeedMultiplier = 0

ENT.DisableCorpseShooting = true

ENT.RangedProjectile = "astw2_halo3_rangedform_projectile"

ENT.BurstSize = 6

ENT.CurrentProjectile = 1

function ENT:GetShootPos()
	return self:GetAttachment(self:LookupAttachment(self.RangedAttachments[self.CurrentProjectile])).Pos
end

list.Set( "NPC", "npc_iv04_h3_fld_pure_form_ranged", {
	Name = "Flood Ranged Form",
	Class = "npc_iv04_h3_fld_pure_form_ranged",
	Category = "Halo 3"
} )
