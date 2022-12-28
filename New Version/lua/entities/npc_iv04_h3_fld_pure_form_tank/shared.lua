AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Tank Form"

ENT.AITemplate = "FLOOD_TANK"

ENT.Models = {"models/halo_3/characters/flood/tank_pure_form.mdl"}

ENT.Faction = "FACTION_FLOOD"

ENT.StartHealth = 400

ENT.Rank = 1

ENT.MoveSpeed = 60

ENT.MoveSpeedMultiplier = 3

ENT.DisableCorpseShooting = true

ENT.DoesntUseWeapons = true

ENT.WeakHitGroup = 2

ENT.VoiceType = "Flood_Tank"

ENT.DisableTalkAnims = true

ENT.VoiceSoundLevel = 70

list.Set( "NPC", "npc_iv04_h3_fld_pure_form_tank", {
	Name = "Flood Tank Form",
	Class = "npc_iv04_h3_fld_pure_form_tank",
	Category = "Halo 3"
} )
