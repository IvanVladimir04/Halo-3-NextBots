AddCSLuaFile()



function ENT:SpartanInitialize()
	self.DamageThreshold = math.huge
	self.SpawnWithWeaponDrawn = true
	self.AllowStealth = true
	self.MoveSpeed = 100
	self.MoveSpeedMultiplier = 2
	self:SetCollisionBounds(Vector(10,10,100),Vector(-10,-10,0))
	self.MeleeAnimsHits = {
		["Melee_Combat_Missile_Rl"] = 0.5,
		["Melee_Combat_Missile_Fc"] = 0.6,
		["Melee_Combat_Rifle_Br_1"] = 0.5,
		["Melee_Combat_Rifle_Br_2"] = 0.6,
		["Melee_Combat_Rifle_Cb_1"] = 0.5,
		["Melee_Combat_Rifle_Cb_2"] = 0.6,
		["Melee_Combat_Rifle_Csr_1"] = 0.5,
		["Melee_Combat_Rifle_Csr_2"] = 0.6,
		["Melee_Combat_Rifle_Sg_1"] = 0.5,
		["Melee_Combat_Rifle_Sg_2"] = 0.6,
		["Melee_Combat_Pistol_Pp_1"] = 0.5,
		["Melee_Combat_Pistol_Pp_2"] = 0.6,
		["Melee_Combat_Pistol_Hp_1"] = 0.5,
		["Melee_Combat_Pistol_Hp_2"] = 0.6,
		["Melee_Combat_Pistol_Ne"] = 0.6
	}
	self.IsHuman = true
	self.MeleeIsGesture = true
	self.NoTransitionAnims = true
	self.NoSurpriseAnim = true
	self.NoWarnAnim = true
	self.GrenadeIsGesture = true
	self.NoTaunts = true
	self.CanReactToGrenades = false
	self.ShieldRegenTimeDelay = 5
	self.ShieldRegenTime = 2
	self.ShieldImpactParticle = "iv04_halo_3_spartan_shield_impact_effect"
	self.ShieldDepleteParticle = "iv04_halo_3_spartan_shield_deplete"
	self.ShieldDepleteArcsParticle = "iv04_halo_3_spartan_shield_deplete_arcs"
	self.ShieldRechargeParticle = "iv04_halo_3_spartan_shield_recharge"
	self.MaxShield = 70
	self.Shield = 70
	self.HasArmor = true
	self.AllowVehicleFunctions = true
end
function ENT:MarineInitialize()
	self.AllowClimbing = true
	self.AllowStealth = true
	self.MoveSpeed = 90
	self.MoveSpeedMultiplier = 2
	self:SetCollisionBounds(Vector(10,10,70),Vector(-10,-10,0))
	self.MeleeAnimsHits = {
		["Melee_Combat_Rifle_1"] = 0.5,
		["Melee_Combat_Rifle_2"] = 0.6,
		["Melee_Combat_Pistol_1"] = 0.5,
		["Melee_Combat_Pistol_2"] = 0.6
	}
	self.IsHuman = true
	self.AllowVehicleFunctions = true
	--[[
		Stuff I NEED (and with NEED I mean I REALLY want) to do for the marines:
		-- Shoot when backing off (when fleeing/running to cover, they sometimes
		turn to shoot at the chasers while running)
		-- When spotting a lot of enemies they run to cover, sometimes 1-2
		stay behind to cover the rest before backing off themselves
		-- Note about the fact above, they wait to have 1-2 casualties before going to cover
		if the numerical superiority the enemy has over them isn't bigger than 3
		-- Defensive AI will sit comfortably behind cover while waiting for help
		-- Offensive AI will wait a few seconds then return to the fight
		usually in groups
		-- When the enemy advances (could be hooked to a Chase function or
		the squads system chase order), they repeat the retreat even further
	]]
end
function ENT:EliteInitialize()
	--self.SpawnWithWeaponDrawn = true
	self.AllowClimbing = true
	self.MoveSpeed = 100
	self.MoveSpeedMultiplier = 2
	self:SetCollisionBounds(Vector(10,10,120),Vector(-10,-10,0))
	self.GrenadeType = "astw2_halo3_plasma_thrown"
	self.DamageThreshold = math.huge
	self.GrenadeSpawnTime = 0.2
	self.GrenadeDropTime = 1.2
	self.ShieldRegenTimeDelay = 5
	self.ShieldRegenTime = 2
	self.ShieldImpactParticle = "iv04_halo_3_elite_shield_impact_effect"
	self.ShieldDepleteParticle = "iv04_halo_3_elite_shield_deplete"
	self.ShieldDepleteArcsParticle = "iv04_halo_3_elite_shield_deplete_arcs"
	self.ShieldRechargeParticle = "iv04_halo_3_elite_shield_recharge"
	self.MaxShield = 70
	self.Shield = 70
	self.HasArmor = true
	self.TotalHolds["melee2"] = true
	self.AllowVehicleFunctions = true
end
function ENT:BruteInitialize()
	self.AllowClimbing = true
	self.HasArmor = true
	self.IsArmored = true
	self.IsBrute = true
	self.ArmorDoesntRegenerate = true
	self:SetCollisionBounds(Vector(20,20,0),Vector(-20,-20,100))
	self.CanShootCrouch = false
	self.MoveSpeed = 100
	self.MoveSpeedMultiplier = 1.5
	self.Shield = 50+(self.Rank*10)
	self.MaxShield = self.Shield
	self.VoiceType = "Brute_"..math.random(3)..""
	self.MeleeAnimsHits = {
		["Melee_Combat_Pistol_1"] = 0.6,
		["Melee_Combat_Hammer_1"] = 0.4,
		["Melee_Combat_Hammer_2"] = 0.4
	}
	self.ShieldImpactParticle = "iv04_halo_3_brute_shield_impact_effect"
	self.ShieldCriticalParticle = "iv04_halo_3_brute_shield_critical"
	self.ShieldDepleteParticle = "iv04_halo_3_brute_shield_deplete"
	self.GrenadeType = "astw2_halo3_spike_thrown"
	self.AllowVehicleFunctions = true
	if self.Rank == 1 then
		self:SetBodygroup(7,math.random(0,1))
		if self.IsCaptain then
			self:SetSkin(2)
			self:SetBodygroup(2,3)
			self:SetBodygroup(3,3)
			self:SetBodygroup(4,3)
			self:SetBodygroup(5,1)
			self:SetBodygroup(6,1)
		elseif self.IsStalker then
			self:SetBodygroup(1,1)
			self:SetBodygroup(2,1)
			self:SetBodygroup(3,1)
			self:SetBodygroup(4,1)
			self:SetSkin(6)
			self.GrenadeType = "astw2_halo3_incendiary_thrown" 
		else
			self:SetSkin(self.Rank)
			self:SetBodygroup(2,2)
			self:SetBodygroup(3,2)
		end
	end
	if self.Rank == 2 then
		self:SetBodygroup(7,math.random(0,1))
		if self.IsCaptain then
			if math.random(1,2) == 1 then
				self:SetSkin(4)
			else
				self:SetSkin(3)
			end
			self:SetBodygroup(2,3)
			self:SetBodygroup(3,3)
			self:SetBodygroup(4,3)
			self:SetBodygroup(5,1)
			self:SetBodygroup(6,1)
		elseif self.IsJumpers then
			self:SetSkin(self.Rank)
			self:SetBodygroup(2,4)
			self:SetBodygroup(3,4)
			self:SetBodygroup(4,4)
		else
			self:SetSkin(self.Rank)
			self:SetBodygroup(2,2)
			self:SetBodygroup(3,2)
			self:SetBodygroup(4,2)
		end
	end
	if self.Rank == 3 then
		self:SetBodygroup(7,math.random(0,1))
		if self.IsCaptain then
			self:SetBodygroup(2,3)
			self:SetBodygroup(3,3)
			self:SetBodygroup(4,3)
			self:SetBodygroup(5,1)
			self:SetBodygroup(6,1)
			self:SetSkin(5)
		elseif self.IsJumpers then
			self:SetSkin(7)
			self:SetBodygroup(2,4)
			self:SetBodygroup(3,4)
			self:SetBodygroup(4,4)
		else
			self:SetBodygroup(2,2)
			self:SetSkin(self.Rank)
			self:SetBodygroup(3,2)
			self:SetBodygroup(4,2)
		end
	end
	if self.Rank == 4 then
		self.DamageThreshold = self.DamageThreshold*3
		self:SetBodygroup(7,1)
		if self.IsCaptain then
			self:SetBodygroup(2,3)
			self:SetBodygroup(3,3)
			self:SetBodygroup(4,3)
			self:SetBodygroup(5,1)
			self:SetBodygroup(6,1)
			self:SetSkin(4)
		else
			self:SetBodygroup(1,1)
			if self.IsWarChieftain then
				self.IsChieftain = true
				self:SetSkin(4)
				self:SetBodygroup(2,6)
				self:SetBodygroup(3,6)
				self:SetBodygroup(4,6)
			else
				self.IsChieftain = true
				self:SetSkin(3)
				self:SetBodygroup(2,5)
				self:SetBodygroup(3,5)
				self:SetBodygroup(4,5)
			end
		end
	end
