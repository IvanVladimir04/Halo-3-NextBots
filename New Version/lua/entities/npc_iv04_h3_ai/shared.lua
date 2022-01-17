AddCSLuaFile()
include("voices.lua")
include("behaviors.lua")
include("vehiclestuff.lua")

ENT.Base = "npc_iv04_base"

ENT.SearchJustAsSpawned = false

ENT.CanUse = true

ENT.YPP = 0
ENT.PPP = 0

ENT.LastCalcTime = 0

ENT.LastThinkTime = 0

ENT.NThink = 0

ENT.LastTimeWeShot = 0

ENT.ThinkDelay = 2

ENT.AimCalculationT = 3

ENT.ThrownGrenades = 0

ENT.MoveSpeed = 100

ENT.Difficulty = 2 
-- 1 Easy, 2 Normal, 3 Heroic, 4 Legendary

ENT.WeaponAccuracy = 0 -- This is to be used along with difficulty for specific weapons
-- like shotgun

ENT.ShootDist = 1024

ENT.DodgeChance = 20

ENT.GrenadeRange = 768

ENT.AttractAlliesRange = 768

ENT.NoticedKills = 0

ENT.CountedEnemies = 0

ENT.MentionedSpree = false

ENT.CountedAllies = 0

ENT.MentionedAllySpree = false

ENT.ShootCorpseFilter = { -- Stuff that could have severe consequences if shot at a corpse
    ["astw2_haloreach_concussion_rifle"] = true,
    ["astw2_haloreach_grenade_launcher_falcon"] = true,
    ["astw2_haloreach_fuel_rod"] = true,
    ["astw2_haloreach_grenade_launcher"] = true,
    ["astw2_haloreach_rocket_launcher"] = true,
    ["astw2_haloreach_sniper_rifle"] = true,
    ["astw2_haloreach_spartan_laser"] = true,
    ["astw2_haloreach_needler"] = true,
    ["astw2_halo2a_rocketlauncher"] = true,
    ["astw2_halo2a_fuelrod"] = true,
    ["astw2_halo2_fuelrod"] = true,
    ["astw2_halo2_rocketlauncher"] = true,
    ["astw2_halo3_fuelrod"] = true,
    ["astw2_halo3_rocketlauncher"] = true,
    ["astw2_halo3_spartanlaser"] = true,
    ["astw2_halo4_concussion_rifle"] = true,
    ["astw2_halo4_fuel_rod"] = true,
    ["astw2_halo4_rail_gun"] = true,
    ["astw2_halo4_rocket_launcher"] = true,
    ["astw2_halo4_spartan_laser"] = true,
    ["astw2_halo_cea_fuel_rod"] = true,
    ["astw2_halo_cea_rocket_launcher"] = true,
    ["astw2_halo_cea_rocket_launcher"] = true,
    ["astw2_halo_ce_fuel_rod"] = true,
    ["astw2_halo_ce_rocket_launcher"] = true,
    ["astw2_halo_custom_gauss_sniper"] = true,
    ["astw2_halo_soi_needle_launcher"] = true,
    ["astw2_halo_soi_rocket_launcher"] = true,
    ["astw2_halo_soi_spartan_laser"] = true,
    ["astw2_halo_spv3_rocket_launcher"] = true,
    ["astw2_nightfire_sentinel"] = true,
    ["astw2_nightfire_scorpion"] = true,
    ["astw2_nightfire_miltek"] = true,
    ["astw2_asw_grenadelauncher"] = true,
    ["astw2_gow_boomshot"] = true,
    ["astw2_gow_booshka"] = true,
    ["astw2_gow_torquebow"] = true,
    ["astw2_gow_trapbow"] = true,
    ["astw2_tr5_gl"] = true,
    ["astw2_tr3_rocket"] = true,
    ["astw2_tr3_gl"] = true,
    ["astw2_tr2_gl"] = true
}

ENT.PostCombatQuotes = {
	[1] = "pstcmbt",
	[2] = "status",
	[3] = "pstcmbt_ez",
	[4] = "pstcmbt_tim",
	[5] = "pstcmbt_agg",
	[6] = "tnt"
}

ENT.PostCombatResponses = {
	["status"] = "status_re"
}

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

ENT.HasArmor = false -- Or "Shield"
ENT.ShieldRegenTimeDelay = 5
ENT.ShieldRegenTime = 2
ENT.MaxShield = 60

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
		self:Give(wep,self.SpawnWithWeaponDrawn)
	end
	self:SetBloodColor(self.BloodType)
	self:DoInit()
	self:SetupAnimations()
end

