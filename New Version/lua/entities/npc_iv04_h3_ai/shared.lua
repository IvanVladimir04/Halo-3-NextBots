AddCSLuaFile()
include("voices.lua")
include("behaviors.lua")
include("vehiclestuff.lua")

ENT.Base = "npc_iv04_base"

ENT.YPP = 0
ENT.PPP = 0

ENT.NThink = 0

ENT.TransitionAnims = {}

ENT.TemplateInitialize = {
		["SPARTAN"] = ENT.SpartanInitialize,
		["MARINE"] = ENT.MarineInitialize,
		["ELITE"] = ENT.EliteInitialize,
		["BRUTE"] = ENT.BruteInitialize,
		["GRUNT"] = ENT.GruntInitialize,
		["JACKAL"] = ENT.JackalInitialize,
		["DRONE"] = ENT.DroneInitialize,
		["HUNTER"] = ENT.HunterInitialize,
		["ENGINEER"] = ENT.EngineerInitialize,
		["PROPHET"] = ENT.ProphetInitialize,
		["SCARAB"] = ENT.ScarabInitialize,
		["SENTINEL"] = ENT.SentinelInitialize,
		["ENFORCER"] = ENT.EnforcerInitialize,
		["MONITOR"] = ENT.MonitorInitialize,
		["CONSTRUCTOR"] = ENT.ConstructorInitialize,
		["FLOOD_HUMAN"] = ENT.FloodHumanInitialize,
		["FLOOD_ELITE"] = ENT.FloodEliteInitialize,
		["FLOOD_BRUTE"] = ENT.FloodBruteInitialize,
		["FLOOD_INFECTION"] = ENT.FloodInfectionInitialize,
		["FLOOD_CARRIER"] = ENT.FloodCarrierInitialize,
		["FLOOD_TANK"] = ENT.FloodTankInitialize,
		["FLOOD_STALKER"] = ENT.FloodStalkerInitialize,
		["FLOOD_RANGED"] = ENT.FloodRangedInitialize
}

ENT.TemplateCLInitialize = {
		["SPARTAN"] = ENT.SpartanInitialize,
		["MARINE"] = ENT.MarineInitialize,
		["ELITE"] = ENT.EliteInitialize,
		["BRUTE"] = ENT.BruteInitialize,
		["GRUNT"] = ENT.GruntInitialize,
		["JACKAL"] = ENT.JackalInitialize,
		["DRONE"] = ENT.DroneInitialize,
		["HUNTER"] = ENT.HunterInitialize,
		["ENGINEER"] = ENT.EngineerInitialize,
		["PROPHET"] = ENT.ProphetInitialize,
		["SCARAB"] = ENT.ScarabInitialize,
		["SENTINEL"] = ENT.SentinelInitialize,
		["ENFORCER"] = ENT.EnforcerInitialize,
		["MONITOR"] = ENT.MonitorInitialize,
		["CONSTRUCTOR"] = ENT.ConstructorInitialize,
		["FLOOD_HUMAN"] = ENT.FloodHumanInitialize,
		["FLOOD_ELITE"] = ENT.FloodEliteInitialize,
		["FLOOD_BRUTE"] = ENT.FloodBruteInitialize,
		["FLOOD_INFECTION"] = ENT.FloodInfectionInitialize,
		["FLOOD_CARRIER"] = ENT.FloodCarrierInitialize,
		["FLOOD_TANK"] = ENT.FloodTankInitialize,
		["FLOOD_STALKER"] = ENT.FloodStalkerInitialize,
		["FLOOD_RANGED"] = ENT.FloodRangedInitialize
}

ENT.TemplateBehaviors = {
		["SPARTAN"] = ENT.SpartanBehavior,
		["MARINE"] = ENT.MarineBehavior,
		["ELITE"] = ENT.EliteBehavior,
		["BRUTE"] = ENT.BruteBehavior,
		["GRUNT"] = ENT.GruntBehavior,
		["JACKAL"] = ENT.JackalBehavior,
		["DRONE"] = ENT.DroneBehavior,
		["HUNTER"] = ENT.HunterBehavior,
		["ENGINEER"] = ENT.EngineerBehavior,
		["PROPHET"] = ENT.ProphetBehavior,
		["SCARAB"] = ENT.ScarabBehavior,
		["SENTINEL"] = ENT.SentinelBehavior,
		["ENFORCER"] = ENT.EnforcerBehavior,
		["MONITOR"] = ENT.MonitorBehavior,
		["CONSTRUCTOR"] = ENT.ConstructorBehavior,
		["FLOOD_HUMAN"] = ENT.FloodHumanBehavior,
		["FLOOD_ELITE"] = ENT.FloodEliteBehavior,
		["FLOOD_BRUTE"] = ENT.FloodBruteBehavior,
		["FLOOD_INFECTION"] = ENT.FloodInfectionBehavior,
		["FLOOD_CARRIER"] = ENT.FloodCarrierBehavior,
		["FLOOD_TANK"] = ENT.FloodTankBehavior,
		["FLOOD_STALKER"] = ENT.FloodStalkerBehavior,
		["FLOOD_RANGED"] = ENT.FloodRangedBehavior
}

ENT.TemplateThink = {
		["SPARTAN"] = ENT.SpartanThink,
		["MARINE"] = ENT.MarineThink,
		["ELITE"] = ENT.EliteThink,
		["BRUTE"] = ENT.BruteThink,
		["GRUNT"] = ENT.GruntThink,
		["JACKAL"] = ENT.JackalThink,
		["DRONE"] = ENT.DroneThink,
		["HUNTER"] = ENT.HunterThink,
		["ENGINEER"] = ENT.EngineerThink,
		["PROPHET"] = ENT.ProphetThink,
		["SCARAB"] = ENT.ScarabThink,
		["SENTINEL"] = ENT.SentinelThink,
		["ENFORCER"] = ENT.EnforcerThink,
		["MONITOR"] = ENT.MonitorThink,
		["CONSTRUCTOR"] = ENT.ConstructorThink,
		["FLOOD_HUMAN"] = ENT.FloodHumanThink,
		["FLOOD_ELITE"] = ENT.FloodEliteThink,
		["FLOOD_BRUTE"] = ENT.FloodBruteThink,
		["FLOOD_INFECTION"] = ENT.FloodInfectionThink,
		["FLOOD_CARRIER"] = ENT.FloodCarrierThink,
		["FLOOD_TANK"] = ENT.FloodTankThink,
		["FLOOD_STALKER"] = ENT.FloodStalkerThink,
		["FLOOD_RANGED"] = ENT.FloodRangedThink
}