end
function ENT:GruntInitialize()
end
function ENT:JackalInitialize()
end
function ENT:DroneInitialize()
end
function ENT:HunterInitialize()
	self.InstaKillImmune = true
	self.DamageThreshold = math.huge -- Do this to disable flinching
	self:SetSkin(self.Rank)
	self.MoveSpeed = 125
	self.MoveSpeedMultiplier = 2
end
function ENT:EngineerInitialize()
end
function ENT:ProphetInitialize()
end
function ENT:ScarabInitialize()
end
function ENT:SentinelInitialize()
	if CLIENT then
	
	else -- Server
		self.loco:SetGravity(0)
		self.loco:Jump()
		self.loco:SetStepHeight(0)
		self.loco:SetVelocity(Vector(0,0,500))
	end
end
function ENT:EnforcerInitialize()
end
function ENT:MonitorInitialize()
	if CLIENT then

	else
		self.Sprite = ents.Create("env_sprite")
		self.Sprite:SetPos(self:GetAttachment(1).Pos)
		self.Sprite:SetParent(self,1)
		self.Sprite:SetOwner(self)
		self.Sprite:SetAngles(self:GetAngles()+Angle(0,90,0))
		self.Sprite:SetColor(self.MonitorColor or Color( 35, 100, 255 ))
		self.Sprite:SetKeyValue( "scale", "0.1" )
		self.Sprite:SetKeyValue( "model", "effects/halo3/8pt_ringed_star_flare.vmt" )
		self.Sprite:SetKeyValue( "framerate", "30" )
		self.Sprite:SetKeyValue( "rendermode", "9" )
		self.Sprite:SetKeyValue( "spawnflags", "1" )
		self.Sprite:Spawn()
		self.Sprite:Activate()
		self.loco:SetGravity(0)
		self.loco:Jump()
		self.loco:SetStepHeight(0)
		self.loco:SetVelocity(Vector(0,0,500))
		self:SetColor(self.MonitorColor or Color(80,188,234))
		util.SpriteTrail( self, 3, self.MonitorColor or Color( 35, 100, 255 ), false, 4, 16, 0.3, 1 / ( 15 + 1 ) * 1, "effects/halo3/beam" )
	end
end
function ENT:ConstructorInitialize()
end
function ENT:FloodHumanInitialize()
	self.MoveSpeed = 40
	self.IsWeaponDrawn = true
	self.MeleeDamage = 15
	if math.random(1,4) == 1 then
		self.SpawnWithWeaponDrawn = true
	else
		self.PossibleWeapons = nil
		--self.DoesntUseWeapons = true
	end
	self.RecklessTactics = true
	self.GenericWeaponAnims = true
	self:SetCollisionBounds(Vector(10,20,70),Vector(-10,-20,0))
	self.DamageThreshold = math.huge
	self.NoWarnAnim = true
	self.FloodGibs = true
	self.MeleeHitGroup = 4
	self.WeaponHitGroup = 5
	self.NoTransitionAnims = true
	self.FloodGibGroups = {
		[9] = 2,
		[4] = 3,
		[5] = 4
	}
	self.FloodGibModels = {
		[4] = "models/halo_3/characters/flood/gibs/human_combat_form/gib_left_arm.mdl",
		[5] = "models/halo_3/characters/flood/gibs/human_combat_form/gib_right_arm.mdl"
	}
end
function ENT:FloodEliteInitialize()
end
function ENT:FloodBruteInitialize()
end
function ENT:FloodInfectionInitialize()
end
function ENT:FloodCarrierInitialize()
end
function ENT:FloodTankInitialize()
end
function ENT:FloodStalkerInitialize()
end
function ENT:FloodRangedInitialize()
end

function ENT:SpartanIdle()
	if self.IsInVehicle then return self:VehicleIdle() end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleIdle()
	end
	self:PostCombatChecks()
	self:FollowingPlayerChecks()
	if math.random(1,2) == 1 then
		self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
		timer.Simple( math.random(2,3), function()
			if IsValid(self) then self.SpecificGoal = nil end
		end )
	end
	self:DoIdle()
end
function ENT:MarineIdle()
	if self.IsInVehicle then return self:VehicleIdle() end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleIdle()
	end
	self:PostCombatChecks()
	self:FollowingPlayerChecks()
	if math.random(1,2) == 1 then
		self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
		timer.Simple( math.random(2,3), function()
			if IsValid(self) then self.SpecificGoal = nil end
		end )
	end
	self:DoIdle()
end
function ENT:EliteIdle()
	if self.IsInVehicle then return self:VehicleIdle() end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleIdle()
	end
	self:PostCombatChecks()
	self:FollowingPlayerChecks()
	if math.random(1,2) == 1 then
		self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
		timer.Simple( math.random(2,3), function()
			if IsValid(self) then self.SpecificGoal = nil end
		end )
	end
	self:DoIdle()
end
function ENT:BruteIdle()
	if self.IsInVehicle then return self:VehicleIdle() end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleIdle()
	end
	self:PostCombatChecks()
	self:FollowingPlayerChecks()
	if math.random(1,2) == 1 then
		self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
		timer.Simple( math.random(2,3), function()
			if IsValid(self) then self.SpecificGoal = nil end
		end )
	end
	self:DoIdle()
end -- self.PatrolMoveAnim
function ENT:GruntIdle()
end
function ENT:JackalIdle()
end
function ENT:DroneIdle()
end
function ENT:HunterIdle()
	self:DoIdle()