function ENT:DoInit()

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
	self.PatrolMoveAnim = {"Move_Patrol_Unarmed_Up"}
	self.PatrolIdleAnim = {"Patrol_Unarmed_Idle_Down"}
	self.PatrolIdlePoseAnim = {"Patrol_Unarmed_Idle_Posing_1","Patrol_Unarmed_Idle_Posing_2","Patrol_Unarmed_Idle_Posing_3"}
	self.TransitionAnims["Patrol_Move_2_Idle"] = "Patrol_Move_2_Patrol_Idle"
	self.TransitionAnims["Patrol_Idle_2_Move"] = "Patrol_Idle_2_Patrol_Move"
	if IsValid(self.Weapon) then
		local hold = self:ConfigureWeapon()
		if self.AITemplate == "BRUTE" and self.BruteWeapons[self.Weapon:GetClass()] then
			hold = "pistol"
		end
		if self.PistolHolds[hold] then
			if self.AITemplate == "BRUTE" then
				self.DrawSlowWeaponAnim = {"Draw_Slow_Armored_Pistol"}
				self.DrawFastWeaponAnim = {"Draw_Fast_Armored_Pistol"}
				self.MeleeAnim = {"Melee_Combat_Pistol_1"}
				self.MeleeBackAnim = {"Melee_Back_Combat_Pistol"}
			else
				self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Pistol"}
				self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Pistol"}
				self.MeleeAnim = {"Melee_Combat_Pistol_1","Melee_Combat_Pistol_2"}
				self.MeleeIsGesture = true
				self.MeleeBackAnim = {"Melee_Back_Combat_Missile"}
			end
			if self.Armored then
				self.ShootAnim = {"attack_armored_pistol_1","attack_armored_pistol_2","attack_armored_pistol_3"}
				self.TransitionAnims["Move_2_Idle"] = "Combat_Pistol_Move_2_Armored_Idle"
				self.TransitionAnims["Move_2_Idle_Passive"] = "Combat_Pistol_Move_2_Armored_Idle"
				self.TransitionAnims["Walk_2_Idle"] = "Combat_Pistol_Walk_2_Armored_Idle"
				self.TransitionAnims["Walk_2_Idle_Passive"] = "Combat_Pistol_Walk_2_Armored_Idle"
				self.TransitionAnims["Idle_2_Move"] = "Combat_Pistol_Idle_2_Armored_Move"
				self.TransitionAnims["Idle_2_Move_Passive"] = "Combat_Pistol_Idle_2_Armored_Move"
				self.TransitionAnims["Idle_2_Walk"] = "Combat_Pistol_Idle_2_Armored_Walk"
				self.TransitionAnims["Idle_2_Walk_Passive"] = "Combat_Pistol_Idle_2_Armored_Walk"
			else
				self.ShootAnim = {"attack_combat_pistol"}
				self.TransitionAnims["Move_2_Idle"] = "Combat_Pistol_Move_2_Combat_Idle"
				self.TransitionAnims["Move_2_Idle_Passive"] = "Combat_Pistol_Move_2_Combat_Idle"
				self.TransitionAnims["Walk_2_Idle"] = "Combat_Pistol_Walk_2_Combat_Idle"
				self.TransitionAnims["Walk_2_Idle_Passive"] = "Combat_Pistol_Walk_2_Combat_Idle"
				self.TransitionAnims["Idle_2_Move"] = "Combat_Pistol_Idle_2_Combat_Move"
				self.TransitionAnims["Idle_2_Move_Passive"] = "Combat_Pistol_Idle_2_Combat_Move"
				self.TransitionAnims["Idle_2_Walk"] = "Combat_Pistol_Idle_2_Combat_Walk"
				self.TransitionAnims["Idle_2_Walk_Passive"] = "Combat_Pistol_Idle_2_Combat_Walk"
			end
			self.IdleAnim = {"Combat_Pistol_Idle_Up"}
			self.IdleCalmAnim = {"Combat_Pistol_Idle_Down"}
			self.RunAnim = {"Move_Combat_Pistol_Up"}
			self.RunCalmAnim = {"Move_Combat_Pistol_Down"}
			self.WalkAnim = {"Walk_Combat_Pistol_Up"}
			self.WalkCalmAnim = {"Walk_Combat_Pistol_Down"}
			self.ReloadAnim = "Reload_Combat_Pistol"
			self.DiveLeftAnim = "Dive_Left_Combat_Pistol"
			self.DiveRightAnim = "Dive_Right_Combat_Pistol"
			self.AirAnim = "Airborne_Combat_Pistol"
			self.LandAnim = "Land_Soft_Combat_Pistol"
			self.LandHardAnim = "Land_Hard_Combat_Pistol"
			self.SurpriseAnim = "Surprised_Combat_Pistol"
			self.CrouchIdleAnim = {"crouch_rifle_pistol_up"}
			self.CrouchMoveAnim = {"move_crouch_pistol_up"}
			self.WarnAnim = {"Point_Combat_Pistol"}
			self.CrouchMoveCalmAnim = {"pistol_crouch_move_passive"}
			self.GrenadeAnim = {"Throw_Grenade_Combat_Pistol"}
			self.PushLeftAnim = "Melee_Smash_Combat_Pistol_Left"
			self.PushLeftAnim = "Right_Smash_Combat_Pistol_Left"
			self.TauntAnim = {"Taunt_Combat_Pistol"}
			self.WarthogPassengerIdle = "Warthog_Passenger_Idle_Pistol"
			if self.Weapon:GetClass() == "astw2_halo3_magnum" or self.Weapon:GetClass() == "astw2_halo3_magnum_odst" then
				self.Weapon.BurstLength = 4
			end
			self.HornetPassengerLeftIdle = "hornet_passenger_left_idle_pistol"
			self.HornetPassengerRightIdle = "hornet_passenger_right_idle_pistol"
			self.ProwlerPassengerLeftIdle = "prowler_passenger_left_idle_pistol"
			self.ProwlerPassengerRightIdle = "prowler_passenger_right_idle_pistol"
			self.MongoosePassengerIdle = "mongoose_passenger_idle_pistol"
			self.ScorpionPassengerIdle = "scorpion_passenger_idle_pistol"
			self.WaveAnim = "Wave_Combat_Pistol"
			self.ShakeFistAnim = {"Shakefist_Combat_Pistol_1","Shakefist_Combat_Pistol_2","Shakefist_Combat_Pistol_3"}
			self.AdvanceAnim = "Signal_Advance_1_Combat_Pistol"
			self.CheerAnim = "Cheer_Combat_Pistol"
			self.SignalAttackAnim = "Signal_Attack_Combat_Pistol"
			self.WaveAnimGesture = false
			self.AllowGrenade = true
			self.CanMelee = true
			self.EvadeLeftAnim = "Evade_Left_Combat_Pistol"
			self.EvadeRightAnim = "Evade_Right_Combat_Pistol"
			self.DiveFrontAnim = "dive_front_combat_pistol"
			self.DiveLeftAnim = "dive_left_combat_pistol"
			self.DiveRightAnim = "dive_right_combat_pistol"
			self.FallbackAnim = "Signal_Fallback_Combat_Pistol"
			self.HoldAnim = "Signal_Hold_Combat_Pistol"
			self.EquipmentAnim = "Throw_Equipment_Combat_Pistol"
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
			self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Missile"}
			self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Missile"}
			if self.Weapon:GetClass() == "astw2_halo3_sniper_rifle" then
				self.Weapon.BurstLength = 1
				self.ShootAnim = {"attack_combat_rifle_1","attack_combat_rifle_2"}
			elseif hold == "ar2" then
				self.ShootAnim = {"attack_combat_rifle_1","attack_combat_rifle_1"}
			elseif hold == "shotgun" then
				self.Weapon.Acc = 0
				self.Weapon.Primary.RecoilAcc = 0
				self.WeaponAccuracy = 9
				self.Weapon.BurstLength = 1
				self.ShootAnim = {"attack_combat_shotgun"}
				self:DoGestureSeq("rifle_sg_grip",false)
			elseif hold == "smg" then
				self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Pistol"}
				self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Pistol"}
				self.ShootAnim = {"attack_combat_rifle_1","attack_combat_rifle_2"}
				self:ManipulateBoneAngles(self:LookupBone("l_hand"),Angle(0,0,90))
			else
				self.ShootAnim = {"attack_combat_rifle_1","attack_combat_rifle_2"}
			end
			self.IdleAnim = {"combat_rifle_idle_up"}
			self.IdleCalmAnim = {"combat_rifle_idle_up"}
			self.RunAnim = {"move_combat_rifle_up"}
			self.WalkAnim = {"walk_combat_rifle_up"}
			self.RunCalmAnim = {"move_combat_rifle_up"}
			if self.AITemplate == "BRUTE" then
				self.MeleeAnim = {"Melee_Combat_Rifle_1"}
				self.MeleeBackAnim = {"Melee_Back_Combat_Rifle"}
			else
				self.MeleeAnim = {"Melee_Combat_Rifle_1","Melee_Combat_Rifle_2"}
				self.MeleeBackAnim = {"Melee_Back_Combat_Missile"}
			end
			self.ReloadAnim = "reload_combat_rifle"
			self.GrenadeAnim = {"Throw_Grenade_Combat_Rifle"}
			self.EquipmentAnim = "Throw_Equipment_Combat_Rifle"
			self.AirAnim = "airborne_combat_rifle"
			self.LandAnim = "land_soft_combat_rifle"
			self.LandHardAnim = "land_hard_combat_rifle"
			self.CalmTurnLeftAnim = "turn_left_combat_rifle"
			self.CalmTurnRightAnim = "turn_right_combat_rifle"
			self.TurnLeftAnim = "turn_left_combat_rifle"
			self.TurnRightAnim = "turn_right_combat_rifle"
			self.CrouchTurnLeftAnim = "turn_right_crouch_rifle"
			self.CrouchTurnRightAnim = "turn_left_crouch_rifle"
			self.SurpriseAnim = "surprised_combat_rifle"
			self.WarnAnim = {"warn_combat_rifle"}
			self.CrouchIdleAnim = {"crouch_rifle_idle_up"}
			self.CrouchMoveAnim = {"move_crouch_rifle_up"}
			self.WarthogPassengerIdle = "warthog_passenger_idle_rifle"
			self.HornetPassengerLeftIdle = "hornet_passenger_left_idle_rifle"
			self.HornetPassengerRightIdle = "hornet_passenger_right_idle_rifle"
			self.ProwlerPassengerLeftIdle = "prowler_passenger_left_idle_rifle"
			self.ProwlerPassengerRightIdle = "prowler_passenger_right_idle_rifle"
			self.MongoosePassengerIdle = "mongoose_passenger_idle_rifle"
			self.ScorpionPassengerIdle = "scorpion_passenger_idle_rifle"
			self.PushLeftAnim = {"melee_smash_combat_rifle_left"}
			self.PushRightAnim = {"melee_smash_combat_rifle_right"}
			self.WaveAnim = "wave_combat_rifle"
			self.AdvanceAnim = "signal_advance_combat_rifle"
			self.ShakeFistAnim = "shakefist_combat_rifle"
			self.CheerAnim = "cheer_combat_rifle"
			self.AllowGrenade = false
			self.CanShootCrouch = true
			self.CanMelee = false
			self.TauntAnim = {"taunt_combat_rifle"}
			self.EvadeLeftAnim = "evade_left_combat_rifle"
			self.EvadeRightAnim = "evade_right_combat_rifle"
			self.DiveFrontAnim = "dive_front_combat_rifle"
			self.DiveLeftAnim = "dive_left_combat_rifle"
			self.DiveRightAnim = "dive_right_combat_rifle"
			self.FallbackAnim = "signal_fallback_combat_rifle"
			self.TransitionAnims["Move_2_Idle"] = "combat_rifle_move_2_combat_idle"
			self.TransitionAnims["Move_2_Idle_Passive"] = "combat_rifle_move_2_combat_idle"
			self.TransitionAnims["Walk_2_Idle"] = "combat_rifle_walk_2_combat_idle"
			self.TransitionAnims["Walk_2_Idle_Passive"] = "combat_rifle_walk_2_combat_idle"
			self.TransitionAnims["Idle_2_Move"] = "combat_rifle_idle_2_combat_move"
			self.TransitionAnims["Idle_2_Move_Passive"] = "combat_rifle_idle_2_combat_move"
			self.TransitionAnims["Idle_2_Walk"] = "combat_rifle_idle_2_combat_walk"
			self.TransitionAnims["Idle_2_Walk_Passive"] = "combat_rifle_idle_2_combat_walk"
			self.TransitionAnims["Idle_2_Guard"] = "patrol_unarmed_idle_posing"
			self.TransitionAnims["Idle_2_Crouch"] = "combat_rifle_idle_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "crouch_rifle_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "crouch_rifle_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "crouch_rifle_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "crouch_rifle_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "crouch_rifle_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "crouch_rifle_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "crouch_rifle_idle_2_crouch_walk"
			self.TransitionAnims["Crouch_Idle_2_Idle"] = "crouch_rifle_idle_2_crouch_walk"
		elseif hold == "rpg" then
			self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Missile"}
			self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Missile"}
			self.IdleAnim = {"combat_missile_idle_up"}
			self.IdleCalmAnim = {"combat_missile_idle_up"}
			self.RunAnim = {"move_combat_missile_up"}
			self.WalkAnim = {"walk_combat_missile_up"}
			self.RunCalmAnim = {"move_combat_missile_up"}
			self.MeleeAnim = {"Melee_Combat_Missile_1"}
			self.MeleeBackAnim = {"Melee_Back_Missile_Pistol"}
			self.ShootAnim = {"attack_combat_missile_1"}
			self.ReloadAnim = "reload_combat_missile"
			self.AirAnim = "airborne_combat_missile"
			self.LandAnim = "land_soft_combat_missile"
			self.LandHardAnim = "land_hard_combat_missile"
			self.CalmTurnLeftAnim = "turn_left_combat_missile"
			self.CalmTurnRightAnim = "turn_right_combat_missile"
			self.TurnLeftAnim = "turn_left_combat_missile"
			self.TurnRightAnim = "turn_right_combat_missile"
			self.CrouchTurnLeftAnim = "turn_right_crouch_missile"
			self.CrouchTurnRightAnim = "turn_left_crouch_missile"
			self.WarthogPassengerIdle = "warthog_passenger_idle_missile"
			self.HornetPassengerLeftIdle = "hornet_passenger_left_idle_missile"
			self.HornetPassengerRightIdle = "hornet_passenger_right_idle_missile"
			self.ProwlerPassengerLeftIdle = "prowler_passenger_left_idle_missile"
			self.ProwlerPassengerRightIdle = "prowler_passenger_right_idle_missile"
			self.MongoosePassengerIdle = "mongoose_passenger_idle_missile"
			self.ScorpionPassengerIdle = "scorpion_passenger_idle_missile"
			self.SurpriseAnim = "surprised_combat_missile"
			self.WarnAnim = {"warn_combat_missile"}
			self.CrouchIdleAnim = {"crouch_missile_idle_up"}
			self.CrouchMoveAnim = {"move_crouch_missile_up"}
			self.WarthogPassengerIdle = "warthog_passenger_idle_missile"
			self.PushLeftAnim = {"melee_smash_combat_missile_left"}
			self.PushRightAnim = {"melee_smash_combat_missile_right"}
			self.WaveAnim = "wave_combat_missile"
			self.AdvanceAnim = "signal_advance_combat_missile"
			self.ShakeFistAnim = "shakefist_combat_missile"
			self.CheerAnim = "cheer_combat_missile"
			self.GrenadeAnim = {"Throw_Grenade_Combat_Missile"}
			self.AllowGrenade = false
			self.CanShootCrouch = true
			self.CanMelee = false
			self.TauntAnim = {"taunt_combat_missile"}
			self.EvadeLeftAnim = "evade_left_combat_missile"
			self.EvadeRightAnim = "evade_right_combat_missile"
			self.DiveFrontAnim = "dive_front_combat_missile"
			self.DiveLeftAnim = "dive_left_combat_missile"
			self.DiveRightAnim = "dive_right_combat_missile"
			self.FallbackAnim = "signal_fallback_combat_missile"
			self.TransitionAnims["Move_2_Idle"] = "combat_missile_move_2_combat_idle"
			self.TransitionAnims["Move_2_Idle_Passive"] = "combat_missile_move_2_combat_idle"
			self.TransitionAnims["Walk_2_Idle"] = "combat_missile_walk_2_combat_idle"
			self.TransitionAnims["Walk_2_Idle_Passive"] = "combat_missile_walk_2_combat_idle"
			self.TransitionAnims["Idle_2_Move"] = "combat_missile_idle_2_combat_move"
			self.TransitionAnims["Idle_2_Move_Passive"] = "combat_missile_idle_2_combat_move"
			self.TransitionAnims["Idle_2_Walk"] = "combat_missile_idle_2_combat_walk"
			self.TransitionAnims["Idle_2_Walk_Passive"] = "combat_missile_idle_2_combat_walk"
			self.TransitionAnims["Idle_2_Guard"] = "patrol_unarmed_idle_posing"
			self.TransitionAnims["Idle_2_Crouch"] = "combat_missile_idle_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "crouch_missile_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "crouch_missile_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "crouch_missile_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "crouch_missile_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "crouch_missile_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "crouch_missile_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "crouch_missile_idle_2_crouch_walk"
			self.TransitionAnims["Crouch_Idle_2_Idle"] = "crouch_missile_idle_2_crouch_walk"
		elseif hold == "physgun" then
			self.IdleAnim = {"combat_support_idle_up"}
			self.IdleCalmAnim = {"combat_support_idle_up"}
			self.RunAnim = {"move_combat_support_up"}
			self.WalkAnim = {"walk_combat_support_up"}
			self.RunCalmAnim = {"move_combat_support_up"}
			self.MeleeAnim = {"Melee_Combat_support_1"}
			self.MeleeBackAnim = {"Melee_Back_support_Pistol"}
			self.ShootAnim = {"attack_combat_support_1"}
			self.ReloadAnim = "reload_combat_support"
			self.AirAnim = "airborne_combat_support"
			self.LandAnim = "land_soft_combat_support"
			self.LandHardAnim = "land_hard_combat_support"
			self.CalmTurnLeftAnim = "turn_left_combat_support"
			self.CalmTurnRightAnim = "turn_right_combat_support"
			self.TurnLeftAnim = "turn_left_combat_support"
			self.TurnRightAnim = "turn_right_combat_support"
			self.CrouchTurnLeftAnim = "turn_right_crouch_support"
			self.CrouchTurnRightAnim = "turn_left_crouch_support"
			self.WarthogPassengerIdle = "warthog_passenger_idle_support"
			self.HornetPassengerLeftIdle = "hornet_passenger_left_idle_support"
			self.HornetPassengerRightIdle = "hornet_passenger_right_idle_support"
			self.ProwlerPassengerLeftIdle = "prowler_passenger_left_idle_support"
			self.ProwlerPassengerRightIdle = "prowler_passenger_right_idle_support"
			self.MongoosePassengerIdle = "mongoose_passenger_idle_support"
			self.ScorpionPassengerIdle = "scorpion_passenger_idle_support"
			self.SurpriseAnim = "surprised_combat_support"
			self.WarnAnim = {"warn_combat_support"}
			self.CrouchIdleAnim = {"crouch_support_idle_up"}
			self.CrouchMoveAnim = {"move_crouch_support_up"}
			self.WarthogPassengerIdle = "warthog_passenger_idle_support"
			self.PushLeftAnim = {"melee_smash_combat_support_left"}
			self.PushRightAnim = {"melee_smash_combat_support_right"}
			self.WaveAnim = "wave_combat_support"
			self.AdvanceAnim = "signal_advance_combat_support"
			self.ShakeFistAnim = "shakefist_combat_support"
			self.CheerAnim = "cheer_combat_support"
			self.GrenadeAnim = {"Throw_Grenade_Combat_support"}
			self.AllowGrenade = false
			self.CanShootCrouch = true
			self.CanMelee = false
			self.TauntAnim = {"taunt_combat_support"}
			self.EvadeLeftAnim = "evade_left_combat_support"
			self.EvadeRightAnim = "evade_right_combat_support"
			self.DiveFrontAnim = "dive_front_combat_support"
			self.DiveLeftAnim = "dive_left_combat_support"
			self.DiveRightAnim = "dive_right_combat_support"
			self.FallbackAnim = "signal_fallback_combat_support"
			self.TransitionAnims["Move_2_Idle"] = "combat_support_move_2_combat_idle"
			self.TransitionAnims["Move_2_Idle_Passive"] = "combat_support_move_2_combat_idle"
			self.TransitionAnims["Walk_2_Idle"] = "combat_support_walk_2_combat_idle"
			self.TransitionAnims["Walk_2_Idle_Passive"] = "combat_support_walk_2_combat_idle"
			self.TransitionAnims["Idle_2_Move"] = "combat_support_idle_2_combat_move"
			self.TransitionAnims["Idle_2_Move_Passive"] = "combat_support_idle_2_combat_move"
			self.TransitionAnims["Idle_2_Walk"] = "combat_support_idle_2_combat_walk"
			self.TransitionAnims["Idle_2_Walk_Passive"] = "combat_support_idle_2_combat_walk"
			self.TransitionAnims["Idle_2_Guard"] = "patrol_unarmed_idle_posing"
			self.TransitionAnims["Idle_2_Crouch"] = "combat_support_idle_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "crouch_support_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "crouch_support_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "crouch_support_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "crouch_support_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "crouch_support_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "crouch_support_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "crouch_support_idle_2_crouch_walk"
			self.TransitionAnims["Crouch_Idle_2_Idle"] = "crouch_support_idle_2_crouch_walk"
		end
	else
		self.RunAnim = {"Move_Berserk_Unarmed_Down"}
		self.IdleAnim = {"Combat_Unarmed_Idle_Down"}
		self.WaveAnim = "wave_combat_unarmed"
		self.ShakeFistAnim = "shakefist_combat_unarmed"
		self.TauntAnim = {"taunt_combat_unarmed"}
		self.FallbackAnim = "signal_fallback_combat_unarmed"
		self.BraceAnim = "brace_combat"
		self.AdvanceAnim = "signal_advance_combat_unarmed"
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

