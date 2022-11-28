AddCSLuaFile()
include("voices.lua")
include("behaviors.lua")
include("vehiclestuff.lua")
include("animations.lua")

ENT.Base = "npc_iv04_base"

ENT.IsHalo3NextBot = true

ENT.SearchJustAsSpawned = false

ENT.CanUse = true

ENT.UpdateTime = 0

ENT.MoveUpdateTime = 0.5

ENT.YPP = 0
ENT.PPP = 0

ENT.LastCalcTime = 0

ENT.LastThinkTime = 0

ENT.NThink = 0

ENT.LastTimeWeShot = 0

ENT.ThinkDelay = 2

ENT.AimCalculationT = 2

ENT.ThrownGrenades = 0

ENT.MoveSpeed = 100

ENT.DropHeight = 400

ENT.Difficulty = 2 
-- 1 Easy, 2 Normal, 3 Heroic, 4 Legendary

ENT.WeaponAccuracy = 0 -- This is to be used along with difficulty for specific weapons
-- like shotgun

ENT.ShootDist = 1024

ENT.DodgeChance = 20

ENT.GrenadeSignalChance = 20

ENT.GrenadeRange = 768

ENT.AttractAlliesRange = 768

ENT.NoticedKills = 0

ENT.CountedEnemies = 0

ENT.MentionedSpree = false

ENT.CountedAllies = 0

ENT.MentionedAllySpree = false

ENT.CollisionMask = MASK_NPCSOLID

ENT.CanReactToGrenades = true

ENT.GrenadeDodgeDistance = 350

ENT.VehicleEyeAng = Angle(0,0,0)

ENT.DamageResistances = {}

ENT.CurrentFiringGestureAct = 0 

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

ENT.WeaponlessTemplates = {
		["HUNTER"] = true,
		["ENGINEER"] = true,
		["PROPHET"] = true,
		["SCARAB"] = true,
		["SENTINEL"] = true,
		["ENFORCER"] = true,
		["MONITOR"] = true,
		["CONSTRUCTOR"] = true,
		["FLOOD_INFECTION"] = true,
		["FLOOD_CARRIER"] = true,
		["FLOOD_TANK"] = true,
		["FLOOD_STALKER"] = true,
		["FLOOD_RANGED"] = true
}

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

ENT.BackpackHealth = 20
ENT.AccumulatedDamage = 0 -- For flinching
ENT.AccumulatedBleedDamage = 0 -- For bleeding
ENT.DamageThreshold = 20
ENT.FlinchDelay = 0 -- None

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

ENT.MeleeCooldownMin = 2 -- Once the nextbot does its melee, the cooldown will be
ENT.MeleeCooldownMax = 4 -- Random between Min and Max
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

ENT.SpeakSpeed = 1 -- Speed at which the mouth moves when talking
ENT.SpeakCycle = 0 -- Point from 0 to 1 at which the animation starts
ENT.BlinkSpeed = 0.1 -- The blink speed is actually very fast for 0.1 don't worry

ENT.AllowSounds = {
	["Footstep"] = true
}

-------- Sound variables

-------- Initialize functions

if CLIENT then

	function ENT:OnClientInitialize()
		local func = self.TemplateCLInitialize[self.AITemplate]
		func(self)
		self.Think = self.TemplateThink[self.AITemplate]
	end

end

function ENT:PreInit()
	self.CustomBehaviour = self.TemplateBehaviors[self.AITemplate]
	self.DoCustomIdle = self.TemplateIdle[self.AITemplate]
	self.Think = self.TemplateThink[self.AITemplate]
	self.loco:SetGravity(600)
end

function ENT:OnInitialize()
	self.DoesntUseWeapons = self.WeaponlessTemplates[self.AITemplate]
	--print(self.AITemplate,self.DoesntUseWeapons)
	local func = self.TemplateInitialize[self.AITemplate]
	func(self)
	self.BleedThreshold = 25
	self.AIType = GetConVar("halo_3_nextbots_ai_type"):GetString() or self.AIType
	self.EnableFlashlight = GetConVar("halo_3_nextbots_ai_flashlights"):GetInt() == 1 or false
	self.DisableCorpseShooting = GetConVar("halo_3_nextbots_ai_shootcorpses"):GetInt() == 1 or false
	self.CatchModifier = GetConVar("halo_3_nextbots_ai_skull_catch"):GetInt()
	if self.PossibleWeapons then
		local wep = table.Random(self.PossibleWeapons)
		self:Give(wep,GetConVar("halo_3_nextbots_ai_combat_ready"):GetInt() == 1 or self.SpawnWithWeaponDrawn)
	end
	self.Difficulty = GetConVar("halo_3_nextbots_ai_difficulty"):GetInt()
	self.MeleeDamage = (self.MeleeDamage*(self.Difficulty)*0.5)
	if self.EnableFlashlight then
		if self:LookupAttachment("flashlight") != 0 then
			self.Sprite = ents.Create("env_sprite")
			self.Sprite:SetPos(self:GetAttachment(self:LookupAttachment("flashlight")).Pos)
			self.Sprite:SetParent(self,self:LookupAttachment("flashlight"))
			self.Sprite:SetOwner(self)
			self.Sprite:SetAngles(self:GetAngles()+Angle(0,90,0))
			self.Sprite:SetColor(self.MonitorColor or Color( 255, 255, 255 ))
			self.Sprite:SetKeyValue( "scale", "0.1" )
			self.Sprite:SetKeyValue( "model", "effects/halo3/8pt_ringed_star_flare.vmt" )
			self.Sprite:SetKeyValue( "framerate", "30" )
			self.Sprite:SetKeyValue( "rendermode", "9" )
			self.Sprite:SetKeyValue( "spawnflags", "1" )
			self.Sprite:Spawn()
			self.Sprite:Activate()
		elseif (self:LookupAttachment("flashlight_L") != 0 and self:LookupAttachment("flashlight_R") != 0) then
			self.Sprite = ents.Create("env_sprite")
			self.Sprite:SetPos(self:GetAttachment(self:LookupAttachment("flashlight_L")).Pos)
			self.Sprite:SetParent(self,self:LookupAttachment("flashlight_L"))
			self.Sprite:SetOwner(self)
			self.Sprite:SetAngles(self:GetAngles()+Angle(0,90,0))
			self.Sprite:SetColor(self.MonitorColor or Color( 255, 255, 255 ))
			self.Sprite:SetKeyValue( "scale", "0.1" )
			self.Sprite:SetKeyValue( "model", "effects/halo3/8pt_ringed_star_flare.vmt" )
			self.Sprite:SetKeyValue( "framerate", "30" )
			self.Sprite:SetKeyValue( "rendermode", "9" )
			self.Sprite:SetKeyValue( "spawnflags", "1" )
			self.Sprite:Spawn()
			self.Sprite:Activate()
			self.Sprite = ents.Create("env_sprite")
			self.Sprite:SetPos(self:GetAttachment(self:LookupAttachment("flashlight_R")).Pos)
			self.Sprite:SetParent(self,self:LookupAttachment("flashlight_R"))
			self.Sprite:SetOwner(self)
			self.Sprite:SetAngles(self:GetAngles()+Angle(0,90,0))
			self.Sprite:SetColor(self.MonitorColor or Color( 255, 255, 255 ))
			self.Sprite:SetKeyValue( "scale", "0.1" )
			self.Sprite:SetKeyValue( "model", "effects/halo3/8pt_ringed_star_flare.vmt" )
			self.Sprite:SetKeyValue( "framerate", "30" )
			self.Sprite:SetKeyValue( "rendermode", "9" )
			self.Sprite:SetKeyValue( "spawnflags", "1" )
			self.Sprite:Spawn()
			self.Sprite:Activate()
		end
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

ENT.WeaponRating = {
	["crossbow"] = "thnk_plr_btrwpn",
	["ar2"] = "ok_plr_trdwpn",
	["shotgun"] = "ok_plr_trdwpn",
	["pistol"] = "scrn_plr_wrswpn",
	["revolver"] = "scrn_plr_wrswpn",
	["smg"] = "ok_plr_trdwpn",
	["rpg"] = "thnk_plr_btrwpn"
}

ENT.PingHitGroups = {
	[1] = "Head",
	[2] = "Chest",
	[3] = "Gut",
	[4] = "Left_Arm",
	[5] = "Right_Arm"
}

ENT.FlinchHitGroups = {
	[1] = "Head",
	[2] = "Chest",
	[3] = "Gut",
	[4] = "Left_Arm",
	[5] = "Right_Arm",
	[6] = "Left_Leg",
	[7] = "Right_Leg"
}

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
		self.Reloading = false
	end
	return hold
end

-------- Initialize functions

-------- Misc functions

function ENT:HandleAnimEvent( event, eventTime, cycle, type, options )
	--print(event, eventTime, cycle, type, options)
	if options == "event_halo_3_infectionform_move" then
		--print(self:GetSequence())
		self:DoAnimation(self.RunAnim)
	end
end

function ENT:CollideCooldown(ent)
	self.CollidedEntities[ent] = true
	timer.Simple( 1, function() 
		if IsValid(self) and IsValid(ent) then	
			self.CollidedEntities[ent] = nil 
		end 
	end )
end

function ENT:CollidedWith( ent )
	return !(!self.CollidedEntities[ent] and ent:GetOwner() != self)
end

