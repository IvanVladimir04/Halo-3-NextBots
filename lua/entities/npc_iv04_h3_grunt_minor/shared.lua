AddCSLuaFile()
ENT.Base 			= "npc_iv04_hr_grunt_ai"
ENT.PrintName = "Grunt"
ENT.StartHealth = 120
ENT.Models = {"models/halo3/grunt.mdl"}

ENT.CovRank = 1

ENT.BackpackModel = "models/halo_reach/characters/covenant/grunt_backpack_default_prop.mdl"

function ENT:DoInit()
	--print(marinevariant)
	--self:SetCollisionBounds(Vector(-30,-30,0),Vector(30,30,80))
	self.Difficulty = GetConVar("halo_reach_nextbots_ai_difficulty"):GetInt()
	self:SetBloodColor(DONT_BLEED)
	self.ShouldWander = false
	self:SetColor(Color(255,136,0,255))
end

list.Set( "NPC", "npc_iv04_h3_grunt_minor", {
	Name = "Grunt Minor",
	Class = "npc_iv04_h3_grunt_minor",
	Category = "Halo 3"
} )