function ENT:Use( activator )
	if !self.CanUse then return end
	if self:CheckRelationships(activator) == "friend" and activator:IsPlayer() then
		local ply = activator
		if ply:KeyDown(IN_WALK) then
			self.IsFollowingPlayer = !self.IsFollowingPlayer
			if !IsValid(self.FollowingPlayer) then
				self.FollowingPlayer = ply
				self:SetNWInt("optredisp",1)
			else
				self.FollowingPlayer = nil
				self.StartPosition = self:GetPos()
				self:SetNWInt("optredisp",0)
			end
			self.CanUse = false
			timer.Simple( 1, function()
				if IsValid(self) then
					self.CanUse = true
				end
			end )
		elseif IsValid(ply:GetActiveWeapon()) and IsValid(self.Weapon) and self.Weapon:GetClass() != ply:GetActiveWeapon():GetClass() and self.TotalHolds[ply:GetActiveWeapon().HoldType_Aim] then
			self.CanUse = false
			local stop = false
			for i = 1, 200 do
				timer.Simple( 0.01*i, function()
					if stop then return end
					if IsValid(self) then
						if IsValid(ply) then
							if ( !ply:KeyDown(IN_USE) and self.Weapon:GetClass() != ply:GetActiveWeapon():GetClass() ) or !self.TotalHolds[ply:GetActiveWeapon().HoldType_Aim] then
								self.CanUse = true
								stop = true
							else
								if i == 200 then
									local gift = ply:GetActiveWeapon():GetClass()
									local ammo = self.Weapon:Clip1()+self.Weapon:GetMaxClip1()*math.random(1,4)
									local t = self.Weapon:GetPrimaryAmmoType()
									local give = self.Weapon:GetClass()
									ply:GetActiveWeapon():Remove()
									local wep = ply:Give(give,true)
									ply:GiveAmmo(ammo,t,true)
									ply:SelectWeapon(give)
									self.Weapon:Remove()
									self:Give(gift)
									self:SetupAnimations()
									self.CanUse = true
									if math.random(1,2) == 1 then self:Speak("OnTrade") end
									--[[local clone = ents.Create(self:GetClass())
									clone:SetPos(self:GetPos())
									clone:SetAngles(self:GetAngles())
									clone:SetHealth(self:Health())
									clone.DoInit = function()
										clone:Give(gift)
										clone:SetSkin(self:GetSkin())
										for i = 1, table.Count( self:GetBodyGroups() ) do
											clone:SetBodygroup( i-1,self:GetBodygroup( i-1 ) )
											if i == table.Count( self:GetBodyGroups() ) then
												clone:SetBodygroup( i,self:GetBodygroup( i ) )
											end
										end
									end
									clone:Spawn()
									undo.ReplaceEntity(self,clone)
									self:Remove()]]
								end
							end
						else
							stop = true
							self.CanUse = true
						end
					end
				end )
			end
		end
	end
