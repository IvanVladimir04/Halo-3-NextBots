AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "Flood Combat Form Brute"

ENT.Models = {"models/halo_3/characters/flood/brute_combat_form.mdl"}

ENT.StartHealth = 120

ENT.Relationship = 4

ENT.AITemplate = "FLOOD_BRUTE"

ENT.Faction = "FACTION_FLOOD"

ENT.GenericWeaponAnims = true

--ENT.SpawnWithWeaponDrawn = true

ENT.PossibleWeapons = {
	"astw2_halo3_spiker",
	"astw2_halo3_spiker",
	"astw2_halo3_spiker",
	"astw2_halo3_plasmapistol",
	"astw2_halo3_needler",
	"astw2_halo3_bruteshot"
}

function ENT:DoInit()
	self.VoiceType = "Flood_Combat_"..math.random(1,2)..""
end

list.Set( "NPC", "npc_iv04_h3_fld_combat_form_brute", {
	Name = "Flood Combat Form Brute",
	Class = "npc_iv04_h3_fld_combat_form_brute",
	Category = "Halo 3"
} )