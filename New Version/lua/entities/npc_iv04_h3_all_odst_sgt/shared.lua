AddCSLuaFile()

ENT.Base 			= "npc_iv04_h3_ai"

ENT.PrintName = "ODST Sergeant"

ENT.Models = {"models/halo_3/characters/alliance/odst.mdl"}

ENT.StartHealth = 100

ENT.Relationship = 1

ENT.FriendlyToPlayers = true

ENT.HeadShotImmune = true

--ENT.SpawnWithWeaponDrawn = true

ENT.AITemplate = "MARINE"

ENT.PossibleWeapons = {
	"astw2_halo3_battlerifle",
	"astw2_halo3_shotgun"
}

function ENT:DoInit()
	--print(head)
	self:SetBodygroup(1,math.random(-3,1))
	self:SetBodygroup(2,math.random(-3,1))
	self:SetBodygroup(4,math.random(-3,1))
	self:SetBodygroup(5,math.random(-3,1))
	self:SetBodygroup(3,1)
	if math.random(1,2) == 1 then
		--print("Stacker")
		self.VoiceType = "Stacker"
	else
		--print("Reynolds")
		self.VoiceType = "Reynolds"
	end
	self:SetName(""..self:GetClass().."_"..self:EntIndex().."")
	self.Weapon:SetName(""..self.Weapon:GetClass().."_"..self.Weapon:EntIndex().."")
	--print(self:GetName(),self.Weapon:GetName())
	if self.EnableFlashlight then

	end
end

list.Set( "NPC", "npc_iv04_h3_all_odst_sgt", {
	Name = "ODST (Sergeant)",
	Class = "npc_iv04_h3_all_odst_sgt",
	Category = "Halo 3"
} )