end

function ENT:FaceTowards(pos) -- You put a position (vector) and the nextbot's Yaw will face it
	local angy = (pos-self:GetPos()):GetNormalized():Angle().y
	self:SetAngles(self:GetAngles().p,angy,0)
end

function ENT:NearbyAllies( pos, dist )
	local tbl = {}
	for k, v in pairs(ents.FindInSphere(pos,dist)) do
		if v != self and self:CheckRelationships(v) == "friend" then
			tbl[#tbl+1] = v
		end
	end
	return tbl
end

function ENT:AlertAllies(ent) -- We find allies in sphere and we alert them
	for k, v in pairs(ents.FindInSphere( self:GetPos(), self.AttractAlliesRange ) ) do
		if v.IV04NextBot and self:CheckRelationships(v) == "friend" and v != self then
			if !v.RegisteredTargets[ent] then
				v.RegisteredTargets[ent] = true
				v.RegisteredTargetPositions[ent] = ent:GetPos()
				v.SeenTargets = v.SeenTargets+1
				v:OnSeenEnemy(ent)
			end
			--print("Alerted"..v:GetClass().."whose's index is"..v:EntIndex().."and its target is"..ent:GetClass().."")
		end
	end
end

function ENT:OnLostSeenEnemy(ent)
	self:Speak("lst_cntct")
end

function ENT:NearbyReply( quote, dist, tim )
	tim = tim or math.random(2,4)
	dist = dist or 500
	for k, v in ipairs(self:NearbyAllies( self:GetPos(), dist ) ) do
		if v.IsHalo3Marine and v.Speak then
			timer.Simple( tim, function()
				if IsValid(v) then
					v:Speak(quote)
				end
			end )
			break
		end
	end
end

function ENT:OnTraceAttack( info, dir, trace )
	if self.Unkillable then info:SetDamage(0) end
	if trace.HitGroup == 1 and !self.HeadShotImmune then
		info:ScaleDamage(3)
	end
	if self:Health() - info:GetDamage() < 1 then self.DeathHitGroup = trace.HitGroup return end
	if self.AnimBusy then return end
	local hg = trace.HitGroup
	--[[if !self.IsInVehicle and self.FlinchAnims[hg] and !self.DoneFlinch and math.random(100) < self.FlinchChance and info:GetDamage() > self.FlinchDamage then
		self.DoneFlinch = true
		self.DoingFlinch = true
		timer.Simple( math.random(1,2), function()
			if IsValid(self) then
				self.DoneFlinch = false
			end
		end )
		local seq,len = self:LookupSequence(self.FlinchAnims[hg])
		timer.Simple( len, function()
			if IsValid(self) then
				self.DoingFlinch = false
			end
		end )
		local func = function()
			self:PlaySequenceAndMove(seq,1,self:GetForward()*-1,self.FlinchMove[hg],0.4)
		end
		table.insert(self.StuffToRunInCoroutine,func)
		self:ResetAI()
	end]]
end

function ENT:OnLeaveGround(ent)
	if self:Health() <= 0 then 
		self:ResetSequence(self:LookupSequence(self.DeadAirAnim))
	else
		self.LastTimeOnGround = CurTime()
		local t = self.LastTimeOnGround
		timer.Simple( 0.6, function()
			if IsValid(self) and self.LastTimeOnGround == t then
				self:ResetSequence(self.AirAnim)
			end
		end )
	end
end

function ENT:OnLandOnGround(ent)
	if self.FlyingDead then
		self.HasLanded = true
	elseif self.LastTimeOnGround then
		local seq = self.LandAnim
		if ( CurTime() - self.LastTimeOnGround ) > 1 then
			seq = self.LandHardAnim
			self:Speak("pain_fall")
		end
		self.LastTimeOnGround = CurTime()
		local func = function()
			self:PlaySequenceAndWait(seq)
		end
		table.insert(self.StuffToRunInCoroutine,func)
		self:ResetAI()
	end
end

function ENT:StandBy()
	self:DoTransitionAnim("Idle_2_Crouch")
	self:ResetSequence(self.CrouchIdleAnim[math.random(#self.CrouchIdleAnim)])
	while self:IsUndetected() do
		coroutine.wait(1)
	end
	self.HaltShoot = false
end

function ENT:SneakKill(ent)
	ent = ent or self.Enemy
	if !IsValid(ent) then return end
	self.GoingForSneakKill = true
	self:DoTransitionAnim("Idle_2_Crouch")
	if !IsValid(ent) then return end
	self:StartMovingAnimations(self.CrouchMoveAnim[math.random(#self.CrouchMoveAnim)],self.MoveSpeed)
	self:MoveToPos(ent:GetPos()+ent:GetForward()*-20,{callback = function()
		if !self:IsUndetected() or !IsValid(ent) then
			self.HaltShoot = false
			self.GoingForSneakKill = false
			self:ResetAI()
		end
	end})
	self.GoingForSneakKill = false
	self.HaltShoot = false
	self:ResetAI()
end

function ENT:Dodge()
	local r = math.random(1,2)
	local anim = r == 1 and self.EvadeLeftAnim or self.EvadeRightAnim
	local dir = r == 1 and -self:GetRight() or self:GetRight()
	--print(anim)
	self:PlaySequenceAndPWait(anim,1,self:GetPos())
end

function ENT:DodgeChecks(ent,los)
	if math.random(1,100) <= self.DodgeChance and !self.Dodged then
		if ( IsValid(ent) and ( ( ent.GetEnemy and ent:GetEnemy() == self ) or ( BeingStaredAt(self,ent,60) ) ) ) and los then
			return self:Dodge()
		end
	end
end

function ENT:CoverChecks(ent)
	if self.NeedsToCover then
		self.NeedsToCover = false
		local tbl = self:FindCoverSpots(ent)
		if table.Count(tbl) > 0 or #tbl > 0 then
			local area = table.Random(tbl)
			self:MoveToPosition( area, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
			if math.random(1,2) == 1 then
				self:Speak("cvr")
				self:NearbyReply("cvr_re")
			else
				self:Speak("newordr_support")
			end
			return self:ResetAI()
		end
	end
end

function ENT:FindCoverSpots(ent)
	local dire = (self:GetPos()-ent:GetPos()):GetNormalized()
	local navs = navmesh.Find( self:GetPos()+(dire*512), 1024, 100, 10 )
	local tbl = {}
	local found = false
	for k, nav in pairs(navs) do
		local covers = nav:GetHidingSpots(3)
		if istable(covers) and #covers > 0 then
			for i = 1, #covers do
				if !ent:VisibleVec(covers[i]) then
					tbl[#tbl+1] = covers[i]
				end
			end
		end
		if !nav:IsVisible( ent:WorldSpaceCenter() ) then
			tbl[nav:GetID()] = nav:GetRandomPoint()
		end
	end
	return tbl, dire
end

function ENT:GoToPosition( pos, anim, speed, movefunc, postarriveanim )
	--print(movefunc)
	movefunc = movefunc or self.MoveToPos
	--[[ movefunc can be used like this
self:GoToPosition(ent:GetPos(),self:TableRandom(self.RunAnim),self:GetRunSpeed(),self.WanderToPos)
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
	movefunc(self,pos)
	self:TransitionArrival(typ,enemy)
	local tb = postarriveanim or self.IdleAnim
	local ranim = tb[math.random(#tb)]
	if type(ranim) == "string" then
		self:ResetSequence( ranim )
	else
		self:StartActivity( ranim )			-- Move animation
	end
end	

function ENT:FindNearbyPos(pos,dist)
	local dist = dist or 512
	local pos = pos or self:GetPos()
	local navs = navmesh.Find( pos, dist, 100, 10 )
	local tbl = {}
	if table.Count(navs) > 0 or #navs > 0 then
		local area = table.Random(navs)
		local pos
		if area then pos = area:GetRandomPoint() end
		return pos
	end
	return self:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * math.random(256,500)
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
	if self.MeleeIsGesture then
		self:DoGestureSeq(id)
		coroutine.wait(len)
	else
		self:PlaySequenceAndPWait(anim,1,self:GetPos())
	end
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

function ENT:MeleeChecks(los,range)
	if los and !self.DoneMelee and range < self.MeleeRange^2 then
		self:DoMelee()
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
	local we = ents.Create(wep)
	we:SetOwner(self)
	we:Spawn()
	we:PhysicsInit(SOLID_NONE)	
	we:SetSolid(SOLID_NONE)
	self:AdjustWeapon(we,drawn)
	self.Weapon = we
end

function ENT:AdjustWeapon(wep,drawn)
	local at = (self.BruteWeapons[wep:GetClass()] or wep.HoldType_Aim == "smg" or self.PistolHolds[wep.HoldType_Aim]) and "sidearm" or "backpack"
	local att = drawn and "anim_attachment_RH" or at
	local id = self:LookupAttachment(att)
	local pos = self:GetAttachment(id).Pos
	wep:SetPos(pos)
	wep:SetParent(self,id)
	wep:Fire("setparentattachment", att)
	self.IsWeaponDrawn = drawn
	if drawn then
		wep:AddEffects(EF_BONEMERGE)
	else
	end
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
	return (self.Difficulty+self.WeaponAccuracy) or 1 -- If difficulty is defined (and has to be a number)
end -- then use it instead of 1 as a default

function ENT:Shoot() -- Pretty basic, right? just shoot the weapon we are holding
	if !IsValid(self.Weapon) then return end
	if self.StopShoot then return end
	if self:Health() < 1 then return end
	self.LastTimeWeShot = CurTime()
	self.Weapon:AI_PrimaryAttack()
end

function ENT:HasToReload()
	return self.Weapon:Clip1() == 0
end

function ENT:OnFiring()
	self:DoGestureSeq(self.ShootAnim[math.random(#self.ShootAnim)])
	if !self.SpokeShoot then
		self.SpokeShoot = true
		timer.Simple( math.random(15,20), function()
			if IsValid(self) then
				self.SpokeShoot = false
			end
		end )
		self:Speak("strk")
	end
	--if !self.SayingOnFiring and IsValid(self.Enemy) then
		--self:Speak("OnAttack")
		--self.SayingOnFiring = true
		--timer.Simple( math.random(8,16), function()
		--	if IsValid(self) then
		--		self.SayingOnFiring = false
		--	end
		--end )
	--end
end

-------------- Weapon functions

-------------- Other combat functions

function ENT:OnHaveEnemy(ent)
	if !self.IsWeaponDrawn then
		if !self.HasSeenEnemies then
			self.HasSeenEnemies = true
			if ( ent:IsNPC() and ent.IsVJBaseSNPC and string.StartWith(ent:GetClass(), "npc_vj_flood") ) or ent.Faction == "FACTION_FLOOD" then
				--self:Speak("warn_pureforms") -- Save this for when we make our own
				self.SawFlood = true
				if ent.IsPureForm then
					self:Speak("warn_pureforms")
				else
					self:Speak("warn_flood")
				end
			elseif ent.IsScarab then
				self:Speak("warn_scrb")
			elseif IsValid(ent.Weapon) and ent.Weapon:GetClass() == "astw2_haloreach_gravityhammer" then
				self:Speak("warn_wpn_hmmer")
			elseif ent.IsHunter then
				self:Speak("warn_chr_hntr")
			elseif self.IsSergeant and math.random(1,2) == 1 then
				self:Speak("ordr_openfire")
			elseif ent:IsPlayer() and ent:InVehicle() then
				self:Speak("warn_incmn_vclbm")
			else
				if math.random(1,2) == 1 then
					self:Speak("seefoe")
				else
					self:Speak("warn")
				end
			end
			--self:Speak("OnAlert")
		else
			if !self.SpokeMore then
				if ent.GotUp then
					self:Speak("warn_fldreanimate")
				elseif self.RegisteredTargetPositions[ent] then
					self:Speak("foundfoe")
				end
				if ent.BeingChased then ent.BeingChased = false end
				self.SpokeMore = true
				timer.Simple( math.random(5,10), function()
					if IsValid(self) then
						self.SpokeMore = false
					end
				end )
			end
		end
		self:AdjustWeapon(self.Weapon,true)
		local func = function()
			self:PlaySequenceAndWait(self:TableRandom(self.DrawFastWeaponAnim))
		end
		table.insert(self.StuffToRunInCoroutine,func)
		self:ResetAI()
	else
		if #self:PossibleTargets() > 5 and !H3BS:WasSignalGiven("ThrowAllGrenades",5) then
			H3BS:Signal("ThrowAllGrenades",self)
			self:Speak("ordr_grenade_all")
		end
		self:AlertAllies(ent)
		if !self.IsInVehicle then
			if !self.DidAlertAnim then
				if !self.BeenSurprised and math.random(1,3) == 1 then
					self.BeenSurprised = true
					local xy = ent:GetPos().x+ent:GetPos().y
					local xy2 = self:GetPos().x+self:GetPos().y
					local dif = math.abs(xy-xy2)
					if dif < 700 then
						local func = function()
							local should, dif = self:ShouldFace(ent,10)
							if should then
								self:Turn(dif,false,true)
								coroutine.wait(0.2)
							end
							self:PlaySequenceAndWait(self.SurpriseAnim)
						end
						table.insert(self.StuffToRunInCoroutine,func)
					end
				else
					local func = function()
						local should, dif = self:ShouldFace(ent,10)
						if should then
							self:Turn(dif,false,true)
							coroutine.wait(0.2)
						end
						self:PlaySequenceAndWait(self.WarnAnim[math.random(#self.WarnAnim)])
					end
					table.insert(self.StuffToRunInCoroutine,func)
				end	
				self.DidAlertAnim = true
			end
			timer.Simple( math.random(15,20), function()
				if IsValid(self) then
					self.DidAlertAnim = false
				end
			end ) 
			self.HasLOSToTarget = true
			self.RegisteredTargetPositions[ent] = ent:GetPos()
			if !self.DoneStealth and self:IsUndetected() then
				self.HaltShoot = true
			end
			self:ResetAI()
		end
	end
end

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
	if self.HasArmor and self.Shield > 0 then
		--print(self.Shield, "before")
		self.ShieldActual = self.Shield
		self.ShieldH = CurTime()
		local shield = self.ShieldH
		local dm = dmg:GetDamage()
		total = dm-self.Shield
		if total < 0 then total = 0 end
		if dmg:IsBulletDamage() then
			dmg:SubtractDamage(self.Shield*2)
			self.Shield = self.Shield-math.abs(dm/2)
		else
			dmg:SubtractDamage(self.Shield)
			self.Shield = self.Shield-math.abs(dm)
		end
		if self.Shield < 0 then 
			self.Shield = 0 
		end
	--	self:SetNWBool("SPShield",true)
		timer.Simple( 1, function()
			if IsValid(self) and shield == self.ShieldH then
				--self:SetNWBool("SPShield",false)
			end
		end )
		local shild = self.Shield
		timer.Simple( self.ShieldRegenTimeDelay, function()
			if IsValid(self) and shield == self.ShieldH then
				local stop = false
				for i = 1, 10 do
					timer.Simple( self.ShieldRegenTime*0.1, function()
						if IsValid(self) and shield == self.ShieldH and !stop then
							self.Shield = self.Shield+self.ShieldRegen
							if self.Shield > self.MaxShield then 
								self.Shield = self.MaxShield
								stop = true
							end
						end
					end )
				end
			end
		end )
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
					timer.Simple( (self.HealthRegenTime*0.1)*i, function()
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

function ENT:OnPlasmaNadeStuck()
	self:Speak("OnPanic")
end

function ENT:OnOtherKilled( victim, info )
	if victim == self then return end
	if self.AnimBusy then return end
	if self:Health() <= 0 then return end
	local rel = self:CheckRelationships(victim)
	local attacker = info:GetAttacker()
	if rel == "friend" then
		if !victim.BeenNoticed then
			--victim.BeenNoticed = self.IsSergeant
			if self.SawAllyDie and !self.SawAlliesDie then self.SawAlliesDie = true end
			if !self.SawAllyDie then self.SawAllyDie = true end
			if !IsValid(self.Enemy) then
				--if self:CheckRelationships(attacker) == "foe" then
				local ang = (victim:GetPos()-self:GetPos()):Angle()
				local dif = math.AngleDifference(self:GetAngles().y,ang.y)
				local func = function()
					self:TurnTo(dif)
				end
				table.insert(self.StuffToRunInCoroutine,func)
				self:ResetAI()
				--end
				if attacker:IsPlayer() and self.FriendlyToPlayers then
					self.NoticedKills = self.NoticedKills+1
					if self.NoticedKills > 1 then
						if math.random(1,2) == 1 then
							self:Speak("betray")
						else
							self:Speak("crs_betrayingplr_mc")
						end
						self.FriendlyToPlayers = false
						self.LastAllyKill = CurTime()
						local last = self.LastAllyKill
						timer.Simple( 30, function()
							if IsValid(self) then
								if self.LastAllyKill == last then
									self.FriendlyToPlayers = true
									self.NoticedKills = 0
									self:SetEnemy(nil)
									self:Speak("forgive")
								end
							end
						end )
					else
						self:Speak("scld_plr_kllally")
					end
				elseif victim:IsPlayer() and self.FriendlyToPlayers then
					self:Speak("lmnt_deadplr_mc")
				else
					self:Speak("lmnt_deadally")
				end
			elseif attacker:IsPlayer() and !self.FriendlyToPlayers then
				--self:Speak("FriendKilledByEnemyPlayer")
				self.LastAllyKill = CurTime()
				local last = self.LastAllyKill
				timer.Simple( 30, function()
					if IsValid(self) then
						if self.LastAllyKill == last then
							self.NoticedKills = 0
							self.FriendlyToPlayers = true
							self:SetEnemy(nil)
							self:Speak("forgive")
						end
					end
				end )
			else
				if self.SawAlliesDie then
					local AI = self.AIType
					self.AIType = "Defensive"
					local func = function()
						if self.IsSergeant and !self.IsInVehicle then
							self:Speak("newordr_fallback")
							H3HS:Signal("Retreat",self)
							self:PlaySequenceAndMove(self:LookupSequence(self.FallbackAnim),1,self:GetForward()*-1,50,0.7)
						else
							--print(HRHS:WasSignalGiven("Retreat",3))
							if !self.FollowingRetreatOrder and H3HS:WasSignalGiven("Retreat",3) and IsValid(HRHS:GetCaller("Retreat")) and (!IsValid(HRHS:GetCaller("Retreat").S1) or !IsValid(HRHS:GetCaller("Retreat").S2) ) then
								local leader = H3HS:GetCaller("Retreat")
								local goal = leader:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 300
								local navs = navmesh.Find(goal,256,100,20)
								local nav = navs[math.random(#navs)]
								local pos = goal
								if nav then pos = nav:GetRandomPoint() end
								self.FollowingRetreatOrder = true
								if IsValid(leader.S1) then leader.S2 = self else leader.S1 = self end
								timer.Simple( math.random(4,10), function() if IsValid(self) then self.FollowingRetreatOrder = false end end )
								self:MoveToPosition( pos, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
								if leader.S1 == self then leader.S1 = nil elseif leader.S2 == self then leader.S2 = nil end
							end
						end
					end
					timer.Simple( math.random(20,30), function()
						if IsValid(self) then
							self.AIType = AI
						end
					end )
					table.insert(self.StuffToRunInCoroutine,func)
					self:ResetAI()
				else
					if victim:IsPlayer() then
						self:Speak("lmnt_deadplr_mc")
					end
				--self:Speak("NearMassacre")
				end
			end
		end
	elseif rel == "foe" and !victim.BeenNoticed then
		--victim.BeenNoticed = true
		local spoke = false
		self.CountedEnemies = self.CountedEnemies+1
		if self.CountedEnemies > 4 and !self.MentionedSpree then
			self.MentionedSpree = true
			timer.Simple( 30, function()
				if IsValid(self) then
					self.MentionedSpree = false
				end
			end )
			if attacker:IsPlayer() then
				self:Speak("prs_plr_kll_lots")
			else
				self:Speak("taunt")
			end
			self.Taunting = true
			timer.Simple( 2, function()
				if IsValid(self) then
					self.Taunting = false
				end
			end )
			local func = function()
				if self.IsInVehicle then return end
				if self.IsSergeant then
					if math.random(1,2) == 1 then
						self:Speak("newordr_charge")
					else
						self:Speak("newordr_advance")
					end
					H3HS:Signal("Advance",self)
					self:PlaySequenceAndPWait(self.AdvanceAnim,1,self:GetPos())
				else
					self:PlaySequenceAndWait(self.ShakeFistAnim)
				end
			end
			if self.IsSergeant or HRHS:WasSignalGiven(sign,4) then
				self:Speak("ordr_re")
				local AI = self.AIType
				self.AIType = "Offensive"
				timer.Simple( math.random(20,30), function()
					if IsValid(self) then
						self.AIType = AI
					end
				end )
			end
			table.insert(self.StuffToRunInCoroutine,func)
		else
			if attacker:IsPlayer() then
				if math.random(1,2) == 1 then
					self:Speak("prs_plr_kll")
				end
			end
		end
		timer.Simple( 60, function()
			if IsValid(self) then
				self.CountedEnemies = self.CountedEnemies-1
			end
		end )
	end
	if victim == self.Enemy and !victim.GettingShot then
		local spot = ( self.RegisteredTargetPositions[victim] or victim:GetPos() ) + Vector(math.random(-64,64),math.random(-64,64),0)
		local new = self:GetATarget()
		if attacker:IsPlayer() and math.random(1,2) == 1 then
			self:Speak("kllmytrgt")
		elseif attacker == self and math.random(1,2) == 1 then
			self:Speak("chr_kllfoe")
		end
		if !IsValid(new) then
			if !self.DoingMelee then
				self:ResetAI()
			end
			if self.AIType == "Offensive" and !self.ShootCorpseFilter[self:GetActiveWeapon():GetClass()] then
				if victim:IsPlayer() and !self.CommentedTraitorDeath then
					self.CommentedTraitorDeath = true
					timer.Simple( math.random(2,3), function()
						if IsValid(self) then
							self.CommentedTraitorDeath = false
						end
					end )
					self:Speak("OnKillPlayer")
				end
				
				if math.random(1,2) == 1 and isvector(spot) then
					victim.GettingShot = true
					self.SpecificGoal = spot
					local func = function()
						if self.IsInVehicle then return end
						coroutine.wait(1)
						self:WanderToPosition(spot,self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier)
						self:Speak("chkfoebdy")
						local lim = self.Weapon.BurstLength
						local old = self.Weapon.Fire_AngleOffset
						self.Weapon.Fire_AngleOffset = Angle(math.AngleDifference(self:GetAimVector():Angle().p,self:EyeAngles().p),math.AngleDifference(self:EyeAngles().y,self:GetAimVector():Angle().y),0)
						for i = 1, lim do
							timer.Simple( (self.Weapon.Primary.Delay*i), function()
								if IsValid(self) and IsValid(self.Weapon) then
									self.Weapon:ShootBullets()
									self.Weapon:FiringEffects()
									self.Weapon:EmitSound( self.Weapon.Sound, self.Weapon.Sound_Vol, self.Weapon.Sound_Pitch, 1, CHAN_WEAPON )
									self:OnFiring()
									if i == lim then self.SpecificGoal = nil self.Weapon.Fire_AngleOffset = old end
								end
							end )
						end
					end
					table.insert(self.StuffToRunInCoroutine,func)
				elseif !victim.OrderCheck then
					victim.OrderCheck = true
					self:Speak("ordr_chkfoebdy")
				end
			end
		end
	end
end

function ENT:Turn(dif,calm,noanim) -- dif is the yaw number to turn, can be negative
	calm = calm or false -- calm is true or false and can be used for calm animations
	noanim = noanim or false -- noanim determines if we don't play an animation when turning
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
	local id, len
	if !noanim then
		id, len = self:LookupSequence(seq)
	else
		len = 1
	end
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
	if !noanim then
		self:SetSequence(seq) -- Turn animation
		self:ResetSequenceInfo() -- Clean things up
		self:SetCycle( 0 ) -- For the turn animation
		self:SetPlaybackRate( 1 ) -- To play correctly
		coroutine.wait(z)
		self:ResetSequence(self.IdleAnim[math.random(#self.IdleAnim)]) -- Go back to an idle animation
	end
end

function ENT:MoveToPos( pos, options ) -- MoveToPos but I added some stuff
	for i = 1, #self.IdleAnim do
		if self.loco:GetVelocity():IsZero() and self:GetActivity() == self.IdleAnim[i] then
			local anim = self.WanderAnim[math.random(#self.WanderAnim)]
			if type(anim) == "string" then
				self:ResetSequence( anim )
			else
				self:StartActivity( anim )			-- Move animation
			end
		end
	end
	local options = options or {}
	local path = Path( "Follow" )
	path:SetMinLookAheadDistance( options.lookahead or self.PathMinLookAheadDistance )
	path:SetGoalTolerance( options.tolerance or self.PathGoalTolerance )
	path:Compute( self, pos )
	if ( !IsValid(path) ) then return "failed" end
	while ( IsValid(path) ) do
		if GetConVar( "ai_disabled" ):GetInt() == 1 then
			return "Disabled thinking"
		end
		if self.UpdateTime < CurTime() then
			if self.PushingProp and !self.DoingPush then
				timer.Simple( 0.5, function()
					if IsValid(self.PushedProp) then
						local p = self.PushedProp:GetPhysicsObject()
						if IsValid(p) then
							p:Wake()
							local d = self.PushedProp:GetPos()-self:GetPos()
							p:SetVelocity(d*5)
						end
					end
				end )
				self.DoingPush = true
				local seq = self:GetSequence()
				self:PlaySequenceAndPWait(self.PushAnim[math.random(#self.PushAnim)])
				self:ResetSequence(seq)
				self.DoingPush = false
				self.PushingProp = false
			end
			if self.loco:GetVelocity():IsZero() and self.loco:IsAttemptingToMove() then
				-- We are stuck, don't bother
				return "Give up"
			end
			if options.callback then
				options.callback()
			end
			self.UpdateTime = CurTime()+self.MoveUpdateTime
		end
		local ang = self:GetAngles()
		path:Update( self )
		self:SetAngles(ang)
		if ( options.draw ) then
			path:Draw()
		end
		if ( self.loco:IsStuck() ) then
			self:HandleStuck()
			return "stuck"
		end
		if ( options.maxage ) then
			if ( path:GetAge() > options.maxage ) then return "timeout" end
		end
		if ( options.repath ) then
			if ( path:GetAge() > options.repath ) then path:Compute( self, pos ) end
		end
		coroutine.yield()
	end
	return "ok"
end

function ENT:ThrowGrenade()
	self.ThrowedGrenade = true
	timer.Simple( math.random(5,10), function()
		if IsValid(self) then
			self.ThrowedGrenade = false
		end
	end )
	self.ThrowingGrenade = true
	local grenade
	if !self:WasSignalGiven("ThrowAllGrenades",5) then 
		self:Speak("ordr_grenade")
	end
	timer.Simple( 0.4, function()
		if IsValid(self) then
			grenade = ents.Create("astw2_halo3_frag_thrown")
			grenade.Detonate = function() -- I can't believe what I just have done
			if SERVER then
				if not grenade:IsValid() then return end
				local effectdata = EffectData()
				effectdata:SetOrigin(grenade:GetPos() + Vector(0,0,25))

				if grenade:WaterLevel() >= 1 then
					util.Effect( "WaterSurfaceExplosion", effectdata )
				sound.Play( "halo/halo_3/frag_expl_water" .. math.random(1,5) .. ".ogg",  grenade:GetPos(), 100, 100 )
				else
					ParticleEffect( "astw2_halo_3_frag_explosion", grenade:GetPos(), grenade:GetAngles() )
				end
			util.Decal( "astw2_halo_reach_impact_soft_terrain_explosion", grenade:GetPos(), grenade:GetPos() - Vector(0, 0, 32), grenade )
				local resp = IsValid(grenade.Owner) and grenade.Owner or grenade
				util.BlastDamage(grenade, resp, grenade:GetPos(), 450, 175)
				sound.Play( "halo/halo_3/frag_expl_h3_" .. math.random(2,6) .. ".ogg",  grenade:GetPos(), 100, 100 )
			util.ScreenShake(grenade:GetPos(),10000,100,0.8,1024)
				grenade:Remove()

			end
		end
			local att = self:GetAttachment(2)
			grenade:SetPos(att.Pos)
			grenade:SetAngles(att.Ang)
			grenade:SetOwner(self)
			grenade:Spawn()
			grenade:Activate()
			grenade:SetMoveType( MOVETYPE_NONE )
			grenade:SetParent( self, 2 )
			grenade.BlastRadius = 200
			grenade.BlastDMG = 80
		end
	end )
	timer.Simple( 0.8, function()
		if IsValid(self) and IsValid(grenade) then
			grenade:SetMoveType( MOVETYPE_VPHYSICS )
			grenade:SetParent( nil )
			grenade:SetPos(self:GetAttachment(2).Pos)
			local prop = grenade:GetPhysicsObject()
			if IsValid(prop) then
				prop:Wake()
				prop:EnableGravity(true)
				local vel = (self:GetUp()*(math.random(10,50)*5))
				vel = vel+((self:GetAimVector() * 600))
				prop:SetVelocity( vel )
			end
		end
	end )
	self:PlaySequenceAndMove(self.GrenadeAnim[math.random(#self.GrenadeAnim)],1,self:GetForward(),40,0.8)
	self.ThrowingGrenade = false
	self.ThrownGrenades = self.ThrownGrenades+1
end

function ENT:WasSignalGiven(order,limit)
	if self.IsBrute then
		return H3BS:WasSignalGiven(order,limit)
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
	self:SetPoseParameter("aim_yaw",(self.YPP+(di)))
	self.YPP = self:GetPoseParameter("aim_yaw")
	--print(self.YPP)
	self:SetPoseParameter("aim_pitch",(self.PPP+(dip)))
	self.PPP = self:GetPoseParameter("aim_pitch")
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