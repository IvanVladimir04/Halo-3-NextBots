AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Stalker Form"

ENT.AITemplate = "FLOOD_STALKER"

ENT.Models = {"models/halo_3/characters/flood/stalker_pure_form.mdl"}

ENT.Faction = "FACTION_FLOOD"

ENT.StartHealth = 200

ENT.Rank = 1

ENT.MoveSpeedMultiplier = 3

ENT.DisableCorpseShooting = true

list.Set( "NPC", "npc_iv04_h3_fld_pure_form_stalker", {
	Name = "Flood Stalker Form",
	Class = "npc_iv04_h3_fld_pure_form_stalker",
	Category = "Halo 3"
} )