ENT.TemplateIdle = {
		["SPARTAN"] = ENT.SpartanIdle,
		["MARINE"] = ENT.MarineIdle,
		["ELITE"] = ENT.EliteIdle,
		["BRUTE"] = ENT.BruteIdle,
		["GRUNT"] = ENT.GruntIdle,
		["JACKAL"] = ENT.JackalIdle,
		["DRONE"] = ENT.DroneIdle,
		["HUNTER"] = ENT.HunterIdle,
		["ENGINEER"] = ENT.EngineerIdle,
		["PROPHET"] = ENT.ProphetIdle,
		["SCARAB"] = ENT.ScarabIdle,
		["SENTINEL"] = ENT.SentinelIdle,
		["ENFORCER"] = ENT.EnforcerIdle,
		["MONITOR"] = ENT.MonitorIdle,
		["CONSTRUCTOR"] = ENT.ConstructorIdle,
		["FLOOD_HUMAN"] = ENT.FloodHumanIdle,
		["FLOOD_ELITE"] = ENT.FloodEliteIdle,
		["FLOOD_BRUTE"] = ENT.FloodBruteIdle,
		["FLOOD_INFECTION"] = ENT.FloodInfectionIdle,
		["FLOOD_CARRIER"] = ENT.FloodCarrierIdle,
		["FLOOD_TANK"] = ENT.FloodTankIdle,
		["FLOOD_STALKER"] = ENT.FloodStalkerIdle,
		["FLOOD_RANGED"] = ENT.FloodRangedIdle
}