end
function ENT:EngineerIdle()
end
function ENT:ProphetIdle()
end
function ENT:ScarabIdle()
end
function ENT:SentinelIdle()
	local yaw = 0
	local t = CurTime()
	local stop = false
	local printed = false
	self:SearchEnemy()
	coroutine.wait(1)
end
function ENT:EnforcerIdle()
end
function ENT:MonitorIdle()
	local yaw = 0
	local t = CurTime()
	self:SearchEnemy()
	while (!IsValid(self.Enemy)) do
		an =  math.rad( yaw )
		local x = math.cos( an ) * 100
		local y = math.sin( an ) * 100
		self.loco:SetVelocity((Vector(x,y,0))*1)
		yaw = yaw+20
		if yaw > 360 then self:SearchEnemy() yaw = yaw-360 end
		t = CurTime()
		coroutine.wait(0.1)
	end
end
function ENT:ConstructorIdle()
end
function ENT:FloodHumanIdle()
	if math.random(1,2) == 1 then
		self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
		timer.Simple( math.random(2,3), function()
			if IsValid(self) then self.SpecificGoal = nil end
		end )
	end
		if math.random(1,2) == 1 and IV04H3_AllowPatrol then
			local pos = self:FindNearbyPos()
			self:GoToPosition( (pos), self:TableRandom(self.WalkCalmAnim), self.MoveSpeed*0.5, self.WanderToPos, self.PatrolIdleAnim )	
		else
			local seq = self.IdleCalmAnim
			self:DoAnimation(seq)
			self:SearchEnemy()
			timer.Simple( self:SequenceDuration(seq)/2, function()
				if IsValid(self) then
					if math.random(1,2) == 1 then
						self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
						timer.Simple( math.random(2,3), function()
							if IsValid(self) then self.SpecificGoal = nil end
						end )
					end
					self:SearchEnemy()
				end
			end )
			coroutine.wait(self:SequenceDuration(seq))
			self:SearchEnemy()
		end
end
function ENT:FloodEliteIdle()
end
function ENT:FloodBruteIdle()
end
function ENT:FloodInfectionIdle()
end
function ENT:FloodCarrierIdle()
end
function ENT:FloodTankIdle()
end
function ENT:FloodStalkerIdle()
end
function ENT:FloodRangedIdle()
end