ENT.NextUpdateT = CurTime()
ENT.UpdateDelay = 1
function ENT:OnContact( ent ) -- When we touch someBODY
	if ent == game.GetWorld() then return self:OnTouchWorld(ent) end
	if self.IsInVehicle then return end
	--print(ent, ent:GetOwner())
	if ent:IsVehicle() or ent.LFS or ent.GroundVehicle then
	if self.NextUpdateT < CurTime() then
	self.NextUpdateT = CurTime()+self.UpdateDelay
	local d = DamageInfo()
			d:SetDamage( ent:GetVelocity():Length() )
			d:SetAttacker( ent )
			d:SetInflictor( ent )
			d:SetDamageType( DMG_VEHICLE )
			d:SetDamagePosition( self:NearestPoint( self:WorldSpaceCenter() ) )
			self:TakeDamageInfo(d)
	end
	elseif ent:GetClass() == "func_physbox" then
		local phys = ent:GetPhysicsObject()
			if IsValid(phys) then
				local dir = (ent:GetPos()-self:GetPos()):GetNormalized()
				phys:ApplyForceOffset( dir*30000, ent:NearestPoint(self:GetPos()) )
			end
	end
	if !self:CollidedWith(ent) then 
		self.CollidedEntities[ent] = true
		--print(ent,ent:GetInternalVariable( "parentname" ),ent:GetName())
		--PrintTable(ent:GetKeyValues())
		--PrintTable(ents.FindByName( "yyy_level_2_db_2a" ))
		timer.Simple( 1, function() if IsValid(self) and IsValid(ent) then self.CollidedEntities[ent] = nil end end )
		if self.FlyingDead then self.AlternateLanded = true return end 
		if self.AITemplate == "FLOOD_INFECTION" and !self.Latched and self.Leaping and ent == self.Enemy and !ent.UnderLatchAttack then
				self.Leaping = false
				ent.UnderLatchAttack = true
				if ( (ent.IsVJBaseSNPC == true or ent.CPTBase_NPC == true or ent.IsSLVBaseNPC == true or ent:GetNWBool( "bZelusSNPC" ) == true) or (ent:IsNPC() && ent:GetClass() != "npc_bullseye" && ent:Health() > 0 )  or ((ent:IsNextBot()) and ent != self ) ) and !IsValid(ent:GetEnemy()) and (!ent.Shield or ent.Shield <= 0) and ent:Health() <= 150 then
					local pos = ent:GetAttachment(1).Pos
					self:SetOwner(ent)
					self.LPos = ent:WorldToLocal(pos)
					local dmg = DamageInfo()
					dmg:SetDamage( ent:Health()*0.5 )
					dmg:SetAttacker( self )
					dmg:SetInflictor( self )
					dmg:SetDamageType( DMG_SLASH )
					dmg:SetDamagePosition( pos )
					ent:DispatchTraceAttack( dmg, {HitGroup = 1, Entity = ent,Hit = true, HitPos = pos}, -ent:GetForward() )
					self:SetPos(pos)
				else
					self:SetOwner(ent)
					self.Latched = true
					if self.InfectableTemplates[ent.AITemplate] then
						timer.Simple( 10, function()
							if IsValid(self) then
								self.Latched = false
							end
							if IsValid(ent) then
								ent.UnderLatchAttack = false
							end
						end )
						--self.Leaping = true
						self.Infecting = true
						self.LastTimeOnGround = CurTime()
						self.InfectVictim = ent
						self.LPos = ent:WorldToLocal(ent:WorldSpaceCenter()+ent:GetForward()*-40)
						local anim = self:TableRandom(self.InfectionAnimations[ent.AITemplate])
						--print(anim)
						local victim = ent
						local anims = self.InfectionArrival
						local func1 = function()
							self:PlaySequenceAndWait(self:TableRandom(self.InfectAnims[ent.AITemplate]))
							local func3 = function()
									victim.Faction = "FACTION_FLOOD"
									victim.FriendlyToPlayers = false
									victim.AnimBusy = true
									if IsValid(victim.Weapon) then
										--print(0)
										victim.Weapon:Remove()
									end
									victim.Enemy = nil
									--print(1)
									local id = victim:LookupBone("spine")
									local pos = victim:GetBonePosition( id )
									if pos == ent:GetPos() then
										pos = ent:GetBoneMatrix(id):GetTranslation()
									end
									local muffins = {}
									for i = 1, 3 do
										local muffin = ents.Create("prop_dynamic")
										muffin:SetModel("models/halo_3/characters/flood/muffin.mdl")
										muffin:SetPos(pos+victim:GetForward()*math.random(10,0))
										muffin:SetAngles(Angle(0,victim:GetAngles().y+(30*i),0))
										muffin:SetOwner(victim)
										muffin:SetMoveType( MOVETYPE_NONE )
										muffin:SetParent(victim,6)
										muffin:Spawn()
										muffin:Activate()
										muffins[#muffins+1] = muffin
									end
									local id = victim:LookupBone("spine1")
									local pos = victim:GetBonePosition( id )
									if pos == ent:GetPos() then
										pos = ent:GetBoneMatrix(id):GetTranslation()
									end
									for i = 1, 3 do
										local muffin = ents.Create("prop_dynamic")
										muffin:SetModel("models/halo_3/characters/flood/muffin.mdl")
										muffin:SetPos(pos+victim:GetForward()*math.random(10,0))
										muffin:SetAngles(Angle(0,victim:GetAngles().y+(30*i),0))
										muffin:SetOwner(victim)
										muffin:SetMoveType( MOVETYPE_NONE )
										muffin:SetParent(victim,6)
										muffin:Spawn()
										muffin:Activate()
										muffins[#muffins+1] = muffin
									end
									victim:PlaySequenceAndWait(anim)
									--print(2)
									local flood = ents.Create("npc_iv04_h3_fld_combat_form_human")
									flood:SetPos(victim:GetPos())
									flood:SetAngles(victim:GetAngles())
									flood.Weaponless = true
									flood:Spawn()
									for i = 1, #muffins do
										--local id = flood:LookupBone("spine1")
										--local pos = flood:GetBonePosition( id )
										--if pos == flood:GetPos() then
										--	pos = flood:GetBoneMatrix(id):GetTranslation()
										--end
										--muffins[i]:SetPos(pos)
										muffins[i]:SetParent(flood)
										muffins[i]:SetOwner(flood)
									end
									local func3 = function()
										flood.AnimBusy = true
										flood:PlaySequenceAndWait(anims[anim])
										flood.AnimBusy = false
									end
									table.insert(flood.StuffToRunInCoroutine,func3)
									flood:ResetAI()
									undo.ReplaceEntity(victim,flood)
									victim:Remove()
							end
							table.insert(ent.StuffToRunInCoroutine,func3)
							ent:ResetAI()
							self:Remove()
							--self:SetNoDraw(true)
						end
						timer.Simple( 0.01, function()
							if IsValid(ent) then
								local func2 = function()
									victim.AnimBusy = true
									victim:Speak("panic_infctnfrm")
									victim:PlaySequenceAndWait(self:TableRandom(self.InfectAnims[victim.AITemplate]))
								end
								table.insert(ent.StuffToRunInCoroutine,func2)
								ent:ResetAI()
							end
						end )
						table.insert(self.StuffToRunInCoroutine,func1)
						self:ResetAI()
					else
						timer.Simple( 3, function()
							if IsValid(self) then
								self.Latched = false
							end
							if IsValid(ent) then
								ent.UnderLatchAttack = false
							end
						end )
						self.LPos = ent:WorldToLocal(self:GetPos())
						for i = 1, 5 do
							timer.Simple( 0.2*i, function()
								if IsValid(self) and IsValid(self:GetOwner()) then
									self:GetOwner():TakeDamage( 2, self, self )
								end
							end )
						end
						local func = function()
							self:PlaySequenceAndWait("Feeding_Loop")
							while (self.Latched and IsValid(self.Enemy)) do
								coroutine.wait(0.01)
							end
							self.Latched = false
							self:SetAngles(Angle(0,self:GetAngles().y,0))
						end
						table.insert(self.StuffToRunInCoroutine,func)
						self:ResetAI()
						timer.Simple( 1, function()
							if IsValid(self) then
								self.Latched = false
							end
							if IsValid(ent) then
								ent.UnderLatchAttack = false
							end
						end )
					end
				end
			return
		end
		if ent:GetClass() == "prop_dynamic" then
			local name = ent:GetInternalVariable( "parentname" )
			if name then
				local ents = ents.FindByName( name )
				local door = ents[1]
				--print(door)
				--PrintTable(door:GetKeyValues())
				if IsValid(door) then
					ent = door
					self:CollideCooldown(door)
				end
			end
		end
		if !self.AnimBusy then
			local dir = (ent:WorldSpaceCenter()-self:WorldSpaceCenter()):GetNormalized()
			if (ent.IsVJBaseSNPC == true or ent.CPTBase_NPC == true or ent.IsSLVBaseNPC == true or ent:GetNWBool( "bZelusSNPC" ) == true) or (ent:IsNPC() && ent:GetClass() != "npc_bullseye" && ent:Health() > 0 ) or (ent:IsPlayer() and ent:Alive()) or ((ent:IsNextBot()) and ent != self ) then
				local d = self:GetPos()-ent:GetPos()
				self.loco:SetVelocity(d*5)
			elseif (ent:GetClass() == "prop_door_rotating" or ent:GetClass() == "func_door" or ent:GetClass() == "func_door_rotating" ) then
				ent:Fire( "Open" )
				self:SetAngles(Angle(0,dir:Angle().y,0))
				if !self.DonePush then
					self.DonePush = true
					self:DoMelee()
					timer.Simple( 4, function() if IsValid(self) then self.DonePush = false end end )
				end
			elseif ent:GetClass() == "func_breakable_surf" then
				self:SetAngles(Angle(0,dir:Angle().y,0))
				self:DoMelee()
				if !self.DonePush then
					self.DonePush = true
					self:DoMelee()
					timer.Simple( 4, function() if IsValid(self) then self.DonePush = false end end )
				end
			end
			if self.AllowVehicleFunctions and ent:IsVehicle() and self.DriveThese[ent:GetModel()] and !self.SeenVehicles[ent] then
				self.SeenVehicles[ent] = true
				self.CountedVehicles = self.CountedVehicles+1
				if !self.IsWeaponDrawn then
					self:AdjustWeapon(self.Weapon,true)
					local func = function()
						self:PlaySequenceAndWait(self:TableRandom(self.DrawSlowWeaponAnim))
					end
					table.insert(self.StuffToRunInCoroutine,func)
					self:ResetAI()
				end
			end
			if (self.ThingsToAvoid[ent:GetClass()]) and !self.DonePush then
				self.DonePush = true
				timer.Simple( 4, function() if IsValid(self) then self.DonePush = false end end )
				if !self.AnimBusy then
					--self:SetAngles(Angle(0,dir:Angle().y,0))
					self:DoMelee()
					timer.Simple( 0.7, function()
						if IsValid(self) and IsValid(ent) then
							ent:TakeDamage(self.MeleeDamage,self,self)
						end
					end )
				end
				local p = ent:GetPhysicsObject()
				if IsValid(p) then
					p:Wake()
					local d = ent:GetPos()-self:GetPos()
					p:SetVelocity(d*5)
				end
			end
		end
		local tbl = {
			HitPos = self:NearestPoint(ent:GetPos()),
			HitEntity = self,
			OurOldVelocity = ent:GetVelocity(),
			DeltaTime = 0,
			TheirOldVelocity = self.loco:GetVelocity(),
			HitNormal = self:NearestPoint(ent:GetPos()):GetNormalized(),
			Speed = ent:GetVelocity().x,
			HitObject = self:GetPhysicsObject(),
			PhysObject = self:GetPhysicsObject()
		}
		if isfunction(ent.DoDamageCode) then
			ent:DoDamageCode(tbl,self:GetPhysicsObject())
		elseif isfunction(ent.PhysicsCollide) then 
			ent:PhysicsCollide(tbl,self:GetPhysicsObject())
			if ent:GetParent() == self and ent:GetOwner() != self then
				ent:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
			end
		end
	end
end

function ENT:SearchTimer(len,delay,sequenceid)
	local name = "SearchTimer"..self:EntIndex()..""
	timer.Create( name, delay, 0, function()
		if IsValid(self) and self:GetSequence() == sequenceid then
			local result = self:SearchEnemy()
			if result or IsValid(self.Enemy) then
				timer.Remove(name)
			end
		else
			timer.Remove(name)
		end
	end )
end

function ENT:DoAnimation(anim,act,wait)
	if istable(anim) then
		anim = self:TableRandom(anim)
	end
	local len
	if type(anim) == "string" then
		if wait then
			self:PlaySequenceAndWait(anim)
		else
			self:ResetSequence(anim)
			len = self:SetSequence( anim )
			if len <= 0 then print(anim, "wasn't found at all!") end
		end
	elseif isnumber(anim) then
		if act then
			self:StartActivity(anim)
		else
			if wait then
				self:PlaySequenceAndWait(anim)
			else
				self:ResetSequence(anim)
				len = self:SetSequence( anim )
				if len <= 0 then print(anim, "wasn't found at all!") end
			end
		end
	end
	return len
end

function ENT:ReactToTrade(wep)
	local hold = wep.HoldType_Aim
	local typ = self.WeaponRating[hold]
	--print(hold,typ)
	self:Speak(typ)
	self:AdjustWeapon(wep,true)
end

function ENT:Use( activator )
	--print(1)
	if !self.CanUse then return end
	--print(2)
	if self:CheckRelationships(activator) == "friend" and activator:IsPlayer() then
		local ply = activator
		--print(3)
		if ply:KeyDown(IN_WALK) then
			--print(4)
			self.IsFollowingPlayer = !self.IsFollowingPlayer
			if !IsValid(self.FollowingPlayer) then
				--print(5)
				self.FollowingPlayer = ply
				self:SetNWInt("optredisp",1)
				self:Speak("hail")
				if (self.PossibleWeapons or IsValid(self.Weapon)) and !self.IsWeaponDrawn then
					self:AdjustWeapon(self.Weapon,true)
					local func = function()
						self:PlaySequenceAndWait(self:TableRandom(self.DrawFastWeaponAnim))
					end
					table.insert(self.StuffToRunInCoroutine,func)
					self:ResetAI()
				end
			else
				self.FollowingPlayer = nil
				self.LookTarget = nil
				self.StartPosition = self:GetPos()
				self:SetNWInt("optredisp",0)
			end
			self.CanUse = false
			timer.Simple( 1, function()
				if IsValid(self) then
					self.CanUse = true
				end
			end )
		elseif self.IsWeaponDrawn and IsValid(ply:GetActiveWeapon()) and IsValid(self.Weapon) and self.Weapon:GetClass() != ply:GetActiveWeapon():GetClass() and self.TotalHolds[ply:GetActiveWeapon().HoldType_Aim] then
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
									self:ReactToTrade(self.Weapon)
									self.CanUse = true
									--if math.random(1,2) == 1 then self:Speak("ok_plr_trdst_grn") end
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
		if v.Speak then
			timer.Simple( tim, function()
				if IsValid(v) then
					v:Speak(quote)
				end
			end )
			break
		end
	end
end

--[[
$hbox 0 - Generic - the default group of hitboxes, appears White in HLMV
$hbox 1 - Head - Used for human NPC heads and to define where the player sits on the vehicle.mdl, appears Red in HLMV
$hbox 2 - Chest - Used for human NPC midsection and chest, appears Green in HLMV
$hbox 3 - Stomach - Used for human NPC stomach and pelvis, appears Yellow in HLMV
$hbox 4 - Left Arm - Used for human Left Arm, appears Deep Blue in HLMV
$hbox 5 - Right Arm - Used for human Right Arm, appears Bright Violet in HLMV
$hbox 6 - Left Leg - Used for human Left Leg, appears Bright Cyan in HLMV
$hbox 7 - Right Leg - Used for human Right Leg, appears White like the default group in HLMV
]]
--[[ -- Flood Guide
4 - Left arm
5 - Right arm
9 - "head"
1 - Chest weakspot
]]
function ENT:OnTraceAttack( info, dir, trace )
	--if self.Unkillable then info:SetDamage(0) end
	if trace.HitGroup == 1 and !self.HeadShotImmune then
		info:ScaleDamage(3)
	end
	if self:Health() - info:GetDamage() <= 0 then self.DeathHitGroup = trace.HitGroup return end
	if self.AnimBusy then return end
	local hg = trace.HitGroup
	--print(hg)
	if self.WeakHitGroup and hg != self.WeakHitGroup then
		info:SetDamage(0)
	end
	if hg == self.WeakHitGroup then
	ParticleEffect( self.BloodParticle, trace.HitPos, self:GetAngles(), self )
	end
	local ang = (trace.HitPos-self:WorldSpaceCenter()):GetNormalized():Angle()
	local dif = math.AngleDifference(ang.y,self:GetAngles().y)
	if dif < 0 then dif = dif+360 end
	self.AccumulatedDamage = self.AccumulatedDamage+info:GetDamage()
	local behind = (dif > 90 and dif < 270)
	--print(behind)
	if !self.DroppedBackpack and self.BackpackModel and trace.HitGroup == self.BackpackHitGroup then
		self.BackpackHealth = self.BackpackHealth-math.abs(info:GetDamage())
		--print(1,self.BackpackHealth)
		if self.BackpackHealth < 0 then
			--print(2)
			self:SetBodygroup(2,1)
			local prop = ents.Create( "prop_physics" )
			prop:SetModel( self.BackpackModel )
			prop:SetPos(self:GetAttachment(self:LookupAttachment(self.BackpackAttachment)).Pos)
			prop:Spawn()
			prop:SetSkin(self.Rank)
			self:EmitSound("halo_reach/characters/grunt/grunt_backpack_steam/grunt_backpack_steam"..math.random(1,3)..".ogg",100)
			ParticleEffectAttach("iv04_halo_reach_grunt_methane_leak_violent",PATTACH_POINT_FOLLOW,self,self:LookupAttachment(self.BackpackAttachment))
			self.DroppedBackpack = true
			timer.Simple( 30, function()
				if IsValid(prop) then
					prop:Remove()
				end
			end )
		end
	end
	if !self.IsInVehicle and self.AccumulatedDamage > self.DamageThreshold then
		self.AccumulatedDamage = 0
		if self.FlinchHitGroups[hg] then
			local doflinch = false
			local flinchanim
			if behind then
				if self.FlinchBackAnims[self.FlinchHitGroups[hg]] then
					doflinch = true
					flinchanim = self.FlinchBackAnims[self.FlinchHitGroups[hg]]
				end
			else
				doflinch = true
				flinchanim = self.FlinchFrontAnims[self.FlinchHitGroups[hg]]
			end
			--print(flinchanim)
			if doflinch then
				self.AnimBusy = true
				local func = function()
					self:PlaySequenceAndPWait(flinchanim)
					self.AnimBusy = false
				end
				table.insert(self.StuffToRunInCoroutine,func)
				self:ResetAI()
			end
		end
	elseif self.PingHitGroups[hg] then
		if self.PingHitGroups[hg] then
			local doping = false
			local pinganim
			if behind then
				if self.FlinchBackAnims[self.PingHitGroups[hg]] then
					doping = true
					pinganim = self.PingBackAnims[self.PingHitGroups[hg]]
				end
			else
				doping = true
				pinganim = self.PingFrontAnims[self.PingHitGroups[hg]]
			end
			--print(flinchanim)
			if doping then
				self:DoGestureSeq(pinganim)
			end
		end
	end
	--print(hg)
	if self.FloodGibs then
		if self.FloodGibGroups[hg] then
			--print(hg)
			local num = self.FloodGibGroups[hg]
			--print(num)
			self:SetBodygroup(num,1)
			if self.FloodGibModels[hg] then
				local prop = ents.Create("prop_physics")
				prop:SetModel(self.FloodGibModels[hg])
				ParticleEffect( "iv04_halo_3_flood_gib_small", info:GetDamagePosition(), self:GetAngles() )
				prop:SetPos(info:GetDamagePosition())
				prop:SetOwner(self)
				prop:SetAngles(self:GetAngles())
				prop:Spawn()
				info:ScaleDamage(0)
				if IsValid(prop:GetPhysicsObject()) then
					prop:GetPhysicsObject():Wake()
					--prop:GetPhysicsObject():SetVelocity( trace.Normal*info:GetDamage()+self:GetUp()*100 )
				end
				timer.Simple( 10, function()
					if IsValid(prop) then
						prop:Remove()
					end
				end )
				self.FloodGibModels[hg] = false
				if hg == self.WeaponHitGroup then
					if !self.DoesntUseWeapons and IsValid(self.Weapon) and IV04_DropWeapons then
						local wep = ents.Create(self.Weapon:GetClass())
						wep:SetPos(self.Weapon:GetPos())
						wep:SetAngles(self.Weapon:GetAngles())
						wep:Spawn()
						self.Weapon:Remove()
						timer.Simple(30, function()
							if IsValid(wep) and !IsValid(wep:GetOwner()) then
								wep:Remove()
							end
						end )
					end
					self.PossibleWeapons = nil
				elseif hg == self.MeleeHitGroup then
					--print("no melee")
					self.DisableMelee = true
				end
			end
		end
	elseif self.RemovableHeadBodygroups and !self.DroppedHeadStuff and self.FlinchHitGroups[hg] == "Head" then
		if self.RemovableHeadPartModel then
			local prop = ents.Create("prop_physics")
			prop:SetModel(self.RemovableHeadPartModel)
			prop:SetPos(info:GetDamagePosition())
			prop:SetOwner(self)
			prop:SetAngles(self:GetAngles())
			prop:Spawn()
			prop:SetBodygroup(0,self:GetBodygroup(self.RemovableBodygroup)-1)
			if IsValid(prop:GetPhysicsObject()) then
				prop:GetPhysicsObject():Wake()
				--prop:GetPhysicsObject():SetVelocity( trace.Normal*info:GetDamage()+self:GetUp()*100 )
			end
			timer.Simple( 60, function()
				if IsValid(prop) then
					prop:Remove()
				end
			end )
		end
		self:SetBodygroup(self.RemovableBodygroup,self.RemovableChange)
		self.DroppedHeadStuff = true
	end
end

function ENT:OnLeaveGround(ent)
	--print("jumped",CurTime())
	self.LastTimeOnGround = CurTime()
	local t = self.LastTimeOnGround
	if !self.IsInVehicle and !self.VehicleRole then
		if self:Health() <= 0 then 
			self:DoAnimation(self.DeadAirAnim)
			self.AnimBusy = true
			timer.Simple( 20, function() if IsValid(self) then self.AlternateLanded = true end end )
			--print(1)
		elseif self.Leaping then
			self.AnimBusy = true
			if self.IsJumpers then
				self:DoAnimation(self.AirAnim)
				timer.Simple( 6, function()
					if IsValid(self) and self.LastTimeOnGround == t and self.Leaping then
						self.AnimBusy = false
						self:DoAnimation(self.DeadAirAnim)
						--self:Speak("thrwn")
						--print(2.3)
						self.FlyingDead = true
						self:OnKilled(DamageInfo())
						self:SetHealth(0)
					end
				end )
			else
				self:DoAnimation(self.LeapAirAnim)
				--print(2)
				timer.Simple( 6, function()
					if IsValid(self) and self.LastTimeOnGround == t and self.Leaping then
						self.AnimBusy = false
						self:DoAnimation(self.DeadAirAnim)
						--self:Speak("thrwn")
						--print(2.3)
						self.FlyingDead = true
						self:OnKilled(DamageInfo())
						self:SetHealth(0)
					end
				end )
			end
		else
			--print(3)
			timer.Simple( 0.6, function()
				if IsValid(self) and self.LastTimeOnGround == t then
					self:DoAnimation(self.AirAnim)
					--print(3.1)
				end
			end )
			timer.Simple( 3, function()
				if IsValid(self) and self.LastTimeOnGround == t then
					--print(3.2)
					self:DoAnimation(self.DeadAirAnim)
					--self:Speak("thrwn")
					self.FlyingDead = true
					self:OnKilled(DamageInfo())
					self:SetHealth(0)
				end
			end )
		end
	end
end

function ENT:OnLandOnGround(ent)
	--print("landed",CurTime())
	if self.IsInVehicle or self.VehicleRole then
		return
	end
	if self.FlyingDead then
		self.HasLanded = true
	elseif self.Leaping then
		self.AnimBusy = false
		self.Leaping = false
		self.LastTimeOnGround = CurTime()
		if self.IsJumpers then
			self:StopParticles()
		elseif self.HasMeleeWeapon then
			local func = function()
				local oldmelee = self.MeleeAnim
				self.MeleeAnim = self.LeapMeleeAnim
				self:DoMelee()
				self.MeleeAnim = oldmelee
			end
			table.insert(self.StuffToRunInCoroutine,func)
			self:ResetAI()
		else
			self:DoAnimation(self.RunAnim)
		end
	elseif self.LastTimeOnGround then
		local seq = self:TableRandom(self.LandAnim)
		if ( CurTime() - self.LastTimeOnGround ) > 1 then
			seq = self:TableRandom(self.LandHardAnim)
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
	self:DoAnimation(self.CrouchIdleAnim)
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

function ENT:ChaseTarget(ent)
	if self.UseLineOfSight then
		if self.HasMeleeWeapon then
			self:GoToPosition( ent, self:TableRandom(self.RunAnim), self.MoveSpeed*self.MoveSpeedMultiplier, { repath = 0.5 , callback = function() if IsValid(self.Enemy) and self.DistToTarget < self.MeleeRange^2 then return self:MeleeChecks(true,self.DistToTarget) end end } )
		else
			if ent.BeingChased then
				self:Speak("join_invsgt")
			else
				if self.IsSergeant and math.random(1,2) == 1 then
					self:Speak("ordr_invsgt")
				else
					self:Speak("invsgt")	
				end
			end
			ent.BeingChased = true
			self:SetEnemy(nil)
			self:GoToPosition(self.RegisteredTargetPositions[ent],self:TableRandom(self.RunAnim),self.MoveSpeed*self.MoveSpeedMultiplier,self.WanderToPos)
			if !IsValid(self.Enemy) then 
				self:Speak("invsgt_fail") 
			end
		end
	else	
		if ent.BeingChased then
			self:Speak("join_invsgt")
		else
			if self.IsSergeant and math.random(1,2) == 1 then
				self:Speak("ordr_invsgt")
			else
				self:Speak("invsgt")	
			end
		end
		ent.BeingChased = true
		self:GoToPosition(self.RegisteredTargetPositions[ent],self:TableRandom(self.RunAnim),self.MoveSpeed*self.MoveSpeedMultiplier,{
		callback = function(a)
			if IsValid(ent) and self.Enemy == ent then
				local target, los = self:LineOfSightChecks(ent)
				if los or target != self.Enemy then
					a:Invalidate()
				end
			end
		end })
	end
end

function ENT:LineOfSightChecks( ent, ignorevehicles )
	local mins, maxs = ent:GetCollisionBounds()
	local los, obstr = self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter()+ent:GetUp()*(maxs*0.25),{self,ent,self:GetOwner()})	
	if IsValid(obstr) then	
		if !ignorevehicles and ( self.DriveThese[obstr:GetModel()] and !self.SeenVehicles[obstr] ) then
			self.SeenVehicles[obstr] = true
			self.CountedVehicles = self.CountedVehicles+1
		elseif ( ( obstr:IsNPC() or obstr:IsPlayer() or obstr:IsNextBot() ) and obstr:Health() > 0 ) and self:CheckRelationships(obstr) == "foe" then
			ent = obstr
			self:SetEnemy(ent)
		end
	end
	return ent, los
end

function ENT:GoToPosition( pos, anim, speed, movefunc, postarriveanim )
	--print(pos,anim,speed,movefunc)
	local args
	--movefunc = movefunc or self.MoveToPos
	local goal = pos
	if IsEntity(pos) then goal = pos:GetPos() end
	if istable(movefunc) then
		args = movefunc -- We received the arguments to be used in MoveToPos
		movefunc = self.MoveToPos
	else
		movefunc = movefunc or self.MoveToPos
	end
	--[[ movefunc can be used like this
self:GoToPosition(ent:GetPos(),self:TableRandom(self.RunAnim),self:GetRunSpeed(),self.WanderToPos)
	]]
	if !util.IsInWorld( goal ) then return "Tried to move out of the world!" end
	local ani, typ = self:TransitionChecks( anim, speed )
	local enemy = IsEntity(pos) and self:CheckRelationships(ent) == "foe" or IsValid(self.Enemy)
	--print(anim)
	if type(anim) == "string" then
		self:ResetSequence( anim )
	else
		self:StartActivity( anim )			-- Move animation
	end
	self.loco:SetDesiredSpeed( speed )		-- Move speed
	self.loco:SetAcceleration( speed+speed )
	movefunc(self,pos,args)
	self:TransitionArrival(typ,enemy)
	local tb = postarriveanim or self.IdleAnim
	--PrintTable(tb)
	local ranim = self:TableRandom(tb)
	--print(ranim)
	if type(ranim) == "string" then
		self:ResetSequence( ranim )
	else
		self:StartActivity( ranim )			-- Move animation
	end
end	

function ENT:FindNearbyPos(goal,dist)
	local dist = dist or 512
	local goal = goal or self:GetPos()
	local dir = (self:GetPos()-goal):GetNormalized()
	if goal == self:GetPos() then dir = self:GetForward() end
	local navs = navmesh.Find( goal+(dir*(dist)), dist, 100, 10 )
	while (table.Count(navs) > 0 or #navs > 0) do
		local area, id = table.Random(navs)
		local pos
		if area and area:IsVisible( goal+Vector(0,0,80) ) then 
			pos = area:GetRandomPoint()
			return pos
		else
			table.remove(navs,id)
			coroutine.yield()
		end
	end
	return self:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * math.random(256,500)
end

function ENT:FindClosePos(goal,dist)
	local dist = dist or 512
	local goal = goal or self:GetPos()
	goal = goal
	local navs = navmesh.Find( goal, dist, 100, 10 )
	--print(#navs,table.Count(navs))
	while (table.Count(navs) > 0 or #navs > 0) do
		local area, id = table.Random(navs)
		local pos
		--print(area,area:IsVisible(goal))
		if area and area:IsVisible( goal+Vector(0,0,80) ) then 
			pos = area:GetRandomPoint()
			return pos
		else
			table.remove(navs,id)
			coroutine.yield()
		end
	end
	--print("none found, F")
	return goal + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * dist
end

function ENT:StrafeNearby( pos, ent, walkallowed, changecourse, crouchdenied )
	local range = self.DistToTarget
	local r = math.random(1,3)
	local crouch = (r == 2) and !crouchdenied
	local anim
	local speed
	if walkallowed then
		local walk = (r == 1 and range < 600^2)
		anim = walk and self:TableRandom(self.WalkAnim) or self:TableRandom(self.RunAnim)
		speed = walk and self.MoveSpeed or self.MoveSpeed*self.MoveSpeedMultiplier 
		--print(anim,speed)		
		self:MoveToPosition( pos, anim, speed )
	else
		anim = self:TableRandom(self.RunAnim)
		speed = self.MoveSpeed*self.MoveSpeedMultiplier 
	end
	if crouch then
		anim = self:TableRandom(self.CrouchMoveAnim)
		speed = self.MoveSpeed
		self:DoTransitionAnim("Idle_2_Crouch")
	end
	--print(anim,speed)
	if changecourse then
		timer.Simple( 5, function()
			if IsValid(self) then
				local func = function()
					self:StrafeNearby(pos, ent, walkallowed, false, crouchdenied)
				end
				table.insert(self.StuffToRunInCoroutine,func)
				self:ResetAI()
			end
		end )
	end
	self:MoveToPosition( pos, anim, speed )
end

function ENT:DoTransitionAnim( typ )
	if !typ then return end
	if !self.TransitionAnims[typ] or self.NoTransitionAnims then return end
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

function ENT:DrawnWeaponChecks()
	if !self.IsWeaponDrawn then
		self:AdjustWeapon(self.Weapon,true)
		self:PlaySequenceAndWait(self:TableRandom(self.DrawSlowWeaponAnim))
	end
end

function ENT:Speak(voice,character)
	if self.Infected or self.DisableOverwriteCurrentVoiceLine then return end
	local character = character or self.Voices[self.VoiceType]
	--print(voice,character,self.VoiceType)
	if character and character[voice] and istable(character[voice]) then
		if self.CurrentSound then self.CurrentSound:Stop() end
		local sound = table.Random(character[voice])
		self.CurrentSound = CreateSound(self,sound)
		self.CurrentSound:SetSoundLevel(100)
		self.CurrentSound:Play()
		self:MoveMouth()
		if self:Health() <= 0 then
			self.Speak = function(a,b) end
		end
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

function ENT:DoMelee(ent,dontwait) -- In case you want to melee a specific entity, use the ent argument when calling this
	if self.DisableMelee then return end
	if !coroutine.running() then 
		local func = function()
			self:DoMelee(ent)
		end
		table.insert(self.StuffToRunInCoroutine,func)
		self:ResetAI()
		return
	end
	self:Speak(self.MeleeQuote)
	local anim = self:TableRandom(self.MeleeAnim)
	local turn
	if IsValid(ent) or IsValid(self.Enemy) then -- If no ent argument, use self.Enemy as target instead
		ent = ent or self.Enemy
		local ang = (ent:GetPos()-self:GetPos()):GetNormalized():Angle()
		local ydif = math.AngleDifference(self:GetAngles().y,ang.y)
		if ydif < 0 then ydif = ydif+360 end
		if self.MeleeBackAnim and ydif < 270 and ydif > 90 then
			anim = self:TableRandom(self.MeleeBackAnim)
			turn = true
		else
			self:SetAngles(Angle(0,ang.y,0))
		end
	end	
	self.DoneMelee = true -- Melee cooldown
	self.DoingMelee = true -- Immediate melee animation cooldown (to stop other parts of the AI)
	--print(anim)
	local id, len = self:LookupSequence(anim)
	--print(id,len)
	local hittime = self.MeleeAnimsHits[anim] or 0.6
	timer.Simple( len*hittime, function() -- Set up a timer for the melee hit
		if IsValid(self) then
			if self.MeleeFromWeapon then
				--self:Speak("melee")
				--self:Speak("charge")
				self.Weapon:MeleeAttack()
			else
				self:DoMeleeDamage(turn)
			end
		end
	end )
	timer.Simple( len, function()
		if IsValid(self) then
			self.DoingMelee = false -- Remove the busy animation status
		end
	end )
	local min = self.MeleeCooldownMin
	local max = self.MeleeCooldownMax
	if self.HasMeleeWeapon then min = len max = len end
	timer.Simple( math.random(min,max), function()
		if IsValid(self) then
			self.DoneMelee = false -- Remove melee cooldown
		end
	end )
	if self.MeleeIsGesture then
		self:DoGestureSeq(id)
		if !dontwait then
			coroutine.wait(len)
		end
	else
		self:PlaySequenceAndPWait(anim,1,self:GetPos())
	end
	if self.GoingForSneakKill then
		self.GoingForSneakKill = false
		self.HaltShoot = false
	elseif !dontwait then
		self:ResetAI()
	end
end

function ENT:DoMeleeDamage(back) -- No arguments needed, everything is defined on the variables
	local damage = self.MeleeDamage
	local dir = !back and self:GetForward() or -self:GetForward()
	for	k,v in pairs(ents.FindInCone(self:WorldSpaceCenter()+(self:GetUp()*20+dir*-20), dir, self.MeleeRange,  math.cos( math.rad( self.MeleeConeAngle ) ))) do
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
			if dif > 120 and dif < 240 and !v.InstaKillImmune then 
				damage = v:Health()
			end
			local d = DamageInfo()
			d:SetDamage( damage )
			d:SetAttacker( self )
			d:SetInflictor( self )
			d:SetDamageType( self.MeleeDamageType )
			d:SetDamagePosition( v:NearestPoint( self:WorldSpaceCenter() ) )
			v:TakeDamageInfo(d)
			v:EmitSound("halo/halo_3/melee/melee"..math.random(1,8)..".ogg", 90, math.random(90,110))
		end
	end
end

function ENT:MeleeChecks(los,range)
	--print(los,range)
	if self.DisableMelee then return end
	--print(los,!self.DoneMelee,range < self.MeleeRange^2)
	if los and !self.DoneMelee and range < self.MeleeRange^2 then
		self:DoMelee()
	end
end

-------- Melee functions

-------- Weapon functions

function ENT:GetShootPos() -- Where to calculate the aiming from
	if IsValid(self:GetActiveWeapon()) then -- If we have a weapon, use the muzzle
		local att = self:GetActiveWeapon():LookupAttachment("muzzle")
		if att == 0 then att = 1 end
		return self:GetActiveWeapon():GetAttachment(1) and self:GetActiveWeapon():GetAttachment(1).Pos or self:WorldSpaceCenter()
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
		--print("specific goal!")
		--debugoverlay.Sphere(self.SpecificGoal,5,5)
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
	if wep.HoldType_Aim == "melee" or wep.HoldType_Aim == "knife" then
		at = "sword_holster"
	end
	local att = drawn and "anim_attachment_RH" or at
	local id = self:LookupAttachment(att)
	local pos = self:GetAttachment(id).Pos
	wep:SetPos(pos)
	--print(drawn)
	if !drawn then
		wep:SetParent(nil)
		--wep:Fire("ClearParent")
		wep:RemoveEffects(EF_BONEMERGE)
	end
	wep:SetParent(self,id)
	wep:Fire("setparentattachment", att)
	self.IsWeaponDrawn = drawn
	if drawn then
		wep:AddEffects(EF_BONEMERGE)
		self:SetAmmo(wep:GetMaxClip1())
		wep:SetClip1(wep:GetMaxClip1())
		if wep:GetClass() == "astw2_halo3_energysword" then
			wep:SetSkin(1)
		end
		if self.EnableFlashlight and self.AITemplate == "MARINE" then
			self.Sprite = ents.Create("env_sprite")
			self.Sprite:SetPos(wep:GetAttachment(1).Pos)
			self.Sprite:SetParent(wep,1)
			self.Sprite:SetOwner(self)
			self.Sprite:SetAngles(self:GetAngles()+Angle(0,90,0))
			self.Sprite:SetColor(self.MonitorColor or Color( 255, 255, 255 ))
			self.Sprite:SetKeyValue( "scale", "0.1" )
			self.Sprite:SetKeyValue( "model", "effects/halo3/8pt_ringed_star_flare.vmt" )
			self.Sprite:SetKeyValue( "framerate", "30" )
			self.Sprite:SetKeyValue( "rendermode", "9" )
			self.Sprite:SetKeyValue( "spawnflags", "1" )
			self.Sprite:Spawn()
			self.Sprite:Activate()
		end
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
	if self.AnimBusy then return end
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
		if !CLIENT and self.IsWeaponDrawn then
			self.HaltShoot = true
			if self.ReloadAnim then
				local a,len = self:LookupSequence(self.ReloadAnim) -- LookupSequence finds the id of a string (name) of animation
				local func = function() -- Prepare a function to add to the behavior
					self:DoGestureSeq(a) -- Play the sequence
					--coroutine.wait(len)
				end
			end
			timer.Simple( len or 2, function() if IsValid(self) then self.HaltShoot = false end end )
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
	return self.Weapon:Clip1() <= 0
end

function ENT:OnFiring()
	if self.ShootAnim then
		self:RemoveGesture(self.CurrentFiringGestureAct)
		self.CurrentFiringGesture = self:TableRandom(self.ShootAnim)
		self.CurrentFiringGestureAct = self:GetSequenceActivity(self:LookupSequence(self.CurrentFiringGesture))
		self:DoGestureSeq(self.CurrentFiringGesture)
	end
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

function ENT:IsWeaponUser()
	return (IsValid(self.Weapon) or istable(self.PossibleWeapons))
end

-- Squad stuff

function ENT:PossibleTargets()
	local tbl = self.RegisteredTargets
	local targets = {}
	local registered = {}
	for ent, bool in pairs(tbl) do
		if IsValid(ent) and ent != self then
			targets[#targets+1] = ent
			registered[ent] = true
		else
			self.RegisteredTargets[ent] = nil
		end
	end
	if self:GetSquad() then
		for v, bool in pairs(self:GetSquad():GetValidTargets(self)) do
			if !registered[v] then
				targets[#targets+1] = v
				registered[v] = true
			end
		end
	end
	return targets
end

function ENT:GetATarget(checkdist) -- checkdist will start searching for enemies again
	local proceed = true
	proceed = (checkdist and !self:SearchEnemy()) or !checkdist
	--print(proceed)
	if proceed then -- set it to false for making the process faster
		for id, ent in pairs(self:PossibleTargets()) do -- but may make nextbots look
			if IsValid(ent) and ent:Health() > 0 then -- dumber sometimes, use wisely
				self:SetEnemy(ent)
				return ent
			end
		end
	end
end


function ENT:GrenadeSignalChecks()
	if !self:IsWeaponUser() or !AllowedH3Squads[self.Faction] then return end
	if math.random(100) >= self.GrenadeSignalChance then
		if self.Faction == "FACTION_COVENANT" then
			if #self:PossibleTargets() > 5 and !H3BS:WasSignalGiven("ThrowAllGrenades",5) then
				H3BS:Signal("ThrowAllGrenades",self)
				self:Speak("ordr_grenade_all")
			end
		elseif self.Faction == "FACTION_ALLIANCE" then
			if self.IsHuman then
				if #self:PossibleTargets() > 5 and !H3HS:WasSignalGiven("ThrowAllGrenades",5) then
					H3HS:Signal("ThrowAllGrenades",self)
					self:Speak("ordr_grenade_all")
				end
			else
				if #self:PossibleTargets() > 5 and !H3ES:WasSignalGiven("ThrowAllGrenades",5) then
					H3ES:Signal("ThrowAllGrenades",self)
					self:Speak("ordr_grenade_all")
				end
			end
		elseif self.Faction == "FACTION_SEPARATISTS" then
			if #self:PossibleTargets() > 5 and !H3ES:WasSignalGiven("ThrowAllGrenades",5) then
				H3ES:Signal("ThrowAllGrenades",self)
				self:Speak("ordr_grenade_all")
			end
		else
			self:CustomSquadHandling("GrenadeSignal")
		end
	end
end

function ENT:GetSquad()
	if self.Faction == "FACTION_COVENANT" then
		return H3BS
	elseif self.Faction == "FACTION_ALLIANCE" then
		if self.IsHuman then
			return H3HS
		else
			return H3ES
		end
	elseif self.Faction == "FACTION_SEPARATISTS" then
		return H3ES
	elseif self.Faction == "FACTION_FLOOD" then
		return H3FS
	else
		return CustomH3Squads[self.Faction]
	end
end

function ENT:CustomSquadHandling() -- For custom factions supporting the squads system
		--[[if #self:PossibleTargets() > 5 and !H3ES:WasSignalGiven("ThrowAllGrenades",5) then
			H3ES:Signal("ThrowAllGrenades",self)
			self:Speak("ordr_grenade_all")
		end]]
		--[[ You want to make something like this, and in your autorun file you want
		to define it like this:
		
		MyCustomSquad = H3S
		
		Now you have your own squad, and in your nextbots you must copypaste this
		function and replace H3ES as in the example here with the name you gave
		your squad, run this in your autorun:
		
		AllowedH3Squads["YOUR_FACTION_HERE"] = true
		
		and lastly do this in your autorun:
		
		CustomH3Squads["YOUR_FACTION_HERE"] = MyCustomSquad
		]]
end

-- Squad Stuff

function ENT:OnHaveEnemy(ent)
	if self:GetSquad() then
		--print(self:GetSquad(),self:PossibleTargets())
		self:GetSquad():SortValidTargets(self:PossibleTargets())
	end
	if self.AllowStealth and !self.DoneStealth and self:IsUndetected() then		
		self.HaltShoot = true
	end
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
		if (self.PossibleWeapons or IsValid(self.Weapon)) and !self.IsWeaponDrawn and !self.ItsBerserkinTime then
			self:AdjustWeapon(self.Weapon,true)
			local func = function()
				self:PlaySequenceAndWait(self:TableRandom(self.DrawFastWeaponAnim))
			end
			table.insert(self.StuffToRunInCoroutine,func)
			self:ResetAI()
		else
			self:ResetAI()
		end
	else
		self:GrenadeSignalChecks()
		if !self.IsInVehicle then
			if !self.DidAlertAnim then
				if !self.BeenSurprised and math.random(1,3) == 1 then
					self.BeenSurprised = true
					local xy = ent:GetPos().x+ent:GetPos().y
					local xy2 = self:GetPos().x+self:GetPos().y
					local dif = math.abs(xy-xy2)
					if !self.NoSurpriseAnim and dif < 700 then
						local func = function()
							local should, dif = self:ShouldFace(ent,10)
							if should then
								--self:Turn(dif,false,true)
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
							--self:Turn(dif,false,true)
							coroutine.wait(0.2)
						end
						if !self.NoWarnAnim then
							self:PlaySequenceAndWait(self:TableRandom(self.WarnAnim))
						end
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
			self:ResetAI()
		end
	end
	self:AlertAllies(ent)
end

function ENT:IsOutNumbered()
	local dif = math.abs(#self:PossibleTargets()-#self:GetSquad():GetMembers()) > 3
	return math.abs(#self:PossibleTargets()-#self:GetSquad():GetMembers()) > 3, dif
end

function ENT:ShieldArcLoop()
	if !self.ShieldDepleteArcsParticle then return end
	--timer.Simple( 1, function()
		--if IsValid(self) then
			--if self.Shield <= 0 then
				--self:SetNWBool("SPShield",false)
				ParticleEffectAttach(self.ShieldDepleteArcsParticle,PATTACH_POINT_FOLLOW,self,self:LookupAttachment("shield_fx") or 1)
				--self:ShieldArcLoop()
			--else
			--	self:StopParticles()
			---end
		--end
	--end )
end

function ENT:OnInjured(dmg)
	--print(dmg:GetInflictor())
	if self:Health() <= 0 then return end
	local rel = self:CheckRelationships(dmg:GetAttacker())
	local ht = self:Health()
	if !self.HasArmor or self.Shield <= 0 then
	if !self.IsHunter then
	ParticleEffect( self.BloodParticle, dmg:GetDamagePosition(), Angle(0,0,0), self )
	end
	end
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
			dmg:SubtractDamage(self.Shield*4)
			self.Shield = self.Shield-math.abs(dm/4)
		else
			dmg:SubtractDamage(self.Shield)
			self.Shield = self.Shield-math.abs(dm)
		end
		--print(self.Shield, "after")
		if self.Shield <= 0 then 
			--print("no more armor!")
			self.Shield = 0 
			self.ShieldWentDown = true
			if self.IsBrute then
				self.HasArmor = false
				self:EmitSound("halo_3/sfx/brute_shield_depletion"..math.random(1,3)..".wav", 100, 100)
				if !self.IsChieftain then
					if self.IsJumpers then
						self:SetBodygroup(3,0)
						self:SetBodygroup(4,0)
						self:SetBodygroup(5,0)
						self:SetBodygroup(6,0)
					else
						self:SetBodygroup(2,0)
						self:SetBodygroup(3,0)
						self:SetBodygroup(4,0)
						self:SetBodygroup(5,0)
						self:SetBodygroup(6,0)
					end
				end 
				if self.AllowBerserk and !self.ItsBerserkinTime and math.random(1,2) == 1 then
					self.ItsBerserkinTime = true
					self.HasMeleeWeapon = true
					self.MoveSpeedMultiplier = self.MoveSpeedMultiplier*1.75
					self:SetupAnimations()
					local func = function()
						self:Speak("kamikaze")
						self:AdjustWeapon(self.Weapon,false)
						self:PlaySequenceAndPWait( self:TableRandom(self.BerserkStartAnim) )
					end
					table.insert(self.StuffToRunInCoroutine,func)
					self:ResetAI()
				end
				self:StopParticles()
			else
				self:ShieldArcLoop()
			end 
			ParticleEffectAttach(self.ShieldDepleteParticle,PATTACH_POINT_FOLLOW,self,self:LookupAttachment("shield_fx") or 1)
		else	
			ParticleEffect(self.ShieldImpactParticle,dmg:GetDamagePosition(),self:GetAngles(),self)
			if self.IsBrute then
				if self.Shield <= self.MaxShield*0.5 then
					ParticleEffectAttach(self.ShieldCriticalParticle,PATTACH_POINT_FOLLOW,self,self:LookupAttachment("shield_fx") or 1)
				end
			end
		end
		if self.HasArmor and !self.ArmorDoesntRegenerate then
			local shild = self.Shield
			timer.Simple( self.ShieldRegenTimeDelay, function()
				if IsValid(self) and shield == self.ShieldH and self.HasArmor then
					local stop = false
					self:StopParticles()
					ParticleEffectAttach(self.ShieldRechargeParticle,PATTACH_POINT_FOLLOW,self,self:LookupAttachment("shield_fx") or 1)
					for i = 1, 10 do
						timer.Simple( self.ShieldRegenTime*0.1, function()
							if IsValid(self) and shield == self.ShieldH and !stop then
								self.Shield = self.Shield+(self.MaxShield*0.1)
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
	--	self:SetNWBool("SPShield",true)
	end
	if self.Unkillable then
		--print("yes")
		dmg:SetDamage(0)
	end
	if ( ( math.abs(self:Health()) - math.abs(dmg:GetDamage())) <= 0 ) and !self.Unkillable then return end
	if self.AnimBusy then return end
	if self.ImmuneDMGs[dmg:GetDamageType()] then dmg:ScaleDamage(0) end
	if self.DamageResistances[dmg:GetDamageType()] then dmg:ScaleDamage(self.DamageResistances[dmg:GetDamageType()]) end
	if dmg:GetDamage() > 0 then
		self.AccumulatedBleedDamage = self.AccumulatedBleedDamage+dmg:GetDamage()
		--print(self.AccumulatedBleedDamage)
		if self.AccumulatedBleedDamage > self.BleedThreshold then
			self.AccumulatedBleedDamage = 0
			--print(((self.HasArmor and self.Shield <= 0) or !self.HasArmor))
			if self.BloodDecal and ((self.HasArmor and self.Shield <= 0) or !self.HasArmor) then
				--print(dir)
				--print(self.AccumulatedBleedDamage)
				util.Decal( self.BloodDecal, dmg:GetDamagePosition(), (dmg:GetDamagePosition())+self:GetUp()*-200, self )
			end
		end
	end
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
		if ( self:Health() < self.StartHealth/2 ) or (math.abs(#self:PossibleTargets()-#self:GetSquad():GetMembers()) > 3 ) and !self.Covered and !self.RecklessTactics then
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
			self:OnHaveEnemy(dmg:GetAttacker())
		end
	end
	if !self.SpokeInjured then
		self.SpokeInjured = true
		timer.Simple( math.random(1,2), function()
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
	if self.AllowHealthRegeneration then
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

function ENT:Kamikaze()
	self.InKamikaze = true
	self.Weapon:SetNoDraw(true)
	self.DisableCorpseShooting = true
	timer.Simple( 0.5, function()
		if IsValid(self) then
			local grenade1 = ents.Create("astw2_halo3_plasma_thrown")
			local att = self:GetAttachment(1)
			grenade1:SetPos(att.Pos)
			grenade1:SetAngles(att.Ang)
			grenade1:SetOwner(self)
			grenade1.ImpactFuse = false
			grenade1.kt = CurTime()+10
			grenade1.FuseTime = 10
			grenade1:Spawn()
			grenade1:Activate()
			grenade1:SetMoveType( MOVETYPE_NONE )
			grenade1:SetParent( self, 1 )
			grenade1.OPC = grenade1.PhysicsCollide
			grenade1.PhysicsCollide = function() end
			grenade1.BlastRadius = 200
			grenade1.BlastDMG = 80
			grenade1.IsKamikazeGren = true
			self.Grenade1 = grenade1
			local grenade2 = ents.Create("astw2_halo3_plasma_thrown")
			local att2 = self:GetAttachment(2)
			grenade2:SetPos(att2.Pos)
			grenade2:SetAngles(att2.Ang)
			grenade2:SetOwner(self)
			grenade2.ImpactFuse = false
			grenade2.FuseTime = 10
			grenade2.kt = CurTime()+10
			grenade2:Spawn()
			grenade2:Activate()
			grenade2:SetMoveType( MOVETYPE_NONE )
			grenade2:SetParent( self, 2 )
			grenade2.OPC = grenade1.PhysicsCollide
			grenade2.PhysicsCollide = function() end
			grenade2.BlastRadius = 200
			grenade2.BlastDMG = 80
			grenade2.IsKamikazeGren = true
			self.Grenade2 = grenade2
		end
	end )
	self:PlaySequenceAndWait("Kamikaze_Start")
end

function ENT:DropKamikazeGrenades()
	if IsValid(self.Grenade1) then		
		self.Grenade1:SetParent(nil)
		self.Grenade1:SetMoveType( MOVETYPE_VPHYSICS )
		self.Grenade1:Initialize()
		self.Grenade1.PhysicsCollide = self.Grenade1.OPC
		self.Grenade1.kt = CurTime()+2
	end
	if IsValid(self.Grenade2) then
		self.Grenade2:SetParent(nil)
		self.Grenade2:SetMoveType( MOVETYPE_VPHYSICS )
		self.Grenade2:Initialize()
		self.Grenade2.PhysicsCollide = self.Grenade2.OPC
		self.Grenade2.kt = CurTime()+2
	end
end

function ENT:Flee(ent)
	ent = ent or self.Enemy
	if !IsValid(ent) then return end
	local navs = navmesh.Find( self:GetPos(), 1024, 100, 10 )
	local tbl = {}
	for k, nav in pairs(navs) do
		if !nav:IsVisible( self:WorldSpaceCenter() ) then
			tbl[nav:GetID()] = nav
		end
	end
	if table.Count(tbl) > 0 or #tbl > 0 then
		self.Hiding = true
		local area = table.Random(tbl)
		local goal = area:GetRandomPoint()
		local should, dif = self:ShouldFace(goal)
		if should then self:Turn(dif,false,true) end
		self:GoToPosition( goal, self.FleePistolMoveAnim, (self.MoveSpeed*self.MoveSpeedMultiplier*2), {facepath = true} )
		timer.Simple( 5, function()
			if IsValid(self) then
				self.Hiding = false
			end
		end )
	end
	if !self.Hiding then
		local nav = table.Random(navs)
		local goal = nav:GetRandomPoint()
		local should, dif = self:ShouldFace(goal)
		if should then self:Turn(dif,false,true) end
		self:GoToPosition( goal, self.FleePistolMoveAnim, (self.MoveSpeed*self.MoveSpeedMultiplier*2), {facepath = true} )
	end
	if math.random(1,2) == 1 then self:PlaySequenceAndWait(self.FleePistolIdleAnim) end
	self:Speak("flee")
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
				if !self.IsInVehicle then
					local func = function()
						self:Turn(dif,false,true)
					end
					table.insert(self.StuffToRunInCoroutine,func)
					self:ResetAI()
				else
					self.SpecificGoal = victim:GetPos()
				end
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
			elseif attacker:IsPlayer() and !self.FriendlyToPlayers and self.NoticedKills > 0 then
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
					if self.AllowBerserk and !self.ItsBerserkinTime and math.random(1,2) == 1 then
						self.ItsBerserkinTime = true
						self.HasMeleeWeapon = true
						self.MoveSpeedMultiplier = self.MoveSpeedMultiplier*1.75
						self:SetupAnimations()
						local func = function()
							self:Speak("kamikaze")
							self:AdjustWeapon(self.Weapon,false)
							self:PlaySequenceAndPWait( self:TableRandom(self.BerserkStartAnim) )
						end
						table.insert(self.StuffToRunInCoroutine,func)
						self:ResetAI()
					elseif !self.ItsBerserkinTime and !self.Spooked and !self.InKamikaze then
						if self.FleeOnHigherRankDead and isnumber(victim.Rank) and !self.DoingKamikaze and !self.Fleeing then
							local weight = self.ClassesWeight[victim.Rank]
							if !weight then return end
							local r1 = math.random(100)
							local result = r1<weight
							if result then
								local func = function()
									self:Speak("kamikaze")
									self.HasMeleeWeapon = true
									--if IsValid(self.Weapon) then
									--	self.Weapon:Remove()
									--end
									self:Kamikaze()
								end
								table.insert(self.StuffToRunInCoroutine,func)
								self:ResetAI()
							else
								if self.SawAlliesDie then 
									weight=weight+20
								end
								if r1<(weight*2) then
									self:Speak("rtrt_ldrdead")
									self.Spooked = true
									timer.Simple( math.random(5,10), function()
										if IsValid(self) then
											self.Spooked = false
										end
									end )
									self.DisableWeaponBehavior = true
									self:ResetAI()
								end
							end
						else
							local AI = self.AIType
							self.AIType = "Defensive"
							local func = function()
								if self.IsSergeant and !self.IsInVehicle then
									self:Speak("newordr_fallback")
									self:GetSquad():Signal("Retreat",self)
									self:PlaySequenceAndMove(self:LookupSequence(self.FallbackAnim),1,self:GetForward()*-1,50,0.7)
								else
									--print(HRHS:WasSignalGiven("Retreat",3))
									if !self.FollowingRetreatOrder and self:GetSquad():WasSignalGiven("Retreat",3) and IsValid(self:GetSquad():GetCaller("Retreat")) and (!IsValid(self:GetSquad():GetCaller("Retreat").S1) or !IsValid(self:GetSquad():GetCaller("Retreat").S2) ) then
										local leader = self:GetSquad():GetCaller("Retreat")
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
						end
					end
				else
					if victim:IsPlayer() then
						self:Speak("lmnt_deadplr_mc")
					--self:Speak("NearMassacre")
					end
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
					self:GetSquad():Signal("Advance",self)
					self:PlaySequenceAndPWait(self.AdvanceAnim,1,self:GetPos())
				elseif self.ShakeFistAnim then
					self:PlaySequenceAndWait(self:TableRandom(self.ShakeFistAnim))
				end
			end
			if self.IsSergeant or self:GetSquad():WasSignalGiven(sign,4) then
				self:Speak("ordr_re")
				local AI = self.AIType
				self.AIType = "Offensive"
				timer.Simple( math.random(20,30), function()
					if IsValid(self) then
						self.AIType = AI
					end
				end )
			end
			if !self.NoTaunts then
				table.insert(self.StuffToRunInCoroutine,func)
			end
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
		local new = self:GetATarget(true)
		if attacker:IsPlayer() and math.random(1,2) == 1 then
			self:Speak("kllmytrgt")
		elseif attacker == self and math.random(1,2) == 1 then
			self:Speak("chr_kllfoe")
		end
		--print(1)
		if !IsValid(new) then
			if !self.DoingMelee then
				self:ResetAI()
			end
			--print(2)
			if self.AIType == "Offensive" and !self.DisableCorpseShooting and (IsValid(self:GetActiveWeapon()) and !self.ShootCorpseFilter[self:GetActiveWeapon():GetClass()] ) then
				--print(3)
				if victim:IsPlayer() and !self.CommentedTraitorDeath then
					self.CommentedTraitorDeath = true
					timer.Simple( math.random(2,3), function()
						if IsValid(self) then
							self.CommentedTraitorDeath = false
						end
					end )
					self:Speak("OnKillPlayer")
				end
				--print(4)
				if math.random(1,2) == 1 then
					--print(5)
					victim.GettingShot = true
					self.SpecificGoal = victim:GetPos()
					--[[local func = function()
						self:GoToPosition(self.SpecificGoal,self.RunCalmAnim[math.random(#self.RunCalmAnim)],self.MoveSpeed*self.MoveSpeedMultiplier,self.WanderToPos)
					end
					table.insert(self.StuffToRunInCoroutine,func)]]
					--print(6)
					--print("Investigate")
				elseif !victim.OrderCheck then
					--print("?")
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
	-- To increase turn time replace the 0.0004 with 0.001 and the 420 with 140
	for i = 1, 420*t do -- Maximum turn angle is 140, we'll turn whatever degrees
		timer.Simple( (0.001*i)+z, function() -- we are given, using the timers
			if IsValid(self) then -- to know when to stop
				self:SetAngles(self:GetAngles()+Angle(0,e,0))
			end
		end )
	end
	if !noanim then
		self:DoAnimation(seq) -- Turn animation
		self:ResetSequenceInfo() -- Clean things up
		self:SetCycle( 0 ) -- For the turn animation
		self:SetPlaybackRate( 1 ) -- To play correctly
		coroutine.wait(z)
		self:DoAnimation(self.IdleAnim) -- Go back to an idle animation
	end
end

function ENT:ClimbChecks(start,goal,curgoal)
	local dir = (goal-self:GetPos()):GetNormalized()
	local ang = dir:Angle()
	--print(curgoal.type)
	local xdif = start.x - self:GetPos().x
	local ydif = start.y - self:GetPos().y
	local zdif = goal.z - self:GetPos().z
	--print(self.loco:GetStepHeight(),xdif,ydif,zdif,curgoal.forward)
	--print( math.abs(xdif) < 25, math.abs(ydif) < 25, zdif > self.loco:GetStepHeight(), zdif < 120, zdif > 0 )
	--print(curgoal.pos.x-goal.x,curgoal.pos.y-goal.y,curgoal.pos.z-goal.z)
	local goaldifx = curgoal.pos.x-goal.x
	local goaldify = curgoal.pos.y-goal.y
	local goaldifz = curgoal.pos.z-goal.z
	if self.SpecialClimbConditions then
		xdif = goaldifx
		ydif = goaldify
		zdif = goaldifz
	end
	if ( curgoal.how == 9 or curgoal.type == 2 ) and ( ( ( math.abs(xdif) < 25 and math.abs(ydif) < 25 ) or self.SpecialClimbConditions ) and ( zdif > self.loco:GetStepHeight() and zdif < 120 and zdif > 0 ) ) then
		--debugoverlay.Sphere(start,5,10)
		--debugoverlay.Sphere(goal,5,10,Color(255,0,0))
		--PrintTable(curgoal)
		local seq = self:GetSequence()
		local extray = 0
		self.NotLookingAtEnemy = true
		local anim = "Climb_Crouch"
		if zdif > 80 then
			extray = 180
			anim = "Climb_Stand"
		else
			local t, vec, an = self:GetSequenceMovement(self:LookupSequence(anim),0,1)
			--print(vec)
			self:SetPos(self:GetPos()+(self:GetUp()*((zdif-vec.z))*1.3))
		end
		self:SetAngles(Angle(self:GetAngles().p,ang.y+extray,self:GetAngles().r))
		if self.SpecialClimbConditions then self.SpecialClimbConditions = false end
		self:PlaySequenceAndPWait(anim)
		self.NotLookingAtEnemy = false
		self:ResetSequence(seq)
	else
		if ( math.abs(goaldifx) + math.abs(goaldify) ) > 55 and ( goaldifz > self.loco:GetStepHeight() and goaldifz < 120 and goaldifz > 0 ) then
			--print(curgoal.how)
			--self:SetAngles(Angle(self:GetAngles().p,ang.y,self:GetAngles().r))
			--self:SetPos(self:GetPos()-(Vector(curgoal.forward.x,curgoal.forward.z)*100))
			--self.loco:SetVelocity((-curgoal.forward)*10)
			--print(self.loco:GetVelocity())
			if self.loco:GetVelocity():IsZero() then
				self.SpecialClimbConditions = true
			end
			return "Retry!"
		end
	end
end

function ENT:Leap(goal)
	if isentity(goal) then goal = goal:WorldSpaceCenter() end
	local ang = (goal-self:WorldSpaceCenter()):GetNormalized():Angle()
	self:SetAngles(Angle(0,ang.y,0))
	self.Leaping = true
	self.Leaped = true
	self.loco:JumpAcrossGap(goal,self:GetForward())
	timer.Simple( 2, function()
		if IsValid(self) then
			self.Leaped = false
		end
	end )
end

function ENT:MoveToPos( goal, options ) -- MoveToPos but I added some stuff
	--print(goal)
	--print(options)
	if IsValid(self.Enemy) then
		for i = 1, #self.IdleAnim do
			if self.loco:GetVelocity():IsZero() and self:GetActivity() == self.IdleAnim[i] then
				local anim = self:TableRandom(self.WanderAnim)
				if type(anim) == "string" then
					self:ResetSequence( anim )
				else
					self:StartActivity( anim )			-- Move animation
				end
			end
		end
	end
	local options = options or {}
	local path = Path( "Follow" )
	local pos = goal
	if IsEntity(goal) then pos = goal:GetPos() end
	path:SetMinLookAheadDistance( options.lookahead or self.PathMinLookAheadDistance )
	path:SetGoalTolerance( options.tolerance or self.PathGoalTolerance )
	path:Compute( self, pos )
	if ( !IsValid(path) ) then return "failed" end
	while ( IsValid(path) ) do
		if IV04_AIDisabled then
			return "Disabled thinking"
		end
		--if IsValid(path:GetHindrance()) then
		--	print(path:GetHindrance(), CurTime())
		--end
		--print(self:GetActivity())
		if self.UpdateTime < CurTime() then
			if self.AllowClimbing then
				local curgoal = path:GetCurrentGoal()
				local goal = path:GetPositionOnPath( path:GetCursorPosition()+curgoal.length )
				local start = path:GetPositionOnPath( path:GetCursorPosition() )
			--	debugoverlay.Sphere(goal,5,5)
			--	print( math.abs(start.x - self:GetPos().x), math.abs(start.y - self:GetPos().y) )
				local result = self:ClimbChecks(start,goal,curgoal)
				--print(result)
			end
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
				self:DoAnimation(seq)
				self.DoingPush = false
				self.PushingProp = false
			end
			if self:IsStuck() then
				-- We are stuck, don't bother
				--return "Give up"
				--print("stuck?",self.LastLocoVel)
				self.loco:SetVelocity(((-self.LastLocoVel:GetNormalized())+self:GetRight())*self.MoveSpeed or -self:GetForward()*10)
				coroutine.yield()
			end
			if options.callback then
				options.callback(path)
			end
			self.UpdateTime = CurTime()+self.MoveUpdateTime
		end
		local ang = self:GetAngles()
		path:Update( self )
		if ( !options.facepath ) then
			self:SetAngles(ang)
		end
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
			if ( path:GetAge() > options.repath ) then if IsValid(goal) and IsEntity(goal) then pos = goal:GetPos() end path:Compute( self, pos ) end
		end
		coroutine.yield()
	end
	return "ok"
end

function ENT:WanderToPos( pos ) -- Modified MoveToPos function to update sight while we move
	local path = Path( "Follow" )
	path:SetMinLookAheadDistance( self.PathMinLookAheadDistance )
	path:SetGoalTolerance( self.PathGoalTolerance )
	local position = pos
	path:Compute( self, position )
	if ( !path:IsValid() ) then return "failed" end
	while ( IsValid(path) and !IsValid(self.Enemy) ) do
		if IV04_AIDisabled then
			return "Disabled thinking"
		end
		if self.UpdateTime < CurTime() then
			if self.AllowClimbing then
				local curgoal = path:GetCurrentGoal()
				local goal = path:GetPositionOnPath( path:GetCursorPosition()+curgoal.length )
				local start = path:GetPositionOnPath( path:GetCursorPosition() )
			--	debugoverlay.Sphere(goal,5,5)
			--	print( math.abs(start.x - self:GetPos().x), math.abs(start.y - self:GetPos().y) )
				self:ClimbChecks(start,goal,curgoal)
			end
			local found = self:SearchEnemy()
			if found then self:DoAnimation(self.IdleAnim) return "Found an enemy" end
			if self:IsStuck() then
				-- We are stuck, don't bother
				--return "Give up"
				--print("stuck?",self.LastLocoVel)
				self.loco:SetVelocity(((-self.LastLocoVel:GetNormalized())+self:GetRight())*self.MoveSpeed or -self:GetForward()*10)
				coroutine.yield()
			end
			self.UpdateTime = CurTime()+self.MoveUpdateTime
		end
		path:Update( self )
		if self.loco:IsStuck() then
			self:OnStuck()
			return "Stuck"
		end
		coroutine.wait(0.01)
	end
	return "ok"
end

function ENT:AvoidGrenade(grenade,toolate)
	if self.AnimBusy or self.DetectedAGrenade or grenade:GetOwner() == self or grenade.IsKamikazeGren or self:Health() <= 0	then return end
	self.DetectedAGrenade = true
	timer.Simple( math.random(2,3), function()
		if IsValid(self) and self.DetectedAGrenade then
			self.DetectedAGrenade = false
		end	
	end )
	self:DodgeEnt(grenade,toolate)
end

function ENT:DodgeEnt(thrt,toolate)
	local dir =  ( self:GetPos() - thrt:GetPos() ):Angle()
	local ang1 = dir
	local dist = (self:GetRangeSquaredTo(thrt))
	--print(math.sqrt(dist),self.GrenadeDodgeDistance)
	--print(dist < self.GrenadeDodgeDistance^2)
	if dist < self.GrenadeDodgeDistance^2 then -- That grenade is near us
		if toolate or (!self.DiveFrontAnim) then
			if self.BraceAnim then
				self:SetAngles(Angle(0,dir.y-180,0))
				self.AnimBusy = true
				local func = function()
					self:Speak("dive")
					self:PlaySequenceAndWait(self.BraceAnim)
					self.AnimBusy = false
				end
				timer.Simple( 2, function()
					if IsValid(self) and self.AnimBusy then self.AnimBusy = false end
				end )
				table.insert(self.StuffToRunInCoroutine,func)
				self:ResetAI()
			end
		else
			local ang3 = self:GetAngles()
			local dif2 = math.AngleDifference( ang1.y, ang3.y )
			if dif2 < 0 then dif2 = dif2+360 end
			--print(dif2) -- 180 = front, 270 = left, 90 = right
			local r = math.random(1,2)
			local diveanim
			if dif2 <= 135 then -- Don't dodge to the right
				if r == 1 then
					diveanim = self.DiveFrontAnim
				else
					diveanim = self.DiveLeftAnim
				end
			elseif dif2 > 135 and dif2 < 225 then -- Don't dodge to the front
				if r == 1 then
					diveanim = self.DiveLeftAnim
				else
					diveanim = self.DiveRightAnim
				end
			elseif dif2 >= 225 then -- Don't dodge to the left
				if r == 1 then
					diveanim = self.DiveFrontAnim
				else
					diveanim = self.DiveRightAnim
				end
			end
			self.AnimBusy = true
			local func = function()
				self:Speak("dive")
				self:PlaySequenceAndPWait(diveanim)
				self.AnimBusy = false
			end
			timer.Simple( 2, function()
				if IsValid(self) and self.AnimBusy then self.AnimBusy = false end
			end )
			table.insert(self.StuffToRunInCoroutine,func)
			self:ResetAI()
		end
	else
		timer.Simple( 0.8, function()
			if IsValid(self) and self.DetectedAGrenade then
				--print("dodge again")
				self.DetectedAGrenade = false
				if IsValid(thrt) then
					self:AvoidGrenade(thrt,true)
				end
			end
		end )
	end
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
	timer.Simple( self.GrenadeSpawnTime or 0.4, function()
		if IsValid(self) then
			grenade = ents.Create(self.GrenadeType or "astw2_halo3_frag_thrown")
			if grenade:GetClass() == "astw2_halo3_frag_thrown" then
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
	timer.Simple( self.GrenadeDropTime or 0.8, function()
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
	if !self.GrenadeIsGesture then
		--self:PlaySequenceAndMove(self:TableRandom(self.GrenadeAnim),1,self:GetForward(),40,0.8)
		self:PlaySequenceAndPWait(self:TableRandom(self.GrenadeAnim))
	else
		self:DoGestureSeq(self:TableRandom(self.GrenadeAnim))
		coroutine.wait(1)
	end
	timer.Simple( 1.5, function()
		if IsValid(self) and self:Health() > 0 then
			self:Speak("strk_grnd")
		end
	end )
	self.ThrowingGrenade = false
	self.ThrownGrenades = self.ThrownGrenades+1
end

function ENT:WasSignalGiven(order,limit)
	return self:GetSquad():WasSignalGiven(order,limit)
end

-------------- Other combat functions

-------------- Cosmetic functions

function ENT:OnKilled( dmginfo ) -- When killed
	hook.Call( "OnNPCKilled", GAMEMODE, self, dmginfo:GetAttacker(), dmginfo:GetInflictor() )
	self.KilledDmgInfo = dmginfo
	self.BehaveThread = nil
	self.AnimBusy = false
	self:SetEnemy(nil)
	self:DropKamikazeGrenades()
	
	if self.ExplodesOnKilled then
		ParticleEffectAttach(self.DeathParticle,PATTACH_ABSORIGIN_FOLLOW,self,0)
		if IsValid(self.InfectVictim) then
			self.InfectVictim:ResetAI()
			self.InfectVictim.UnderLatchAttack = false
		end
		self:Remove()
	else
		self.DrownThread = coroutine.create( function() self:DoKilledAnim() end )
		coroutine.resume( self.DrownThread )
	end
end

function ENT:DetermineDeathAnim( info )
	if self.IsInVehicle then return true end
	local origin = info:GetAttacker():GetPos()
	local damagepos = info:GetDamagePosition()
	local ang = (damagepos-origin):Angle()
	local y = ang.y - self:GetAngles().y
	if y < 0 then y = y + 360 end
	--print(y)
	local anim
	--print(self.DeathHitGroup,"a")
	if self.DeathHitGroup then
		if self.DeathHitGroup == 1 then
			self:Speak("death_headshot")
			--print(y)
			if y <= 135 and y > 45 then -- Left
				anim = self:TableRandom(self.DeathLeftAnims["Head"])
			elseif y < 225 and y > 135 then -- Front
				anim = self:TableRandom(self.DeathFrontAnims["Head"])
			elseif y >= 225 and y < 315 then -- Right
				anim = self:TableRandom(self.DeathRightAnims["Head"])
			elseif y <= 45 or y >= 315 then -- Back
				anim = self:TableRandom(self.DeathBackAnims["Head"])
			end
		else
			self:Speak("dth_mjr")
			if y <= 135 and y > 45 then -- Right
				anim = self:TableRandom(self.DeathRightAnims["Gut"])
			elseif y < 225 and y > 135 then -- Front
				anim = self:TableRandom(self.DeathFrontAnims["Gut"])
			elseif y >= 225 and y < 315 then -- Left
				anim = self:TableRandom(self.DeathLeftAnims["Gut"])
			elseif y <= 45 or y >= 315 then -- Back
				anim = self:TableRandom(self.DeathBackAnims["Head"])
			end
		end
	else
		return true
	end
	if !anim then return true end
	return anim
end

function ENT:FinishDeadLanding()
	local start = self:GetPos()
	timer.Simple( 1, function()
		if IsValid(self) then
			if math.abs(math.abs(self:GetPos().z)-math.abs(start.z)) < 20 then
				self.AlternateLanded = true
			end
		end
	end )
	timer.Simple( 10, function()
		if IsValid(self) and !self.HasLanded and !self.AlternateLanded then
			self.AlternateLanded = true
		end
	end )
	self.AnimBusy = false
	while (!self.HasLanded) do
		if self.AlternateLanded then
			--print(self.AlternateLanded)
			local rag = self:CreateRagdoll(DamageInfo())
			if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
				timer.Simple( 60, function()
					if IsValid(rag) then
						rag:Remove()
					end
				end)
			end
			if !self.DoesntUseWeapons and IsValid(self.Weapon) and IV04_DropWeapons then
				local wep = ents.Create(self.Weapon:GetClass())
				wep:SetPos(self.Weapon:GetPos())
				wep:SetAngles(self.Weapon:GetAngles())
				wep:Spawn()
				self.Weapon:Remove()
			end
			return
		end
		coroutine.wait(0.01)
	end
	--print(self, "should be playing dead land anim")
	local anim = self:TableRandom(self.DeadLandAnim)
	local id, len = self:LookupSequence(anim)
	timer.Simple(len, function()
		if IsValid(self) then
			if !self.DoesntUseWeapons and IsValid(self.Weapon) and IV04_DropWeapons then
				local wep = ents.Create(self.Weapon:GetClass())
				wep:SetPos(self.Weapon:GetPos())
				wep:SetAngles(self.Weapon:GetAngles())
				wep:Spawn()
				self.Weapon:Remove()
			end
			local rag
			if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
				timer.Simple( 60, function()
					if IsValid(wep) then
						wep:Remove()
					end
					if IsValid(rag) then
						rag:Remove()
					end
				end)
			end
			rag = self:CreateRagdoll(DamageInfo(),true,{doit = true, time1 = 0.01, time2 = 0.01, randommove = true})
		end 
	end )
	self:PlaySequenceAndWait(anim)
end

function ENT:DoKilledAnim()
	--print(self.FlyingDead)
	if self.FlyingDead then
		self:Speak("dth_fall")
		self:FinishDeadLanding()
	elseif !self.KilledDmgInfo:IsDamageType(DMG_BLAST) then
		--print("?",self.KilledDmgInfo:GetDamage())
		if self.BloodDecal then
			util.Decal( self.BloodDecal, self.KilledDmgInfo:GetDamagePosition(), (self.KilledDmgInfo:GetDamagePosition())+self:GetUp()*-100, self )
		end
		if self.KilledDmgInfo:GetDamage() <= 150 then
			--print("death anim")
			-- self:Speak("OnDeath")
			local anim = self:DetermineDeathAnim(self.KilledDmgInfo)
			--print(anim)
			if anim == true then 
				if !self.DoesntUseWeapons and IsValid(self.Weapon) and IV04_DropWeapons then
					local wep = ents.Create(self.Weapon:GetClass())
					wep:SetPos(self.Weapon:GetPos())
					wep:SetAngles(self.Weapon:GetAngles())
					wep:Spawn()
					self.Weapon:Remove()
				end
				local rag = self:CreateRagdoll(self.KilledDmgInfo)
				return
			end
			local seq, len = self:LookupSequence(anim)
			--print(anim,seq,len)
			timer.Simple( len, function()
				if IsValid(self) then
					if !self.DoesntUseWeapons and IsValid(self.Weapon) and IV04_DropWeapons then
						local wep = ents.Create(self.Weapon:GetClass())
						wep:SetPos(self.Weapon:GetPos())
						wep:SetAngles(self.Weapon:GetAngles())
						wep:Spawn()
						self.Weapon:Remove()
					end
					local rag
					if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
						timer.Simple( 60, function()
							if IsValid(wep) and !IsValid(wep.Owner) then
								wep:Remove()
							end
							if IsValid(rag) then
								rag:Remove()
							end
						end)
					end
					rag = self:CreateRagdoll(DamageInfo(),true,{doit = true, time1 = 0.01, time2 = 0.01, randommove = true})
				end
			end )
			self:PlaySequenceAndPWait(anim, 1, self:GetPos())
		else
			self:Speak("dth_drama")
			if !self.DoesntUseWeapons and IsValid(self.Weapon) and IV04_DropWeapons then
				local wep = ents.Create(self.Weapon:GetClass())
				wep:SetPos(self.Weapon:GetPos())
				wep:SetAngles(self.Weapon:GetAngles())
				wep:Spawn()
				self.Weapon:Remove()
			end
			local rag
			if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
				timer.Simple( 60, function()
					if IsValid(wep) and !IsValid(wep.Owner) then
						wep:Remove()
					end
					if IsValid(rag) then
						rag:Remove()
					end
				end)
			end
			rag = self:CreateRagdoll(self.KilledDmgInfo)
		end
	else
		self:Speak("thrwn")
		self.FlyingDead = true
		local dir = ((self:GetPos()-self.KilledDmgInfo:GetDamagePosition())):GetNormalized()
		dir = dir+self:GetUp()*2
		local force = (self.KilledDmgInfo:GetDamage()*1.5)+100
		self:SetAngles(Angle(0,dir:Angle().y,0))
		self.loco:Jump()
		self.loco:SetVelocity(dir*force)
		--print(self,"Jumped")
		coroutine.wait(0.25)
		self:FinishDeadLanding()
		--print(self,"Landed")
	end
end

function ENT:MoveMouth()
	self:DoGestureSeq("Talk_Overlay",true,self.SpeakSpeed,self.SpeakCycle)
end

function ENT:PoseEyes()
	self:DoGestureSeq("Eyes_Facial_Animation_Blink_Overlay",true,self.BlinkSpeed)
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
		self.LastLocoVel = self.loco:GetVelocity() -- Last direction we are heading towards that works
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
	--print( (IsValid(self.Enemy)))
	--print( !self.NotLookingAtEnemy )
	--print( self.HasLOSToTarget )
	if ( (IsValid(self.Enemy) and (!self.NotLookingAtEnemy or self.HasLOSToTarget) )or IsValid(self.LookTarget) or self.SpecificGoal ) then
		goal = self.SpecificGoal
		if IsValid(self.Enemy) and (!self.NotLookingAtEnemy or self.HasLOSToTarget) then
			goal = self.Enemy:WorldSpaceCenter()
		elseif IsValid(self.LookTarget) then
			goal = self.LookTarget:WorldSpaceCenter()+(self.LookTarget:OBBMaxs()*0.3)
		end
		local an = (goal-(self:WorldSpaceCenter()+self:GetUp()*30)):Angle()
		y = an.y
		dify = math.AngleDifference(self:GetAngles().y+self.YPP,y)
		--print(dify)
		local ymins, ymaxs = self:GetPoseParameterRange( self:LookupPoseParameter("aim_yaw") )
		if ymins or ymaxs then
		if math.abs(dify) > 2 then
			if dify > 0 then
				di = -2
				--print(di,self.YPP,ymins)
				if self.YPP+di <= (ymins*0.25) then
					self:SetAngles(self:GetAngles()+Angle(0,di*2,0))
					di = 0
				end
			else
				di = 2
				--print(di)
				if self.YPP+di >= (ymaxs*0.25) then
					self:SetAngles(self:GetAngles()+Angle(0,di*2,0))
					di = 0
				end
			end
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
				self.VehicleEyeAng = Angle(an.p,an.y,0)
				--debugoverlay.Line(self:WorldSpaceCenter(),self:WorldSpaceCenter()+(self.VehicleEyeAng:Forward()*512),5,5)
				--[[local vy = math.AngleDifference(self.Vehicle:GetAngles().y+self.LTPP,y)
				local vp = math.AngleDifference(self.Vehicle:GetAngles().p+self.LTP,p)
				self.VehicleEyeAng = Angle(self.LTP,self.LTPP,0)
				self.Transitioned = true
				--print("trying to aim")
				timer.Simple(0.01, function()
					if IsValid(self) then
						self.Transitioned = false
					end
				end )
				--print(vy)
				if math.abs(vy) > 5 then
					--self.LTPP = self.Vehicle:GetPoseParameter("turret_yaw")
					local i
					if vy < 0 then
						i = 2
					else
						i = -2
					end
					self:SetAngles(Angle(self.Vehicle:GetAngles().p,self:GetAngles().y+i,self.Vehicle:GetAngles().r))
					self.LTPP = self.LTPP+i
					--self.Vehicle:SetPoseParameter("turret_yaw",self.LTPP+i)
					self.GunnerShoot = false
				else
					self.GunnerShoot = true
				end
				if math.abs(vp) > 2 then
					--self.LTP = self.Vehicle:GetPoseParameter("spin_cannon")
					local i
					if (vp/2) <= self.LTP then
						i = -1
					else
						i = 1
					end
					self.LTP = self.LTP+i
					--self.Vehicle:SetPoseParameter("spin_cannon",self.LTP+i)
				end]]
			end
		end
	else	
		local ymins, ymaxs = self:GetPoseParameterRange( self:LookupPoseParameter("aim_yaw") )
		if self.YPP != 0 then
			if self.YPP > 0 then
				di = -math.Clamp( self.YPP, -2, 0 )
				if self.PPP+di <= ymins then
					self:SetAngles(self:GetAngles()+Angle(0,di,0))
				end
			else
				di = math.Clamp( self.YPP, 0, 2 )
				if self.PPP+di >= ymaxs then
					self:SetAngles(self:GetAngles()+Angle(0,di,0))
				end
			end
		end
		--print(di)
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