-------- Default stuff (you shouldn't touch anything above this)

-------- Base behavior stuff

ENT.PrintName = "Spartan" -- Name shown in killfeed

ENT.StartHealth = 100 -- Self explanatory

ENT.CustomIdle = true
ENT.BehaviourType = 3
ENT.SightType = 2
ENT.Faction = "FACTION_GENERIC" -- Replace with your own faction, like FACTION_COVENANT
ENT.AITemplate = "SPARTAN"
--[[
	What kind of AI this is, possible values:
		"SPARTAN",
		"MARINE",
		"ELITE",
		"BRUTE",
		"GRUNT",
		"JACKAL",
		"DRONE",
		"HUNTER",
		"ENGINEER",
		"PROPHET",
		"SCARAB",
		"SENTINEL",
		"ENFORCER",
		"MONITOR",
		"CONSTRUCTOR",
		"FLOOD_HUMAN",
		"FLOOD_ELITE",
		"FLOOD_BRUTE",
		"FLOOD_INFECTION",
		"FLOOD_CARRIER",
		"FLOOD_TANK",
		"FLOOD_STALKER",
		"FLOOD_RANGED"
]]
ENT.AIType = "Offensive"

-------- Damage variables

ENT.ImmuneDMGs = { -- Add whatever damage you want the nextbot to be immune
	--[[ to by setting the thing to true and adding a coma until you reach the last one
		[DMG_GENERIC] = false,
		[DMG_CRUSH] = false,
		[DMG_BULLET] = false,
		[DMG_SLASH] = false,
		[DMG_BURN] = false,
		[DMG_VEHICLE] = false,
		[DMG_FALL] = false,
		[DMG_BLAST] = false,
		[DMG_CLUB] = false,
		[DMG_SHOCK] = false,
		[DMG_SONIC] = false,
		[DMG_ENERGYBEAM] = false,
		[DMG_PREVENT_PHYSICS_FORCE] = false,
		[DMG_NEVERGIB] = false,
		[DMG_ALWAYSGIB] = false,
		[DMG_DROWN] = false,
		[DMG_PARALYZE] = false,
		[DMG_NERVEGAS] = false,
		[DMG_POISON] = false,
		[DMG_RADIATION] = false,
		[DMG_DROWNRECOVER] = false,
		[DMG_ACID] = false,
		[DMG_SLOWBURN] = false,
		[DMG_REMOVENORAGDOLL] = false,
		[DMG_PHYSGUN] = false,
		[DMG_PLASMA] = false,
		[DMG_AIRBOAT] = false,
		[DMG_DISSOLVE] = false,
		[DMG_BLAST_SURFACE] = false,
		[DMG_DIRECT] = false,
		[DMG_BUCKSHOT] = false,
		[DMG_SNIPER] = false,
		[DMG_MISSILEDEFENSE] = false
	]]
}

ENT.AllowHealthRegeneration = false 
ENT.HealthRegenTimeDelay = 2
ENT.HealthRegenTime = 4
--[[ 
	Health regeneration in Halo 3 works way differently from other games,
	When a nextbot is damaged, it'll wait X seconds before it starts
	regenerating health slowly, but if it is damaged while regenerating health,
	the current timer stops and the delay is set again, meaning that if a nextbot
	doesn't fully regenerate before it is damaged again, after regenerating its
	health won't be the same as the starting health
]]

ENT.BloodType = DONT_BLEED

-------- Damage variables

--[[ Code for sentinel trails
	util.SpriteTrail( self, 5, Color( 35, 100, 255 ), false, 4, 16, 0.3, 1 / ( 15 + 1 ) * 1, "effects/halo3/beam" )
	util.SpriteTrail( self, 6, Color( 35, 100, 255 ), false, 4, 16, 0.3, 1 / ( 15 + 1 ) * 1, "effects/halo3/beam" )
]] 

-------- Base behavior stuff

-------- Melee variables

ENT.HasMeleeSound = false -- Useless varlable left for compatibility
ENT.CanMeleeSound = true -- Same as above

--[[ All the "can play X sound" variables have been rendered obsolete
	Because the Speak() function automatically checks if the sound is in fact valid
	If not, then ignore it
	The only real universal exception are the footstep sounds because they can play
	At any time and of course, nextbot specific exceptions like the hunters
]]

-- Melee quote can be found in the quotes section!

ENT.MeleeCooldownMin = 5 -- Once the nextbot does its melee, the cooldown will be
ENT.MeleeCooldownMax = 10 -- Random between Min and Max
ENT.MeleeAnimsHits = {

	--[[
		Here individually list the animations you defined in your melee animations
		table like the following example:
		
			["rifle_melee_front_1"] = 0.6
		
		What we are doing is add "rifle_melee_front_1" (which has to be in the melee
		animations table too), and define a number from 0 to 1, decimals allowed,
		once the animation reaches a certain % of the animation (which translates
		through the number we set this to), it will deal melee damage, this
		way we can control when every single animation hits, so they look 
		coherent without editing the function itself
	]]

}

ENT.MeleeDamageType = DMG_SLASH
ENT.MeleeBackHitsInstantKill = true -- If set to true, being hit on the back with melee damage is instant kill

-------- Melee variables

-------- Reload variables

ENT.ReloadTime = 2

-------- Reload variables

-------- Sound variables

ENT.MeleeQuote = "melee" -- I don't suggest leaving it as nil

ENT.SpeakSpeed = 0.25 -- Speed at which the mouth moves when talking
ENT.SpeakCycle = 0.75 -- Point from 0 to 1 at which the animation starts
ENT.BlinkSpeed = 0.1 -- The blink speed is actually very fast for 0.1 don't worry

ENT.AllowSounds = {
	["Footstep"] = true
}

-------- Sound variables

-------- Initialize functions

if CLIENT then

	function ENT:Initialize()
		local func = self.TemplateCLInitialize[self.AITemplate]
		func(self)
		self.Think = self.TemplateThink[self.AITemplate]
	end

end

function ENT:PreInit()
	self.CustomBehaviour = self.TemplateBehaviors[self.AITemplate]
	self.DoCustomIdle = self.TemplateIdle[self.AITemplate]
	self.Think = self.TemplateThink[self.AITemplate]
end

function ENT:OnInitialize()
	local func = self.TemplateInitialize[self.AITemplate]
	func(self)
	if self.PossibleWeapons then
		local wep = table.Random(self.PossibleWeapons)
		self:Give(wep)
	end
	self:SetBloodColor(self.BloodType)
	self:SetupAnimations()
end

ENT.RifleHolds = {
	["crossbow"] = true,
	["ar2"] = true,
	["smg"] = true,
	["shotgun"] = true
}

ENT.PistolHolds = {
	["pistol"] = true,
	["revolver"] = true
}

ENT.BruteWeapons = {
	["astw2_halo3_spiker"] = true,
	["astw2_halo3_mauler"] = true
}

ENT.TotalHolds = {
	["crossbow"] = true,
	["ar2"] = true,
	["shotgun"] = true,
	["pistol"] = true,
	["revolver"] = true,
	["smg"] = true,
	["rpg"] = true
}

function ENT:SetupAnimations()
	if IsValid(self.Weapon) then
		local hold = self:ConfigureWeapon()
		if self.AITemplate == "BRUTE" and self.BruteWeapons[self.Weapon:GetClass()] then
			hold = "pistol"
		end
		if self.PistolHolds[hold] then
			self.IdleAnim = {"Combat_Pistol_Idle_Up"}
			self.IdleCalmAnim = {"Combat_Pistol_Idle_Down"}
			self.RunAnim = {"Move_Combat_Pistol_Up"}
			self.RunCalmAnim = {"Move_Combat_Pistol_Down"}
			self.WalkAnim = {"Walk_Combat_Pistol_Up"}
			self.WalkCalmAnim = {"Walk_Combat_Pistol_Down"}
			self.MeleeAnim = {"Melee_Combat_Pistol_1"}
			self.MeleeBackAnim = {"Melee_Back_Combat_Pistol"}
			self.ReloadAnim = "Reload_Combat_Pistol"
			self.DiveLeftAnim = "Dive_Left_Combat_Pistol"
			self.DiveRightANim = "Dive_Right_Combat_Pistol"
			self.AirAnim = "Airborne_Combat_Pistol"
			self.LandAnim = "Land_Soft_Combat_Pistol"
			self.LandHardAnim = "Land_Hard_Combat_Pistol"
			self.SurpriseAnim = "Surprised_Combat_Pistol"
			self.WarnAnim = {"Point_Combat_Pistol",}
			self.CrouchMoveCalmAnim = {"pistol_crouch_move_passive"}
			self.GrenadeAnim = {"Throw_Grenade_Combat_Pistol"}
			self.PushLeftAnim = "Melee_Smash_Combat_Pistol_Left"
			self.PushLeftAnim = "Right_Smash_Combat_Pistol_Left"
			self.TauntAnim = {"Taunt_Combat_Pistol"}
			self.WarthogPassengerIdle = "Warthog_Passenger_Idle_Pistol"
			if self.Weapon:GetClass() == "astw2_halo3_magnum" or self.Weapon:GetClass() == "astw2_halo3_magnum_odst" then
				self.Weapon.BurstLength = 4
			end
			self.WaveAnim = "Wave_Combat_Pistol"
			self.ShakeFistAnim = {"Shakefist_Combat_Pistol_1","Shakefist_Combat_Pistol_2","Shakefist_Combat_Pistol_3"}
			self.AdvanceAnim = "Signal_Advance_1_Combat_Pistol"
			self.CheerAnim = "Cheer_Combat_Pistol"
			self.SignalAttackAnim = "Signal_Attack_Combat_Pistol"
			self.WaveAnimGesture = false
			self.AllowGrenade = true
			self.CanMelee = true
			self.DodgeLeftAnim = "Evade_Left_Combat_Pistol"
			self.DodgeRightAnim = "Evade_Right_Combat_Pistol"
			self.FallbackAnim = "Signal_Fallback_Combat_Pistol"
			self.HoldAnim = "Signal_Hold_Combat_Pistol"
			self.EquipmentAnim = "Throw_Equipment_Combat_Pistol"
			self.TransitionAnims["Move_2_Idle"] = "Combat_Pistol_Move_2_Combat_Idle"
			self.TransitionAnims["Move_2_Idle_Passive"] = "Combat_Pistol_Move_2_Combat_Idle"
			self.TransitionAnims["Walk_2_Idle"] = "Combat_Pistol_Walk_2_Combat_Idle"
			self.TransitionAnims["Walk_2_Idle_Passive"] = "Combat_Pistol_Walk_2_Combat_Idle"
			self.TransitionAnims["Idle_2_Move"] = "Combat_Pistol_Idle_2_Combat_Move"
			self.TransitionAnims["Idle_2_Move_Passive"] = "Combat_Pistol_Idle_2_Combat_Move"
			self.TransitionAnims["Idle_2_Walk"] = "Combat_Pistol_Idle_2_Combat_Walk"
			self.TransitionAnims["Idle_2_Walk_Passive"] = "Combat_Pistol_Idle_2_Combat_Walk"
			--[[self.TransitionAnims["Idle_2_Guard"] = "pistol_idle_2_guard_idle"
			self.TransitionAnims["Idle_2_Crouch"] = "pistol_idle_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "pistol_crouch_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "pistol_crouch_move_2_crouch_idle_passive"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "pistol_crouch_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "pistol_crouch_walk_2_crouch_idle_passive"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "pistol_crouch_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "pistol_crouch_idle_2_crouch_move_passive"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "pistol_crouch_idle_2_crouch_walk"
			self.TransitionAnims["Crouch_Idle_2_Guard"] = "pistol_crouch_idle_2_guard_idle"
			self.TransitionAnims["Crouch_Idle_2_Idle"] = "pistol_crouch_idle_2_idle"]]
		elseif self.RifleHolds[hold] then
			if self.Weapon:GetClass() == "astw2_halo3_sniper_rifle" then
				self.Weapon.BurstLength = 1
				self.ShootAnim = {"rifle_br_fire_1","rifle_br_fire_2"}
			elseif hold == "ar2" then
				self.ShootAnim = {"rifle_br_fire_1","rifle_br_fire_2"}
			elseif hold == "shotgun" then
				self.Weapon.Acc = 0
				self.Weapon.Primary.RecoilAcc = 0
				self.WeaponAccuracy = 9
				self.Weapon.BurstLength = 1
				self.ShootAnim = {"rifle_sg_fire"}
				self:DoGestureSeq("rifle_sg_grip",false)
			elseif hold == "smg" then
				self.ShootAnim = {"rifle_br_fire_1","rifle_br_fire_2"}
				self:ManipulateBoneAngles(self:LookupBone("l_hand"),Angle(0,0,90))
			else
				self.ShootAnim = {"rifle_br_fire_1","rifle_br_fire_2"}
			end
			self.IdleAnim = {"Combat_Rifle_Idle_Up"}
			self.IdleCalmAnim = {"Combat_Rifle_Idle_Down"}
			self.RunAnim = {"rifle_move"}
			self.RunCalmAnim = {"rifle_move_passive"}
			self.WalkAnim = {"rifle_walk"}
			self.MeleeAnim = {"rifle_melee_1","rifle_melee_2"}
			self.ReloadAnim = "rifle_reload"
			self.CalmTurnLeftAnim = "any_turn_left"
			self.CalmTurnRightAnim = "any_turn_right"
			self.TurnLeftAnim = "rifle_turn_left"
			self.TurnRightAnim = "rifle_turn_right"
			self.CrouchTurnLeftAnim = "rifle_crouch_turn_left"
			self.CrouchTurnRightAnim = "rifle_crouch_turn_right"
			self.AirAnim = "rifle_airborne"
			self.LandAnim = "rifle_land_soft"
			self.LandHardAnim = "rifle_land_hard"
			self.SurpriseAnim = "rifle_warn"
			self.WarnAnim = {"rifle_warn"}
			self.CrouchMoveCalmAnim = {"rifle_crouch_move_passive"}
			self.CrouchIdleAnim = {"rifle_br_crouch_idle"}
			self.CrouchMoveAnim = {"rifle_crouch_move"}
			self.GrenadeAnim = {"rifle_throwgrenade_1","rifle_throwgrenade_2"}
			self.CrouchGrenadeAnim = "rifle_crouch_throw_grenade"
			self.WarthogPassengerIdle = "rifle_warthog_p_idle"
			self.PushAnim = {"rifle_smash"}
			self.WaveAnim = "rifle_wave"
			self.ShakeFistAnim = "rifle_shakefist"
			self.AdvanceAnim = "rifle_advance"
			self.CheerAnim = "rifle_cheer"
			self.AllowGrenade = true
			self.CanShootCrouch = true
			self.CanMelee = true
			self.TauntAnim = {"rifle_taunt_1","rifle_taunt_2"}
			self.DodgeLeftAnim = "rifle_dodge_left"
			self.DodgeRightAnim = "rifle_dodge_right"
			self.FallbackAnim = "rifle_fallback"
			self.TransitionAnims["Move_2_Idle"] = "rifle_move_2_idle"
			self.TransitionAnims["Move_2_Idle_Passive"] = "rifle_move_2_idle_passive"
			self.TransitionAnims["Walk_2_Idle"] = "rifle_walk_2_idle"
			self.TransitionAnims["Walk_2_Idle_Passive"] = "rifle_walk_2_idle_passive"
			self.TransitionAnims["Idle_2_Move"] = "rifle_idle_2_move"
			self.TransitionAnims["Idle_2_Move_Passive"] = "rifle_idle_2_move_passive"
			self.TransitionAnims["Idle_2_Walk"] = "rifle_idle_2_walk"
			self.TransitionAnims["Idle_2_Walk_Passive"] = "rifle_idle_2_walk_passive"
			self.TransitionAnims["Idle_2_Guard"] = "rifle_idle_2_guard_idle"
			self.TransitionAnims["Idle_2_Crouch"] = "rifle_idle_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "rifle_crouch_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "rifle_crouch_move_2_crouch_idle_passive"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "rifle_crouch_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "rifle_crouch_walk_2_crouch_idle_passive"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "rifle_crouch_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "rifle_crouch_idle_2_crouch_move_passive"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "rifle_crouch_idle_2_crouch_walk"
			self.TransitionAnims["Crouch_Idle_2_Guard"] = "rifle_crouch_idle_2_guard_idle"
			self.TransitionAnims["Crouch_Idle_2_Idle"] = "rifle_crouch_idle_2_idle"
		elseif hold == "rpg" then
			self.IdleAnim = {"Combat_Support_Idle_Up"}
			self.IdleCalmAnim = {"Combat_Support_Idle_Down"}
			self.RunAnim = {"missile_move"}
			self.WalkAnim = {"missile_walk"}
			self.RunCalmAnim = {"missile_move_passive"}
			self.ShootAnim = {"missile_fire"}
			self.ReloadAnim = "rockets_reload"
			self.AirAnim = "missile_airborne"
			self.LandAnim = "missile_land_soft"
			self.LandHardAnim = "missile_land_hard"
			self.CalmTurnLeftAnim = "any_turn_left"
			self.CalmTurnRightAnim = "any_turn_right"
			self.TurnLeftAnim = "missile_turn_left"
			self.TurnRightAnim = "missile_turn_right"
			self.CrouchTurnLeftAnim = "missile_crouch_turn_left"
			self.CrouchTurnRightAnim = "missile_crouch_turn_right"
			self.SurpriseAnim = "missile_surprise_front"
			self.WarnAnim = {"missile_warn"}
			self.CrouchIdleAnim = {"missile_crouch_idle"}
			self.CrouchMoveAnim = {"missile_crouch_move"}
			self.WarthogPassengerIdle = "Warthog_Passenger_Idle_Missile"
			self.PushAnim = {"missile_smash"}
			self.WaveAnim = "missile_wave"
			self.AdvanceAnim = "missile_advance"
			self.ShakeFistAnim = "missile_shakefist"
			self.CheerAnim = "missile_cheer"
			self.AllowGrenade = false
			self.CanShootCrouch = true
			self.CanMelee = false
			self.TauntAnim = {"missile_taunt"}
			self.DodgeLeftAnim = "missile_dodge_left"
			self.DodgeRightAnim = "missile_dodge_right"
			self.FallbackAnim = "missile_fallback"
			self.TransitionAnims["Move_2_Idle"] = "missile_move_2_idle"
			self.TransitionAnims["Move_2_Idle_Passive"] = "missile_move_2_idle_passive"
			self.TransitionAnims["Walk_2_Idle"] = "missile_walk_2_idle"
			self.TransitionAnims["Walk_2_Idle_Passive"] = "missile_walk_2_idle_passive"
			self.TransitionAnims["Idle_2_Move"] = "missile_idle_2_move"
			self.TransitionAnims["Idle_2_Move_Passive"] = "missile_idle_2_move_passive"
			self.TransitionAnims["Idle_2_Walk"] = "missile_idle_2_walk"
			self.TransitionAnims["Idle_2_Walk_Passive"] = "missile_idle_2_walk_passive"
			self.TransitionAnims["Idle_2_Guard"] = "missile_idle_2_guard_idle"
			self.TransitionAnims["Idle_2_Crouch"] = "missile_idle_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "missile_crouch_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "missile_crouch_move_2_crouch_idle_passive"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "missile_crouch_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "missile_crouch_walk_2_crouch_idle_passive"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "missile_crouch_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "missile_crouch_idle_2_crouch_move_passive"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "missile_crouch_idle_2_crouch_walk"
			self.TransitionAnims["Crouch_Idle_2_Idle"] = "missile_crouch_idle_2_idle"
		end
	else
		self.IdleAnim = {"Combat_Unarmed_Idle_Down"}
		self.WaveAnim = "any_wave"
		self.ShakeFistAnim = "any_shakefist"
		self.TauntAnim = {"taunt"}
		self.FallbackAnim = "any_fallback"
		self.BraceAnim = "any_brace"
		self.AdvanceAnim = "any_advance"
	end
end

function ENT:HandleStanding()
end

function ENT:ConfigureWeapon()
	local hold = self.Weapon.HoldType_Aim
	if !self.Weapon.NextPrimaryFire then self.Weapon.NextPrimaryFire = CurTime() end
	local relo = self.Weapon.AI_Reload
	self:SetNWEntity("wep",self.Weapon)
	self.Weapon.TrueScope = false
	self.Weapon.AI_Reload = function()
		relo(self.Weapon)
		self:DoAnimationEvent(1689)
	end
	return hold
end

-------- Initialize functions

-------- Misc functions

function ENT:FaceTowards(pos) -- You put a position (vector) and the nextbot's Yaw will face it
	local angy = (pos-self:GetPos()):GetNormalized():Angle().y
	self:SetAngles(self:GetAngles().p,angy,0)
end

function ENT:GoToPosition( pos, anim, speed, movefunc )
	movefunc = movefunc or self:MoveToPos(pos)
	--[[ movefunc can be used like this
self:GoToPosition(ent:GetPos(),self:TableRandom(self.RunAnim),self:GetRunSpeed(),self:WanderToPos(pos))
	]]
	if !util.IsInWorld( pos ) then return "Tried to move out of the world!" end
	local ani, typ = self:TransitionChecks( anim, speed )
	local enemy = IsValid(self.Enemy)
	if type(anim) == "string" then
		self:ResetSequence( anim )
	else
		self:StartActivity( anim )			-- Move animation
	end
	self.loco:SetDesiredSpeed( speed )		-- Move speed
	self.loco:SetAcceleration( speed+speed )
	movefunc(self)
	self:TransitionArrival(typ,enemy)
	local ranim = self.IdleAnim[math.random(#self.IdleAnim)]
	if type(ranim) == "string" then
		self:ResetSequence( ranim )
	else
		self:StartActivity( ranim )			-- Move animation
	end
end	

function ENT:DoTransitionAnim( typ )
	if !typ then return end
	if !self.TransitionAnims[typ] then return end
	--print(typ,self.TransitionAnims[typ])
	self:PlaySequenceAndWait( self.TransitionAnims[typ] )
end

function ENT:TransitionChecks( anim, speed )
	local str
	local kind
	-- TO DO: Re-port crouch move start animations
--	if speed == self.MoveSpeed*0.5 then
		--str = "Crouch_Idle_2_Crouch_Walk"
		--kind = "Crouch_Walk"
	if speed == self.MoveSpeed then
		if self.GoingForSneakKill then
			--if IsValid(self.Enemy) then
			--str = "Crouch_Idle_2_Crouch_Move"
			--else
				--str = "Crouch_Idle_2_Crouch_Move_Passive"
			--end
			--kind = "Crouch_Move"
			return false
		else
			if IsValid(self.Enemy) then
				str = "Idle_2_Walk"
			else
				str = "Idle_2_Walk_Passive"
			end
			kind = "Walk"
		end
	elseif speed == (self.MoveSpeed*self.MoveSpeedMultiplier) then
		if IsValid(self.Enemy) then
			str = "Idle_2_Move"
		else
			str = "Idle_2_Move_Passive"
		end
		kind = "Move"
	end
	self:DoTransitionAnim(str)
	return str, kind
end

function ENT:TransitionArrival( typ, enemy )
	local str
	if typ == "Walk" then
		if enemy then
			str = "Walk_2_Idle"
		else
			str = "Walk_2_Idle_Passive"
		end
	elseif typ == "Move" then
		if enemy then
			str = "Move_2_Idle"
		else
			str = "Move_2_Idle_Passive"
		end
	elseif typ == "Crouch_Walk" then
		if enemy then
			str = "Crouch_Walk_2_Crouch_Idle"
		else
			str = "Crouch_Walk_2_Crouch_Idle_Passive"
		end
	elseif typ == "Crouch_Move" then
		--if enemy then
		str = "Crouch_Move_2_Crouch_Idle"
		--else
		--	str = "Crouch_Move_2_Crouch_Idle_Passive"
		--end
	end
	self:DoTransitionAnim(str)
	return str
end

function ENT:Speak(voice,character)
	if self.Infected then return end
	local character = character or self.Voices[self.VoiceType]
	if character and character[voice] and istable(character[voice]) then
		if self.CurrentSound then self.CurrentSound:Stop() end
		local sound = table.Random(character[voice])
		self.CurrentSound = CreateSound(self,sound)
		self.CurrentSound:SetSoundLevel(100)
		self.CurrentSound:Play()
		self:MoveMouth()
	--else
		--print("nosound",character,character[voice],istable(character[voice]),voice,self.VoiceType)
	end
end

function ENT:HasValidQuote(voice,character)
	local character = character or self.Voices[self.VoiceType]
	if character and character[voice] and istable(character[voice]) then
		return true
	end
	return false
end

-------- Misc functions

-------- Melee functions

function ENT:DoMelee(ent) -- In case you want to melee a specific entity, use the ent argument when calling this
	self:Speak(self.MeleeQuote)
	if IsValid(ent or self.Enemy) then -- If no ent argument, use self.Enemy as target instead
		local ang = (self.Enemy:GetPos()-self:GetPos()):GetNormalized():Angle()
		self:SetAngles(Angle(0,ang.y,0))
	end	
	self.DoneMelee = true -- Melee cooldown
	self.DoingMelee = true -- Immediate melee animation cooldown (to stop other parts of the AI)
	timer.Simple( math.random(self.MeleeCooldownMin,self.MeleeCooldownMax), function()
		if IsValid(self) then
			self.DoneMelee = false -- Remove melee cooldown
		end
	end )
	local anim = self.MeleeAnim[math.random(#self.MeleeAnim)]
	local id, len = self:LookupSequence(anim)
	local hittime = self.MeleeAnimsHits[anim]
	timer.Simple( len*hittime, function() -- Set up a timer for the melee hit
		if IsValid(self) then
			self:DoMeleeDamage()
		end
	end )
	timer.Simple( len, function()
		if IsValid(self) then
			self.DoingMelee = false -- Remove the busy animation status
		end
	end )
	self:PlaySequenceAndPWait(anim,1,self:GetPos())
end

function ENT:DoMeleeDamage() -- No arguments needed, everything is defined on the variables
	local damage = self.MeleeDamage
	for	k,v in pairs(ents.FindInCone(self:WorldSpaceCenter()+self:GetUp()*20, self:GetForward(), self.MeleeRange,  math.cos( math.rad( self.MeleeConeAngle ) ))) do
		if v != self and self:CheckRelationships(v) != "friend" then
			--print(v)
			--v:EmitSound( self.OnMeleeSoundTbl[math.random(1,#self.OnMeleeSoundTbl)] )
			if v:IsPlayer() then
				v:ViewPunch( self.ViewPunchPlayers )
			end
			if IsValid(v:GetPhysicsObject()) then
				v:GetPhysicsObject():ApplyForceCenter( v:GetPhysicsObject():GetPos() +((v:GetPhysicsObject():GetPos()-self:GetPos()):GetNormalized())*self.MeleeForce )
			end
			local ang = (self:WorldSpaceCenter()-v:WorldSpaceCenter()):Angle()
			local dif = math.AngleDifference(ang.y,v:GetAngles().y)
			if dif < 0 then dif = dif + 360 end
			--print(dif)
			if dif > 120 and dif < 240 then 
				damage = v:Health()
			end
			local d = DamageInfo()
			d:SetDamage( damage )
			d:SetAttacker( self )
			d:SetInflictor( self )
			d:SetDamageType( self.MeleeDamageType )
			d:SetDamagePosition( v:NearestPoint( self:WorldSpaceCenter() ) )
			v:TakeDamageInfo(d)
		end
	end
end

-------- Melee functions

-------- Weapon functions

function ENT:GetShootPos() -- Where to calculate the aiming from
	if IsValid(self:GetActiveWeapon()) then -- If we have a weapon, use the muzzle
		return self:GetActiveWeapon():GetAttachment(self:GetActiveWeapon():LookupAttachment("muzzle")).Pos
	else
		return self:WorldSpaceCenter() -- Otherwise use the entity's center
	end
end

function ENT:GetAimVector(pos) -- Where to direct the aiming
	if self.IsControlled then -- If controlled, use the player's aim instead
		return self.DPly:GetAimVector()
	end
	local dir -- Variable that can be modified
	if self.SpecificGoal then -- If there's a specific goal to the nextbot
		dir = (self.SpecificGoal-self:GetShootPos()):GetNormalized()
	end
	if IsValid(self.Enemy) then -- If there's an enemy alive
		local p = self.Enemy:WorldSpaceCenter()
		if pos then p = pos end -- If the pos argument is given, use it instead
		if self.GetShootPos then -- If GetShootPos exists (and it should)
			return (p-self:GetShootPos()):GetNormalized()
		else -- Otherwise rely on good old center
			return (p-self:WorldSpaceCenter()):GetNormalized()
		end
	else
		return dir or self:GetForward() -- Either return the dir or the nextbot's forward
	end
end

function ENT:GetActiveWeapon()
	return self.Weapon
end

function ENT:Give(wep,drawn) -- You write in a weapon in a string, like self:Give("weapon_smg1")
	local wep = ents.Create(wep)
	local att = drawn and "anim_attachment_RH" or "sidearm"
	local id = self:LookupAttachment(att)
	local pos = self:GetAttachment(id).Pos
	wep:SetOwner(self)
	wep:SetPos(pos)
	wep:Spawn()
	wep:PhysicsInit(SOLID_NONE)	
	wep:SetSolid(SOLID_NONE)
	wep:SetParent(self,id)
	wep:Fire("setparentattachment", att)
	if drawn then
		wep:AddEffects(EF_BONEMERGE)
	else
	end
	self.Weapon = wep
end

function ENT:GetAmmoCount()
	return self.CurMag -- Get current mag
end

function ENT:SetAmmo(ammo)
	self.CurMag = ammo -- Set current mag
end

--[[

	Function: 
		DoAnimationEvent
	Arguments:
		1, (a)
	Argument description:
		1, type of animation event, usually the reload animation event (by default set as 1689)
	Function use:
		Play reload animation and fill the weapon's clip

]]

function ENT:DoAnimationEvent(a)
	if a == 1689 then
		local wep = self.Weapon
		if CLIENT then wep = self:GetNWEntity("wep") end
		local time = self.ReloadTime -- This can be any number, represents seconds, will define when will the clip refill
		timer.Simple( time, function()
			if IsValid(self) and IsValid(wep) then
				self:SetAmmo(wep:GetMaxClip1()) -- Order the nextbot to syncronize its registered clip with 
				wep:SetClip1(wep:GetMaxClip1()) -- The weapon's new clip
			end
		end )
		if !CLIENT then
			local a,len = self:LookupSequence("pistol_reload") -- LookupSequence finds the id of a string (name) of animation
			local func = function() -- Prepare a function to add to the behavior
				self:PlaySequenceAndWait(a) -- Play the sequence
			end
			table.insert(self.StuffToRunInCoroutine,func) -- Place the function in queue
			self:ResetAI() -- Let the AI know it should recalculate what to do
		end
	end
end

function ENT:GetCurrentWeaponProficiency()
	return self.Difficulty or 1 -- If difficulty is defined (and has to be a number)
end -- then use it instead of 1 as a default

-------------- Weapon functions

-------------- Other combat functions

function ENT:OnInjured(dmg)
	--print(dmg:GetInflictor())
	local rel = self:CheckRelationships(dmg:GetAttacker())
	local ht = self:Health()
	--ParticleEffect( self.BloodEffect, dmg:GetDamagePosition(), Angle(0,0,0), self )
	if rel == "friend" and !dmg:GetAttacker():IsPlayer() then
		if self.BeenInjured then
			dmg:ScaleDamage(0)
			return
		else
			self.BeenInjured = true
			timer.Simple( math.random(5,10), function()
				if IsValid(self) then
					self.BeenInjured = false
				end
			end )
		end
	end
	if math.abs(self:Health()) - math.abs(dmg:GetDamage()) <= 0 then return end
	if self.AnimBusy then return end
	if self.ImmuneDMGs[dmg:GetDamageType()] then dmg:ScaleDamage(0) end
	if IsValid(self.Enemy) then
		--print(#self:PossibleTargets())
		if rel == "foe" and ( !self.Switched ) then 
			self.Switched = true
			timer.Simple( math.random(3,6), function()
				if IsValid(self) then
					self.Switched = false
				end
			end )
			self:SetEnemy(dmg:GetAttacker()) 
			self:ResetAI()
		end
		if (self:Health() < self.StartHealth/2 or #self:PossibleTargets() > 4 )and !self.Covered then
			if self:Health() < self.StartHealth/4 then
				if math.random(1,2) == 1 then
					self:Speak("pld")
				end
			else
				if CombatHurtComment and !CombatHurtCommenter then
					CombatHurtCommenter = self
					timer.Simple( math.random(3,4), function()
						if IsValid(self) then
							self:Speak("whn_re")
						end
					end )
				end
					if self:Health() < self.StartHealth/2 then
					if !CombatHurtComment then
						CombatHurtComment = true
						timer.Simple( 30, function()
							CombatHurtComment = false
							CombatHurtCommenter = nil
							if IsValid(self) then
								self.CommentedCombatHurt = false
							end
						end )
							self.CommentedCombatHurt = true
						self:Speak("whn")
					end
				end
			end
			self.Covered = true
			self.NeedsToCover = true
			timer.Simple( math.random(10,20), function()
				if IsValid(self) then
					self.Covered = false
				end
			end )
		end
	else
		if rel == "foe" then
			self:SetEnemy(dmg:GetAttacker()) 
		end
	end
	if !self.SpokeInjured then
		self.SpokeInjured = true
		timer.Simple( math.random(5,10), function()
			if IsValid(self) then
				self.SpokeInjured = false
			end
		end )
		if dmg:GetDamage() > 10 and dmg:GetDamage() <= 20 then
			self:Speak("pain_mdm")
		elseif dmg:GetDamage() > 20 then
			self:Speak("pain_mjr")
		else
			if math.random(1,2) == 1 then
				self:Speak("pain")
			else
				timer.Simple( math.random(0.5,1.5), function()
					if IsValid(self) then
						--self:Speak("OnUnderAttack")
					end
				end )
			end
		end
		if dmg:GetAttacker():IsPlayer() and self:CheckRelationships(dmg:GetAttacker()) == "friend" then
			timer.Simple( math.random(2,3), function()
				if IsValid(self) then
					self:Speak("scld_plr_hrtme")
				end
			end )
		end
	end
	if self.Unkillable then
		dmg:SetDamage(0)
	elseif self.AllowHealthRegeneration then
		local total = dmg:GetDamage()
		--print(self.Shield, "before")
		self.HealthActual = self:Health()
		self.HealthH = CurTime()
		local htt = CurTime()
		local htl = self:Health()
		local dm = dmg:GetDamage()
		local ht = self:Health()-math.abs(dm)
		--print(self.Shield, "now")
		timer.Simple( self.HealthRegenTimeDelay, function()
			if IsValid(self) and htt == self.HealthH then
				--print("Starting regeneration")
				for i = 1, 10 do
					timer.Simple( (HealthRegenTime*0.1)*i, function()
						if IsValid(self) and htl == self.HealthActual and self:Health() > 0 then
							--print("Regenerating", (self.HealthActual-ht)/10)
							self:SetHealth(self:Health()+((self.HealthActual-ht)/10))
						end
					end )
				end
			end
		end )
	end
end

function ENT:Turn(dif,calm,anim) -- dif is the yaw number to turn, can be negative
	calm = calm or false -- calm is true or false and can be used for calm animations
	anim = anim or true -- anim determines if play an animation when turning
	local seq
	local e
	if dif < 0 then -- Left
		e = 1
		if calm then
			seq = self.CalmTurnLeftAnim
		else
			seq = self.TurnLeftAnim
		end
	else -- Right
		e = -1
		if calm then
			seq = self.CalmTurnRightAnim
		else
			seq = self.TurnRightAnim
		end
	end
	local id, len = self:LookupSequence(seq)
	local t
	if math.abs(dif) > 140 then -- Not turning more than 140 degrees
		t = 1
	else
		t = math.abs(dif)/140
	end
	local z = len*t
	for i = 1, 140*t do -- Maximum turn angle is 140, we'll turn whatever degrees
		timer.Simple( (0.001*i)+z, function() -- we are given, using the timers
			if IsValid(self) then -- to know when to stop
				self:SetAngles(self:GetAngles()+Angle(0,e,0))
			end
		end )
	end
	if anim then
		self:SetSequence(seq) -- Turn animation
		self:ResetSequenceInfo() -- Clean things up
		self:SetCycle( 0 ) -- For the turn animation
		self:SetPlaybackRate( 1 ) -- To play correctly
		coroutine.wait(z)
		self:ResetSequence(self.IdleAnim[math.random(#self.IdleAnim)]) -- Go back to an idle animation
	end
end

-------------- Other combat functions

-------------- Cosmetic functions

function ENT:MoveMouth()
	self:DoGestureSeq("pose_face",true,self.SpeakSpeed,self.SpeakCycle)
end

function ENT:PoseEyes()
	self:DoGestureSeq("pose_eyes",true,self.BlinkSpeed)
end

function ENT:FootstepSound()
	local character = self.Voices[self.VoiceType]
	if character and character["OnStep"] and istable(character["OnStep"]) then
		local sound = table.Random(character["OnStep"])
		self:EmitSound(sound,60)
	end
end

--[[ A few notes about the following function to understand what it does:
	It sets move_yaw pose parameters
	Helps the aim pose parameters
	Smooths them out for aiming when being a gunner in a vehicle
	Plays footstep sound if allowed
]]

function ENT:BodyUpdate()
	local act = self:GetActivity()
	if !self.loco:GetVelocity():IsZero() and self.loco:IsOnGround() and self.loco:IsAttemptingToMove() then
		if self.AllowSounds["Footstep"] then
			if !self.LMove then
				self.LMove = CurTime()+0.3
			else
				if self.LMove < CurTime() then
					self:FootstepSound()
					self.LMove = CurTime()+0.3
				end
			end
		end
		local goal = self:GetPos()+self.loco:GetVelocity()
		local y = (goal-self:GetPos()):Angle().y
		local m_y = math.AngleDifference(self:GetAngles().y,y)
		self:SetPoseParameter("move_yaw",m_y)
		self:SetPoseParameter("walk_yaw",m_y)
	else
		self.LMove = nil
	end
	local look = false
	local goal
	local y
	local di = 0
	local p
	local dip = 0
	if ( IsValid(self.Enemy) or IsValid(self.LookTarget) or self.SpecificGoal ) then
		goal = self.SpecificGoal
		if IsValid(self.Enemy) then
			goal = self.Enemy:WorldSpaceCenter()
		elseif IsValid(self.LookTarget) then
			goal = self.LookTarget:WorldSpaceCenter()+(self.LookTarget:OBBMaxs()*0.3)
		end
		local an = (goal-(self:WorldSpaceCenter()+self:GetUp()*30)):Angle()
		y = an.y
		dify = math.AngleDifference(self:GetAngles().y+self.YPP,y)
		--print(dify)
		if math.abs(dify) > 2 then
			if dify > 0 then
				di = -2
			else
				di = 2
			end
		end
		p = an.p
		local difp = math.AngleDifference(self:GetAngles().p+self.PPP,p)
		--print(difp)
		if math.abs(difp) > 2 then
			if difp > 0 then
				dip = -2
			else
				dip = 2
			end
		end
		if self.IsInVehicle then
			if !self.Transitioned and self.VehicleRole == "Gunner" then
				local vy = math.AngleDifference(self.Vehicle:GetAngles().y+self.LTPP,y)
				local vp = math.AngleDifference(self.Vehicle:GetAngles().p+self.LTP,p)
				self.Transitioned = true
				timer.Simple(0.01, function()
					if IsValid(self) then
						self.Transitioned = false
					end
				end )
				if math.abs(vy) > 5 then
					self.LTPP = self.Vehicle:GetPoseParameter("turret_yaw")
					local i
					if vy < 0 then
						i = 2
					else
						i = -2
					end
					self:SetAngles(Angle(self.Vehicle:GetAngles().p,self:GetAngles().y+i,self.Vehicle:GetAngles().r))
					self.Vehicle:SetPoseParameter("turret_yaw",self.LTPP+i)
					self.GunnerShoot = false
				else
					self.GunnerShoot = true
				end
				if math.abs(vp) > 2 then
					self.LTP = self.Vehicle:GetPoseParameter("spin_cannon")
					local i
					if (vp/2) <= self.LTP then
						i = -1
					else
						i = 1
					end
					self.Vehicle:SetPoseParameter("spin_cannon",self.LTP+i)
				end
			end
		end
	else	
		if self.YPP != 0 then
			if self.YPP > 0 then
				di = -math.Clamp( self.YPP, -2, 0 )
			else
				di = math.Clamp( self.YPP, 0, 2 )
			end
		end
		if self.PPP != 0 then
			if self.PPP > 0 then
				dip = -math.Clamp( self.PPP, -2, 0 )
			else
				dip = math.Clamp( self.PPP, 0, 2 )
			end
		end
	end
	self:SetPoseParameter("body_aim_yaw",(self.YPP+(di)))
	self.YPP = self:GetPoseParameter("body_aim_yaw")
	--print(self.YPP)
	self:SetPoseParameter("body_aim_pitch",(self.PPP+(dip)))
	self.PPP = self:GetPoseParameter("body_aim_pitch")
	--print(self.PPP)
	if !self.DoingFlinch and self:Health() > 0 and !self.ThrowingGrenade and !self.DoingMelee and !self.Taunting and !self.ThrowGrenade then
		self:BodyMoveXY()
	end
	self:FrameAdvance()
end

-------------- Cosmetic functions













-------------- Compatibility functions

function ENT:SetViewPunchAngles(no) -- Useless
end

function ENT:IsSprinting() -- Useless aswell
	return self.Sprinting
end

function ENT:Crouching() -- Not used aswell
	return self.IsCrouching
end

function ENT:GetViewPunchAngles() -- Same fate
	return Angle(0,0,0)
end

function ENT:KeyDown(s) -- KeyDown should always be no for nextbots
	return false
end

function ENT:ViewPunch()
	-- Can the odd weapons STFU
end

function ENT:GetEyeTrace(pos)
	return util.TraceLine({start = self:GetShootPos(), endpos = pos, filter = self})
end

-------------- Compatibility functions