function ENT:SpartanThink()
	if self:Health() < 1 then return end
	if self.LastThinkTime < CurTime() then
		self.LastThinkTime = CurTime()+self.ThinkDelay -- Set when we can think again
		local ent = self:WeaponThink()
		if IsValid(ent) and self.HasLOSToTarget and !self.DoingMelee and !self.HasMeleeWeapon then
			local should, dif = self:ShouldFace(ent)
			--print(should,dif)
			if should and math.abs(dif) > 2 then
				--self:Turn(dif,false,true)
				--print("angle")
				return "Gotta turn"	
			end
			if self.AllowGrenade and self.ThrownGrenades < 2 and ( self.DistToTarget < 1024^2 and self.DistToTarget > 256^2) then
				local chances = 5+(#self:PossibleTargets())
				local rand = math.random(100)
				--print(self.ThrownGrenades)
				if rand < chances or self:GetSquad():WasSignalGiven("ThrowAllGrenades",5) then
					local func = function()
						self:ThrowGrenade()
					end
					table.insert(self.StuffToRunInCoroutine,func)
					--print("grenade")
					return self:ResetAI()
				end	
			end		
			if IsValid(self.Weapon) then
				if self:HasToReload() then
					if !self.Reloading then
						self.Reloading = true
						self:Shoot()
					end
				else
					self:Shoot()
				end
			end	
		end
	end
end
function ENT:MarineThink()
	if self:Health() < 1 then return end
	self:VehicleThink()
	if self.LastThinkTime < CurTime() then
		self.LastThinkTime = CurTime()+self.ThinkDelay -- Set when we can think again
		local ent = self:WeaponThink()
		if IsValid(ent) and self.HasLOSToTarget and !self.DoingMelee and !self.HasMeleeWeapon then
			local should, dif = self:ShouldFace(ent)
			--print(should,dif)
			if should and math.abs(dif) > 2 then
				--self:Turn(dif,false,true)
				--print("angle")
				return "Gotta turn"	
			end
			if self.AllowGrenade and self.ThrownGrenades < 2 and ( self.DistToTarget < 1024^2 and self.DistToTarget > 256^2) then
				local chances = 10+(#self:PossibleTargets())
				local rand = math.random(100)
				--print(self.ThrownGrenades)
				if rand < chances or self:GetSquad():WasSignalGiven("ThrowAllGrenades",5) then
					local func = function()
						self:ThrowGrenade()
					end
					table.insert(self.StuffToRunInCoroutine,func)
					--print("grenade")
					return self:ResetAI()
				end	
			end		
			if IsValid(self.Weapon) then
				if self:HasToReload() then
					if !self.Reloading then
						self.Reloading = true
						self:Shoot()
					end
				else
					self:Shoot()
				end
			end	
		end
	end
end
function ENT:EliteThink()
	if self:Health() < 1 then return end
	if self.LastThinkTime < CurTime() then
		self.LastThinkTime = CurTime()+self.ThinkDelay -- Set when we can think again
		local ent = self:WeaponThink()
		if IsValid(ent) and self.HasLOSToTarget and !self.DoingMelee and !self.HasMeleeWeapon then
			local should, dif = self:ShouldFace(ent)
			--print(should,dif)
			if should and math.abs(dif) > 2 then
				--self:Turn(dif,false,true)
				--print("angle")
				return "Gotta turn"	
			end
			if self.AllowGrenade and self.ThrownGrenades < 2 and ( self.DistToTarget < 1024^2 and self.DistToTarget > 256^2) then
				local chances = 5+(#self:PossibleTargets())
				local rand = math.random(100)
				--print(self.ThrownGrenades)
				if rand < chances or self:GetSquad():WasSignalGiven("ThrowAllGrenades",5) then
					local func = function()
						self:ThrowGrenade()
					end
					table.insert(self.StuffToRunInCoroutine,func)
					--print("grenade")
					return self:ResetAI()
				end	
			end		
			if IsValid(self.Weapon) then
				if self:HasToReload() then
					if !self.Reloading then
						self.Reloading = true
						self:Shoot()
					end
				else
					self:Shoot()
				end
			end	
		end
	end
end
function ENT:BruteThink()
	if self:Health() < 1 then return end
	if self.LastThinkTime < CurTime() then
		self.LastThinkTime = CurTime()+self.ThinkDelay -- Set when we can think again
		local ent = self:WeaponThink()
		if IsValid(ent) and self.HasLOSToTarget and !self.DoingMelee and !self.HasMeleeWeapon then
			local should, dif = self:ShouldFace(ent)
			--print(should,dif)
			if should and math.abs(dif) > 2 then
				--self:Turn(dif,false,true)
				--print("angle")
				return "Gotta turn"	
			end
			if self.AllowGrenade and self.ThrownGrenades < 2 and ( self.DistToTarget < 1024^2 and self.DistToTarget > 256^2) then
				local chances = 5+(#self:PossibleTargets())
				local rand = math.random(100)
				if rand < chances or self:GetSquad():WasSignalGiven("ThrowAllGrenades",5) then
					local func = function()
						self:ThrowGrenade()
					end
					table.insert(self.StuffToRunInCoroutine,func)
					return self:ResetAI()
				end	
			end		
			if IsValid(self.Weapon) then
				if self:HasToReload() then
					if !self.Reloading then
						self.Reloading = true
						self:Shoot()
					end
				else
					self:Shoot()
				end
			end	
		end
	end
end
function ENT:GruntThink()
end
function ENT:JackalThink()
end
function ENT:DroneThink()
end
function ENT:HunterThink()
	if self:Health() < 1 then return end
	if self.LastThinkTime < CurTime() then
		self.LastThinkTime = CurTime()+self.ThinkDelay -- Set when we can think again
		local ent = self:WeaponThink()
		if IsValid(ent) and self.HasLOSToTarget and !self.DoingMelee then
			local should, dif = self:ShouldFace(ent)
			--print(should,dif)
			if should and math.abs(dif) > 2 then
				--self:Turn(dif,false,true)
				--print("angle")
				return "Gotta turn"	
			end
			self:HunterAttack(ent)
		end
	end
end
function ENT:HunterAttack(ent)
	ent = ent or self.Enemy
	if !self.DoneChargeAttack then
		self:EmitSound("hunter/hunter_cannon/hunter_charge.wav",100)
		self.DoneChargeAttack = true
		local lim = 30
		timer.Simple( 2, function()
			if IsValid(self) and IsValid(ent) then
				self:EmitSound("hunter/hunter_cannon/hunter_cannon_loop/hunter_cannon/in.wav",100)
				for i = 1, lim do
					self:EmitSound("hunter/hunter_cannon/hunter_cannon_loop/hunter_cannon/loop.wav",100)
					timer.Simple( 0.05*i, function()
						if IsValid(self) then
							local proj = ents.Create("astw2_halo3_hunter_projectile")
							local att = self:GetAttachment(3)
							proj:SetPos(att.Pos)
							proj:SetAngles(att.Ang)
							proj:SetOwner(self)
							proj:Activate()
							proj:Spawn()
							local phys = proj:GetPhysicsObject()
							if IsValid(phys) then
								phys:SetVelocity((self:GetAimVector()+((self:GetRight()*0.001)*math.random(1,-1))*(i))*10000)
							end
							if i == lim then
								timer.Simple( 2, function()
									if IsValid(self) then
										self.DoneChargeAttack = false
									end
								end )
								self:EmitSound("hunter/hunter_cannon/hunter_cannon_loop/hunter_cannon/out.wav",100)
							end
						end
					end )
				end
			end
		end )
	end
end
function ENT:EngineerThink()
end
function ENT:ProphetThink()
end
function ENT:ScarabThink()
end
function ENT:SentinelThink()
end
function ENT:EnforcerThink()
end
function ENT:MonitorThink()
	if CLIENT then
		if self.NThink < CurTime() then
			local color = self.MonitorColor or Color( 35, 100, 255 )
			local light = DynamicLight(self:EntIndex())
			if (light) then
				light.Pos = self:GetAttachment(2).Pos
				light.r = color.r
				light.g = color.g
				light.b = color.b
				light.Brightness = 6
				light.Decay = 2
				light.Size = 100
				light.style = 11
				--light.nomodel = true
				light.DieTime = CurTime() + 0.1
			end
			self.NThink = CurTime()+0.09
		end
	else
	
	end
end
function ENT:ConstructorThink()
end
function ENT:FloodHumanThink()
	if self:Health() < 1 then return end
	if self.LastThinkTime < CurTime() then
		self.LastThinkTime = CurTime()+self.ThinkDelay -- Set when we can think again
		local ent = self:WeaponThink()
		if IsValid(ent) and self.HasLOSToTarget and !self.DoingMelee and !self.HasMeleeWeapon then
			local should, dif = self:ShouldFace(ent)
			--print(should,dif)
			if should and math.abs(dif) > 2 then
				--self:Turn(dif,false,true)
				--print("angle")
				return "Gotta turn"	
			end
			if IsValid(self.Weapon) then
				if self:HasToReload() then
					if !self.Reloading then
						self.Reloading = true
						self:Shoot()
					end
				else
					self:Shoot()
				end
			end	
		end
	end
end
function ENT:FloodEliteThink()
end
function ENT:FloodBruteThink()
end
function ENT:FloodInfectionThink()
end
function ENT:FloodCarrierThink()
end
function ENT:FloodTankThink()
end
function ENT:FloodStalkerThink()
end
function ENT:FloodRangedThink()
end

function ENT:SpartanBehavior(ent,range)
	if !IsValid(ent) then self:GetATarget() end
	if !IsValid(self.Enemy) then return else ent = self.Enemy end
	ent = ent or self.Enemy
	if self.IsInVehicle then return self:VehicleBehavior(ent,range) end
	local los = (CurTime()-self.LastCalcTime < 1 and (self.HasLOSToTarget)) or self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter(),{self,ent,self:GetOwner(),ent:GetOwner()})
	local range = ((CurTime()-self.LastCalcTime) < 1 and self.DistToTarget) or range
	if !self.DistToTarget then self.DistToTarget = range end
	if IsValid(ent) and !self.IsWeaponDrawn then self:AdjustWeapon(self.Weapon,true) end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleBehavior(ent,range)
	end
	--print(los, !self.DoneMelee, range < self.MeleeRange^2, range, self.MeleeRange^2, math.sqrt(range), self.MeleeRange )
	self:MeleeChecks(los,range)
	if self.AllowGrenade and range < self.GrenadeRange^2 and range > (self.MeleeRange*2)^2 then
		self.CanThrowGrenade = true
	else
		self.CanThrowGrenade = false
	end
	if ( !self.DoneStealth or self.GoingForSneakKill ) and self:IsUndetected() then
		self.DoneStealth = true
		for k, v in ipairs(self:NearbyAllies(self:GetPos(),512)) do
			if ( v:IsPlayer() and v:Alive() and self.FriendlyToPlayers ) or (v.GoingForSneakKill and v.Enemy == ent) then
				self.SawPlayer = true
			end
		end
		timer.Simple( 60, function()
			if IsValid(self) then
				self.DoneStealth = false
				self.SawPlayer = false
				self.GoingForSneakKill = false
			end
		end )
		self.HaltShoot = true
		if self.SawPlayer and self.FriendlyToPlayers then
			self:StandBy()
		else
			self:SneakKill(ent)
		end
	end
	self.HaltShoot = false
	if !IsValid(ent) then return end
	if self.AIType == "Static" then
	
		local should, dif = self:ShouldFace(ent)
		if should then
			--self:Turn(dif,false,true)
			coroutine.wait(0.2)
			return
		end
		if !IsValid(ent) then return end
		coroutine.wait(math.random(2,3))
		
	elseif self.AIType == "Defensive" then
		if self.NeedsToCover then
			self.NeedsToCover = false
			self.NotLookingAtEnemy = true
			local tbl = self:FindCoverSpots(ent)
			if table.Count(tbl) > 0 or #tbl > 0 then
				local area = table.Random(tbl)
				if math.random(1,2) == 1 then
					timer.Simple( math.random(4,7), function()
						if IsValid(self) then
							if self.NotLookingAtEnemy then
								self.NotLookingAtEnemy = false
							end
						end
					end )
				end
				self:MoveToPosition( area, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
				self.NotLookingAtEnemy = false
				if math.random(1,2) == 1 then
					self:Speak("cvr")
					self:NearbyReply("cvr_re")
				else
					self:Speak("newordr_support")
				end
				return
			end
		end
		local should, dif = self:ShouldFace(ent)
		if should then
			--self:Turn(dif,false,true)
			coroutine.wait(0.2)
			return
		end
		if !IsValid(ent) then return end
		local wait = math.Rand(1,1.5)
		coroutine.wait(wait)
		
	elseif self.AIType == "Offensive" then
		if self.NeedsToCover then
			self.NeedsToCover = false
			local tbl = self:FindCoverSpots(ent)
			self.NotLookingAtEnemy = true
			if math.random(1,2) == 1 then
				timer.Simple( math.random(4,7), function()
					if IsValid(self) then
						if self.NotLookingAtEnemy then
							self.NotLookingAtEnemy = false
						end
					end
				end )
			end
			if table.Count(tbl) > 0 or #tbl > 0 then
				local area = table.Random(tbl)
				self:MoveToPosition( area, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
				self.NotLookingAtEnemy = false
				if math.random(1,2) == 1 then
					self:Speak("cvr")
					self:NearbyReply("cvr_re")
				else
					self:Speak("newordr_support")
				end
				return
			end
		end
		if los then
			local should, dif = self:ShouldFace(ent)
			if should then
				--self:Turn(dif,false,true)
				--coroutine.wait(0.2)
				return
			end
			if !IsValid(ent) then return end
			local p
			--print(self:IsOutNumbered())
			if math.random(1,2) == 1 and !self:IsOutNumbered() then p = ent:GetPos() end
			local rang = math.random(128,512)
			if p == ent:GetPos() then rang = self.DistToTarget/2 end
			local pos = self:FindNearbyPos(p,rang)
			local wait = math.Rand(0.5,1)
			local anim = self.RunAnim[math.random(#self.RunAnim)]
			local speed = self.MoveSpeed*self.MoveSpeedMultiplier 
			--print(anim,speed)
			self:MoveToPosition( pos, anim, speed )
			coroutine.wait(wait)
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
			self:WanderToPosition(self.RegisteredTargetPositions[ent],self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier,false)
			if !IsValid(self.Enemy) then 
				self:Speak("invsgt_fail") 
			end
		end
	end
	self:DoAnimation(self.IdleAnim)
end
function ENT:MarineBehavior(ent,range)
	if !IsValid(ent) then self:GetATarget() end
	if !IsValid(self.Enemy) then return else ent = self.Enemy end
	ent = ent or self.Enemy
	if self.IsInVehicle then return self:VehicleBehavior(ent,range) end
	local los = (CurTime()-self.LastCalcTime < 1 and (self.HasLOSToTarget)) or self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter(),{self,ent,self:GetOwner(),ent:GetOwner()})
	local range = ((CurTime()-self.LastCalcTime) < 1 and self.DistToTarget) or range
	if !self.DistToTarget then self.DistToTarget = range end
	if IsValid(ent) and !self.IsWeaponDrawn then self:AdjustWeapon(self.Weapon,true) end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleBehavior(ent,range)
	end
	--print(los, !self.DoneMelee, range < self.MeleeRange^2, range, self.MeleeRange^2, math.sqrt(range), self.MeleeRange )
	self:MeleeChecks(los,range)
	self:DodgeChecks(ent,los)
	if self.AllowGrenade and range < self.GrenadeRange^2 and range > (self.MeleeRange*2)^2 then
		self.CanThrowGrenade = true
	else
		self.CanThrowGrenade = false
	end
	if ( !self.DoneStealth or self.GoingForSneakKill ) and self:IsUndetected() then
		self.DoneStealth = true
		if IsValid(self.FollowingPlayer) then
			self.SawPlayer = true
		else
			for k, v in ipairs(self:NearbyAllies(self:GetPos(),512)) do
				if ( v:IsPlayer() and v:Alive() and self.FriendlyToPlayers ) or (v.GoingForSneakKill and v.Enemy == ent) then
					self.SawPlayer = true
				end
			end
		end
		timer.Simple( 60, function()
			if IsValid(self) then
				self.DoneStealth = false
				self.SawPlayer = false
				self.GoingForSneakKill = false
			end
		end )
		self.HaltShoot = true
		if self.SawPlayer and self.FriendlyToPlayers then
			self:StandBy()
		else
			self:SneakKill(ent)
		end
	end
	self.HaltShoot = false
	if !IsValid(ent) then return end
	if self.AIType == "Static" then
	
		local should, dif = self:ShouldFace(ent)
		if should then
			--self:Turn(dif,false,true)
			coroutine.wait(0.2)
			return
		end
		if !IsValid(ent) then return end
		coroutine.wait(math.random(2,3))
		
	elseif self.AIType == "Defensive" then
		if self.NeedsToCover then
			self.NeedsToCover = false
			self.NotLookingAtEnemy = true
			local tbl = self:FindCoverSpots(ent)
			if table.Count(tbl) > 0 or #tbl > 0 then
				local area = table.Random(tbl)
				if math.random(1,2) == 1 then
					timer.Simple( math.random(4,7), function()
						if IsValid(self) then
							if self.NotLookingAtEnemy then
								self.NotLookingAtEnemy = false
							end
						end
					end )
				end
				self:MoveToPosition( area, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
				self.NotLookingAtEnemy = false
				if math.random(1,2) == 1 then
					self:Speak("cvr")
					self:NearbyReply("cvr_re")
				else
					self:Speak("newordr_support")
				end
				return
			end
		end
		local should, dif = self:ShouldFace(ent)
		if should then
			--self:Turn(dif,false,true)
			coroutine.wait(0.2)
			return
		end
		if !IsValid(ent) then return end
		local wait = math.Rand(1,1.5)
		coroutine.wait(wait)
		
	elseif self.AIType == "Offensive" then
		if self.IsFollowingPlayer then
			if self.FollowingPlayer:InVehicle() then
				local ent = self.FollowingPlayer:GetVehicle():GetParent()
				if IsValid(ent) and self.DriveThese[ent:GetModel()] and !self.SeenVehicles[ent] then
					self.SeenVehicles[ent] = true
					self.CountedVehicles = self.CountedVehicles+1
				end
			end
			local dist = self:GetRangeSquaredTo(self.FollowingPlayer)
			if dist > 500^2 then
				local goal = self.FollowingPlayer:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 300
				local pos = self:FindNearbyPos(goal,200)
				self:GoToPosition( (pos), self.RunCalmAnim[math.random(1,#self.RunCalmAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )	
			end
		end
			if self.NeedsToCover then
				self.NeedsToCover = false
				local tbl = self:FindCoverSpots(ent)
				self.NotLookingAtEnemy = true
				if math.random(1,2) == 1 then
					timer.Simple( math.random(4,7), function()
						if IsValid(self) then
							if self.NotLookingAtEnemy then
								self.NotLookingAtEnemy = false
							end
						end
					end )
				end
				if table.Count(tbl) > 0 or #tbl > 0 then
					local area = table.Random(tbl)
					self:MoveToPosition( area, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
					self.NotLookingAtEnemy = false
					if math.random(1,2) == 1 then
						self:Speak("cvr")
						self:NearbyReply("cvr_re")
					else
						self:Speak("newordr_support")
					end
					return
				end
			end
			if los then
				local should, dif = self:ShouldFace(ent)
				if should then
					--self:Turn(dif,false,true)
					--coroutine.wait(0.2)
					return
				end
				if !IsValid(ent) then return end
				local p
				--print(self:IsOutNumbered())
				if math.random(1,2) == 1 and !self:IsOutNumbered() then p = ent:GetPos() end
				local rang = math.random(128,512)
				if p == ent:GetPos() then rang = self.DistToTarget/2 end
				local pos = self:FindNearbyPos(p,rang)
				local wait = math.Rand(0.5,1)
				local r = math.random(1,3)
				local walk = (r == 1 and range < 600^2)
				local anim = walk and self.WalkAnim[math.random(#self.WalkAnim)] or self.RunAnim[math.random(#self.RunAnim)]
				local speed = walk and self.MoveSpeed or self.MoveSpeed*self.MoveSpeedMultiplier 
				--print(anim,speed)
				self:MoveToPosition( pos, anim, speed )
				coroutine.wait(wait)
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
				self:WanderToPosition(self.RegisteredTargetPositions[ent],self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier,false)
				if !IsValid(self.Enemy) then 
					self:Speak("invsgt_fail") 
				end
			end
	end
	self:DoAnimation(self.IdleAnim)
end
function ENT:EliteBehavior(ent,range)
	if !IsValid(ent) then self:GetATarget() end
	if !IsValid(self.Enemy) then return else ent = self.Enemy end
	ent = ent or self.Enemy
	if self.IsInVehicle then return self:VehicleBehavior(ent,range) end
	local los = (CurTime()-self.LastCalcTime < 1 and (self.HasLOSToTarget)) or self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter(),{self,ent,self:GetOwner(),ent:GetOwner()})
	local range = ((CurTime()-self.LastCalcTime) < 1 and self.DistToTarget) or range
	if !self.DistToTarget then self.DistToTarget = range end
	if IsValid(ent) and !self.IsWeaponDrawn then self:AdjustWeapon(self.Weapon,true) end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleBehavior(ent,range)
	end
	--print(los, !self.DoneMelee, range < self.MeleeRange^2, range, self.MeleeRange^2, math.sqrt(range), self.MeleeRange )
	self:MeleeChecks(los,range)
	self:DodgeChecks(ent,los)
	if self.AllowGrenade and range < self.GrenadeRange^2 and range > (self.MeleeRange*2)^2 then
		self.CanThrowGrenade = true
	else
		self.CanThrowGrenade = false
	end
	if ( !self.DoneStealth or self.GoingForSneakKill ) and self:IsUndetected() then
		self.DoneStealth = true
		for k, v in ipairs(self:NearbyAllies(self:GetPos(),512)) do
			if ( v:IsPlayer() and v:Alive() and self.FriendlyToPlayers ) or (v.GoingForSneakKill and v.Enemy == ent) then
				self.SawPlayer = true
			end
		end
		timer.Simple( 60, function()
			if IsValid(self) then
				self.DoneStealth = false
				self.SawPlayer = false
				self.GoingForSneakKill = false
			end
		end )
		self.HaltShoot = true
		if self.SawPlayer then
			self:StandBy()
		else
			self:SneakKill(ent)
		end
	end
	self.HaltShoot = false
	if !IsValid(ent) then return end
	if self.AIType == "Static" then
	
		local should, dif = self:ShouldFace(ent)
		if should then
			--self:Turn(dif,false,true)
			coroutine.wait(0.2)
			return
		end
		if !IsValid(ent) then return end
		coroutine.wait(math.random(2,3))
		
	elseif self.AIType == "Defensive" then
		if self.NeedsToCover then
			self.NeedsToCover = false
			self.NotLookingAtEnemy = true
			local tbl = self:FindCoverSpots(ent)
			if table.Count(tbl) > 0 or #tbl > 0 then
				local area = table.Random(tbl)
				if math.random(1,2) == 1 then
					timer.Simple( math.random(4,7), function()
						if IsValid(self) then
							if self.NotLookingAtEnemy then
								self.NotLookingAtEnemy = false
							end
						end
					end )
				end
				self:MoveToPosition( area, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
				self.NotLookingAtEnemy = false
				if math.random(1,2) == 1 then
					self:Speak("cvr")
					self:NearbyReply("cvr_re")
				else
					self:Speak("newordr_support")
				end
				return
			end
		end
		local should, dif = self:ShouldFace(ent)
		if should then
			--self:Turn(dif,false,true)
			coroutine.wait(0.2)
			return
		end
		if !IsValid(ent) then return end
		local wait = math.Rand(1,1.5)
		coroutine.wait(wait)
		
	elseif self.AIType == "Offensive" then
		if self.NeedsToCover then
			self.NeedsToCover = false
			local tbl = self:FindCoverSpots(ent)
			self.NotLookingAtEnemy = true
			if math.random(1,2) == 1 then
				timer.Simple( math.random(4,7), function()
					if IsValid(self) then
						if self.NotLookingAtEnemy then
							self.NotLookingAtEnemy = false
						end
					end
				end )
			end
			if table.Count(tbl) > 0 or #tbl > 0 then
				local area = table.Random(tbl)
				self:MoveToPosition( area, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
				self.NotLookingAtEnemy = false
				if math.random(1,2) == 1 then
					self:Speak("cvr")
					self:NearbyReply("cvr_re")
				else
					self:Speak("newordr_support")
				end
				return
			end
		end
		if los then
			local should, dif = self:ShouldFace(ent)
			if should then
				--self:Turn(dif,false,true)
				--coroutine.wait(0.2)
				return
			end
			if !IsValid(ent) then return end
			local p
			--print(self:IsOutNumbered())
			if self.HasMeleeWeapon then
				self.PathGoalTolerance = 100
				self:MoveToPosition( ent:GetPos(), self.RunAnim[math.random(#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier, function() if IsValid(self.Enemy) and self.DistToTarget < self.MeleeRange^2 then return self:MeleeChecks(true,self.DistToTarget) end end )
				self.PathGoalTolerance = 40
			else
				if math.random(1,2) == 1 and !self:IsOutNumbered() then p = ent:GetPos() end
				local rang = math.random(128,512)
				if p == ent:GetPos() then rang = self.DistToTarget/2 end
				local pos = self:FindNearbyPos(p,rang)
				local wait = math.Rand(0.5,1)
				local anim = self.RunAnim[math.random(#self.RunAnim)]
				local speed = self.MoveSpeed*self.MoveSpeedMultiplier 
				--print(anim,speed)
				self:MoveToPosition( pos, anim, speed )
				coroutine.wait(wait)
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
			self:SetEnemy(nil)
			self:WanderToPosition(self.RegisteredTargetPositions[ent],self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier,false)
			if !IsValid(self.Enemy) then 
				self:Speak("invsgt_fail") 
			end
		end
	end
	self:DoAnimation(self.IdleAnim)
end
function ENT:BruteBehavior(ent,range)
	if !IsValid(ent) then self:GetATarget() end
	if !IsValid(self.Enemy) then return else ent = self.Enemy end
	if self.Leaping then return end
	ent = ent or self.Enemy
	if self.IsInVehicle then return self:VehicleBehavior(ent,range) end
	local mins, maxs = ent:GetCollisionBounds()
	local los, obstr = self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter()+ent:GetUp()*(maxs*0.25),{self,ent,self:GetOwner()})	if IsValid(obstr) then	
		if ( self.DriveThese[obstr:GetModel()] and !self.SeenVehicles[obstr] ) then
			self.SeenVehicles[obstr] = true
			self.CountedVehicles = self.CountedVehicles+1
		elseif ( ( obstr:IsNPC() or obstr:IsPlayer() or obstr:IsNextBot() ) and obstr:Health() > 0 ) and self:CheckRelationships(obstr) == "foe" then
			ent = obstr
			self:SetEnemy(ent)
		end
	end
	local range = ((CurTime()-self.LastCalcTime) < 1 and self.DistToTarget) or range
	if !self.DistToTarget then self.DistToTarget = range end
	if IsValid(ent) and !self.IsWeaponDrawn then self:AdjustWeapon(self.Weapon,true) end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleBehavior(ent,range)
	end
	--print(los, !self.DoneMelee, range < self.MeleeRange^2, range, self.MeleeRange^2, math.sqrt(range), self.MeleeRange )
	self:MeleeChecks(los,range)
	self:DodgeChecks(ent,los)
	if self.AllowGrenade and range < self.GrenadeRange^2 and range > (self.MeleeRange*2)^2 then
		self.CanThrowGrenade = true
	else
		self.CanThrowGrenade = false
	end
	self.HaltShoot = false
	if !IsValid(ent) then return end
		self:CoverChecks(ent)
		if los then
			local should, dif = self:ShouldFace(ent)
			if should then
				--self:Turn(dif,false,true)
				--coroutine.wait(0.2)
				return
			end
			if !IsValid(ent) then return end
			if self.HasMeleeWeapon then
				if range > 512^2 and range < 1200^2 then
					self:PlaySequenceAndWait(self.LeapAnim)
					self.Leaping = true
					self.loco:JumpAcrossGap(ent:GetPos(),self:GetForward())
					return
				else
					self.PathGoalTolerance = 100
					self:Speak("kamikaze")
					self:MoveToPosition( ent:GetPos(), self.RunAnim[math.random(#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier, function() if IsValid(self.Enemy) and self.DistToTarget < self.MeleeRange^2 then return self:MeleeChecks(true,self.DistToTarget) end end )
					self.PathGoalTolerance = 40
				end
			else
				local p
				if math.random(1,2) == 1 then p = ent:GetPos() end
				local pos = self:FindNearbyPos()
				local wait = math.Rand(0.5,1)
				local anim = self.RunAnim[math.random(#self.RunAnim)]
				local speed = self.MoveSpeed*self.MoveSpeedMultiplier
				--print(anim,speed)
				self:GoToPosition( pos, anim, speed )
				coroutine.wait(wait)
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
			self:SetEnemy(nil)
			self:GoToPosition(self.RegisteredTargetPositions[ent],self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier,self.WanderToPos)
			if !IsValid(self.Enemy) then 
				self:Speak("invsgt_fail") 
			end
		end
end
function ENT:GruntBehavior(ent,range)
end
function ENT:JackalBehavior(ent,range)
end
function ENT:DroneBehavior(ent,range)
end
function ENT:HunterBehavior(ent,range)
	if !IsValid(ent) then self:GetATarget() end
	if !IsValid(self.Enemy) then return else ent = self.Enemy end
	ent = ent or self.Enemy
	local mins, maxs = ent:GetCollisionBounds()
	local los, obstr = self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter()+ent:GetUp()*(maxs*0.25),{self,ent,self:GetOwner()})	if IsValid(obstr) then	
		if ( ( obstr:IsNPC() or obstr:IsPlayer() or obstr:IsNextBot() ) and obstr:Health() > 0 ) and self:CheckRelationships(obstr) == "foe" then
			ent = obstr
			self:SetEnemy(ent)
		end
	end
	self:MeleeChecks(los,range)
	if los then
		if range < 512 and math.random(1,2) == 1 then
			self:MoveToPosition( ent:GetPos(),  self.RunAnim[math.random(#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
		else
			if math.random(1,4) == 1 then p = ent:GetPos() end
			local pos = self:FindNearbyPos(p,math.random(256,256))
			local wait = math.Rand(0.5,1)
			local r = math.random(1,3)
			local anim = r == 1 and self.RunAnim[math.random(#self.RunAnim)] or self.CrouchMoveAnim[math.random(#self.CrouchMoveAnim)]
			local speed = r == 1 and self.MoveSpeed*self.MoveSpeedMultiplier or self.MoveSpeed
			--print(anim,speed)
			self:MoveToPosition( pos, anim, speed )
			self:DoAnimation(self.IdleAnim)
			coroutine.wait(wait)
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
		if math.random(1,2) == 1 then
			ent.BeingChased = true
			self:GoToPosition(self.RegisteredTargetPositions[ent],self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier,self.WanderToPos)
		end
		self:SetEnemy(nil)
	end
end
function ENT:EngineerBehavior(ent,range)
end
function ENT:ProphetBehavior(ent,range)
end
function ENT:ScarabBehavior(ent,range)
end
function ENT:SentinelBehavior(ent,range)
end
function ENT:EnforcerBehavior(ent,range)
end
function ENT:MonitorBehavior(ent,range)
end
function ENT:ConstructorBehavior(ent,range)
end
function ENT:FloodHumanBehavior(ent,range)
	if !IsValid(ent) then self:GetATarget() end
	if !IsValid(self.Enemy) then return else ent = self.Enemy end
	if self.Leaping then return end
	ent = ent or self.Enemy
	if self.IsInVehicle then return self:VehicleBehavior(ent,range) end
	local mins, maxs = ent:GetCollisionBounds()
	local los, obstr = self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter()+ent:GetUp()*(maxs*0.25),{self,ent,self:GetOwner()})	if IsValid(obstr) then	
		if ( self.DriveThese[obstr:GetModel()] and !self.SeenVehicles[obstr] ) then
			self.SeenVehicles[obstr] = true
			self.CountedVehicles = self.CountedVehicles+1
		elseif ( ( obstr:IsNPC() or obstr:IsPlayer() or obstr:IsNextBot() ) and obstr:Health() > 0 ) and self:CheckRelationships(obstr) == "foe" then
			ent = obstr
			self:SetEnemy(ent)
		end
	end
	local range = ((CurTime()-self.LastCalcTime) < 1 and self.DistToTarget) or range
	if !self.DistToTarget then self.DistToTarget = range end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleBehavior(ent,range)
	end
	--print(los, !self.DoneMelee, range < self.MeleeRange^2, range, self.MeleeRange^2, math.sqrt(range), self.MeleeRange )
	self:MeleeChecks(los,range)
	self:DodgeChecks(ent,los)
	if self.AllowGrenade and range < self.GrenadeRange^2 and range > (self.MeleeRange*2)^2 then
		self.CanThrowGrenade = true
	else
		self.CanThrowGrenade = false
	end
	self.HaltShoot = false
	if !IsValid(ent) then return end
		if los then
			local should, dif = self:ShouldFace(ent)
			if should then
				--self:Turn(dif,false,true)
				--coroutine.wait(0.2)
				return
			end
			if !IsValid(ent) then return end
			--[[if !IsValid(self.Weapon) then
				if range > 512^2 and range < 1200^2 then
					self:PlaySequenceAndWait(self.LeapAnim)
					self.Leaping = true
					self.loco:JumpAcrossGap(ent:GetPos(),self:GetForward())
					return
				else
					self.PathGoalTolerance = 100
					--self:Speak("kamikaze")
					self:MoveToPosition( ent:GetPos(), self.RunAnim[math.random(#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier, function() if IsValid(self.Enemy) and self.DistToTarget < self.MeleeRange^2 then return self:MeleeChecks(true,self.DistToTarget) end end )
					self.PathGoalTolerance = 40
				end
			else]]
			if ( range > 512^2 and range < 1536^2 ) and !self.SawAlliesDie then
				local p
				p = ent:GetPos()
				local pos = self:FindNearbyPos(p)
				local wait = math.Rand(0.5,1)
				local anim = self:TableRandom(self.WalkAnim)
				local speed = self.MoveSpeed
				--print(anim,speed)
				self:GoToPosition( pos, anim, speed, self.ChaseEnt )
				--coroutine.wait(wait)
			else
				local p
				p = ent:GetPos()
				local pos = p
				local wait = math.Rand(0.5,1)
				local anim = self:TableRandom(self.RunAnim)
				local speed = self.MoveSpeed*self.MoveSpeedMultiplier
				--print(anim,speed)
				self:GoToPosition( pos, anim, speed, self.ChaseEnt )
				--coroutine.wait(wait)
			end
			--end
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
			self:GoToPosition(self.RegisteredTargetPositions[ent],self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier,self.WanderToPos)
			if !IsValid(self.Enemy) then 
				self:Speak("invsgt_fail") 
			end
		end
end
function ENT:FloodEliteBehavior(ent,range)
end
function ENT:FloodBruteBehavior(ent,range)
end
function ENT:FloodInfectionBehavior(ent,range)
end
function ENT:FloodCarrierBehavior(ent,range)
end
function ENT:FloodTankBehavior(ent,range)
end
function ENT:FloodStalkerBehavior(ent,range)
end
function ENT:FloodRangedBehavior(ent,range)
end

function ENT:DoIdle()
	if !self.IsWeaponDrawn and !self.HasSeenEnemies then
		if math.random(1,2) == 1 and IV04H3_AllowPatrol then
			local pos = self:FindNearbyPos()
			self:GoToPosition( (pos), self.PatrolMoveAnim[math.random(1,#self.PatrolMoveAnim)], self.MoveSpeed*0.5, self.WanderToPos, self.PatrolIdleAnim )	
		else
			local seq = self.PatrolIdleAnim
			self:DoAnimation(seq)
			self:SearchEnemy()
			timer.Simple( self:SequenceDuration(seq)/2, function()
				if IsValid(self) then
					if math.random(1,2) == 1 then
						self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
						timer.Simple( math.random(2,3), function()
							if IsValid(self) then self.SpecificGoal = nil end
						end )
					end
					self:SearchEnemy()
				end
			end )
			coroutine.wait(self:SequenceDuration(seq))
			self:SearchEnemy()
		end
		--print(self.PatrolIdlePoseAnim)
		if self.PatrolIdlePoseAnim and math.random(1,5) == 1 then
			--print("done")
			local seq = self.PatrolIdlePoseAnim
			self:DoAnimation(seq,false,true)
			self:SearchEnemy()
		end
	else
		if self.PosingAnims and math.random(1,5) == 1 then
			local seq = self.PosingAnims
			self:DoAnimation(seq,false,true)
			self:SearchEnemy()
		end
		local seq = self.IdleCalmAnim
		self:DoAnimation(seq)
		self:SearchEnemy()
		timer.Simple( self:SequenceDuration(seq)/2, function()
			if IsValid(self) then
				if math.random(1,2) == 1 then
					self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
					timer.Simple( math.random(2,3), function()
						if IsValid(self) then self.SpecificGoal = nil end
					end )
				end
				self:SearchEnemy()
			end
		end )
		coroutine.wait(self:SequenceDuration(seq))
		self:SearchEnemy()
	end
end
function ENT:FollowingPlayerChecks()
	if self.IsFollowingPlayer then
		if self.FollowingPlayer:InVehicle() then
			local ent = self.FollowingPlayer:GetVehicle():GetParent()
			if IsValid(ent) and self.DriveThese[ent:GetModel()] and !self.SeenVehicles[ent] then
				self.SeenVehicles[ent] = true
				self.CountedVehicles = self.CountedVehicles+1
			end
		end
		self.LookTarget = self.FollowingPlayer
		local dist = self:GetRangeSquaredTo(self.FollowingPlayer)
		if dist > 500^2 then
			local goal = self.FollowingPlayer:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 300
			local pos = self:FindNearbyPos(goal,200)
			self:GoToPosition( (pos), self.RunCalmAnim[math.random(1,#self.RunCalmAnim)], self.MoveSpeed*self.MoveSpeedMultiplier, self.WanderToPos )	
		end
	end
end
function ENT:PostCombatChecks()
	if self.HasSeenEnemies then
		if !self.CommentedPostCombat then
			if !PostCombatComment then
				PostCombatComment = true
				timer.Simple( 30, function()
					PostCombatComment = false
					if IsValid(self) then
						self.CommentedPostCombat = false
					end
				end )
				self.CommentedPostCombat = true
				if self.SawFlood then
					self.SawFlood = false
					self:Speak("pstcmbt_fld")
				else
					local r = self.PostCombatQuotes[math.random(#self.PostCombatQuotes)]
					self:Speak(r)
					if self.PostCombatResponses[r] then
						self:NearbyReply(self.PostCombatResponses[r])
					end
				end
			end
		end
	end
end
function ENT:WeaponThink()
		if IV04_AIDisabled or self.Flying or self.HaltShoot or self.AnimBusy or (self.IsInVehicle and self.VehicleRole != "Passenger") then return end
		if IsValid(self.Enemy) then
			local ent = self.Enemy		
			if self.LastCalcTime < CurTime() then -- We can do expensive actions
				self.LastCalcTime = CurTime()+self.AimCalculationT -- Set when we can do the expensive actions again
				local los, obstr = self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter(),{self,ent,self:GetOwner(),ent:GetOwner()})
				if los then
					self.HasLOSToTarget = true
					-- No point on increasing FPS loss by calculationg distance if we can't even see target
					self.DistToTarget = self:GetRangeSquaredTo(ent)
					self.RegisteredTargetPositions[ent] = ent:GetPos()
				else
					if IsValid(obstr) then
						local ros = self:CheckRelationships(obstr)
						if ros == "foe" then
							self:SetEnemy(obstr)
							ent = obstr
							self.HasLOSToTarget = true
							self.DistToTarget = self:GetRangeSquaredTo(ent)
							self.RegisteredTargetPositions[ent] = ent:GetPos()
							self:ResetAI()
							--print("new target found!",ros)
							-- New target!
						elseif ros == "friend" and obstr:IsPlayer() then
							self:Speak("scld_plr_blocking")
						else
							if ( self.DriveThese[obstr:GetModel()] and !self.SeenVehicles[obstr] ) then
								self.SeenVehicles[obstr] = true
								self.CountedVehicles = self.CountedVehicles+1
							end
							self.HasLOSToTarget = false
						end
					else
						self.HasLOSToTarget = false
					end
				end
			end
			return ent
			--print(self.HasLOSToTarget)
		end
end
