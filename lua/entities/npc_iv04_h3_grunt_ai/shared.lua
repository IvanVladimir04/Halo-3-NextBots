AddCSLuaFile()
include("voices.lua")
ENT.Base 			= "npc_iv04_base"
ENT.MoveSpeed = 30
ENT.MoveSpeedMultiplier = 4
ENT.BehaviourType = 3
ENT.BulletNumber = 1
ENT.IdleSoundDelay = math.random(6,10)
ENT.SightType = 2

ENT.HasArmor = false

--ENT.FriendlyToPlayers = true

--ENT.WalkAnim = {ACT_RUN_PISTOL}
--ENT.WanderAnim = {ACT_RUN_PISTOL}
--ENT.RunAnim = {ACT_RUN_PISTOL}

ENT.DodgeChance = 40
--[[ENT.CrouchingChance = 25
ENT.StepChance = 20]]
ENT.AttractAlliesRange = 1024

ENT.MeleeRange = 100

ENT.MeleeDistance = 180

ENT.ShieldHealth = 100

ENT.ActionTime = 2.5

-- Flinching

ENT.FlinchChance = 30

ENT.FlinchDamage = 1

ENT.FlinchHitgroups = {
	[1] = ACT_FLINCH_HEAD,
	[2] = ACT_FLINCH_CHEST,
	[4] = ACT_FLINCH_LEFTARM,
	[5] = ACT_FLINCH_RIGHTARM,
	[6] = ACT_FLINCH_LEFTLEG,
	[7] = ACT_FLINCH_RIGHTLEG,
	[3] = ACT_FLINCH_STOMACH
}

ENT.FlinchMove = {
	[1] = 50,
	[3] = 50,
	[4] = 50,
	[5] = 50,
	[6] = 0,
	[7] = 0
}

--ENT.Footsteps = { "doom_3/zombie_pistol/step1.ogg", "doom_3/zombie_pistol/step2.ogg", "doom_3/zombie_pistol/step3.ogg", "doom_3/zombie_pistol/step4.ogg" }

local dmgtypes = {
	[DMG_CLUB] = true,
	[DMG_SLASH] = true
}

ENT.MeleeDamage = 75

ENT.NPSound = 0

ENT.NISound = 0

ENT.CanUse = true

ENT.SearchJustAsSpawned = false

ENT.Faction = "FACTION_COVENANT"

ENT.CurMag = 100

ENT.CustomIdle = true

local seqs = {
	[1] = "evade_left",
	[2] = "evade_right"
}

ENT.PistolHolds = {
	["pistol"] = true,
	["revolver"] = true
}

ENT.TotalHolds = {
	["pistol"] = true,
	["revolver"] = true,
	["rpg"] = true
}

ENT.FlinchHitgroups = {
	[7] = ACT_FLINCH_RIGHTLEG,
	[3] = ACT_FLINCH_CHEST,
	[4] = ACT_FLINCH_LEFTARM,
	[5] = ACT_FLINCH_RIGHTARM,
	[6] = ACT_FLINCH_LEFTLEG,
	[1] = ACT_FLINCH_HEAD
}

ENT.FlinchAnims = {
	[1] = "Flinch_Front_Chest",
	[3] = "Flinch_Front_Chest",
	[4] = "Flinch_Front_Left_Arm",
	[5] = "Flinch_Front_Right_Arm",
	[6] = "Flinch_Front_Left_Leg",
	[7] = "Flinch_Front_Right_Leg"
}

function ENT:FireAnimationEvent(pos,ang,event,name)
	--[[print(pos)
	print(ang)
	print(event)
	print(name)]]
	--[[if name == self.StepEvent then
		local snd = table.Random(self.Footsteps)
		self:EmitSound(snd,100)
	end]]
end

function ENT:Give(class)
	local wep = ents.Create(class)
	local attach = self:GetAttachment(1)
	local pos = attach.Pos
	wep:SetOwner(self)
	wep:SetPos(pos)
	wep:SetAngles(attach.Ang)
	wep:Spawn()
	wep:PhysicsInit(SOLID_NONE)	
	wep:SetSolid(SOLID_NONE)
	wep:SetParent(self,1)
	wep:Fire("setparentattachment", "hold")
	--wep:AddEffects(EF_BONEMERGE)
	self.Weapon = wep
	wep:SetClip1(wep:GetMaxClip1())
end

function ENT:OnInitialize()
	self:DoInit()
	self:Give("astw2_haloreach_plasma_pistol")
	self.VoiceType = "Grunt"
	self:SetCollisionBounds(Vector(20,20,50),Vector(-20,-20,0))
	if !self.Weapon.NextPrimaryFire then self.Weapon.NextPrimaryFire = CurTime() end
	local relo = self.Weapon.AI_Reload
	self:SetNWEntity("wep",self.Weapon)
	--self:SetBodygroup(0,math.random(0,1))
	self.Weapon.AI_Reload = function()
		relo(self.Weapon)
		self:DoAnimationEvent(1689)
	end
	self:SetupHoldtypes()
end

function ENT:DoInit()
	--print(marinevariant)
	--self:SetCollisionBounds(Vector(-30,-30,0),Vector(30,30,80))
	self.Difficulty = GetConVar("halo_reach_nextbots_ai_difficulty"):GetInt()
	self:SetBloodColor(DONT_BLEED)
	self.ShouldWander = false
end

function ENT:SetupHoldtypes()
	if GetConVar("halo_reach_nextbots_ai_great_schism"):GetInt() == 2 then
		self.FriendlyToPlayers = true
		self.Faction = "FACTION_UNSC"
	end
	local hold = self.Weapon.HoldType_Aim
	self.DropshipPassengerIdleAnims = {
		[1] = "Phantom_Passenger_Idle_1",
		[2] = "Phantom_Passenger_Idle_2"
	}
	self.DropshipPassengerExitAnims = {
		[1] = "Phantom_Passenger_Exit_1",
		[2] = "Phantom_Passenger_Exit_2"
	}
	self.SpiritPassengerIdleAnims = {
		[1] = "Spirit_Passenger_Idle_1",
		[2] = "Spirit_Passenger_Idle_2",
		[3] = "Spirit_Passenger_Idle_3",
		[4] = "Spirit_Passenger_Idle_4"
	}
	self.SpiritPassengerExitAnims = {
		[1] = "Spirit_Passenger_Exit_1",
		[2] = "Spirit_Passenger_Exit_2",
		[3] = "Spirit_Passenger_Exit_3",
		[4] = "Spirit_Passenger_Exit_4"
	}
	if self.PistolHolds[hold] then
		self.RunAnim = {self:GetSequenceActivity(self:LookupSequence("Move_Pistol"))}
		self.IdleCalmAnim = {self:GetSequenceActivity(self:LookupSequence("Pistol_Idle")),self:GetSequenceActivity(self:LookupSequence("Idle_2")),self:GetSequenceActivity(self:LookupSequence("Idle_3")),self:GetSequenceActivity(self:LookupSequence("Idle_4")),self:GetSequenceActivity(self:LookupSequence("Idle_5")),self:GetSequenceActivity(self:LookupSequence("Idle_6"))}
		self.IdleAnim = {self:GetSequenceActivity(self:LookupSequence("Pistol_Idle"))}
		self.WarnAnim = "Warn"
		self.SurpriseAnim = {"Surprise_1","Surprise_2"}
		self.FireAnim = "Attack_Plasma_Pistol"
		self.CalmTurnLeftAnim = "Pistol_Turn_Left_Idle"
		self.CalmTurnRightAnim = "Pistol_Turn_Right_Idle"
		self.TurnLeftAnim = "Pistol_Turn_Left_Idle"
		self.TurnRightAnim = "Pistol_Turn_Right_Idle"
		if self.Weapon:GetClass() == "astw2_haloreach_needler" then
			self.Weapon.BurstLength = self.CovRank+2
		end
	elseif hold == "rpg" then
		self.RunAnim = {self:GetSequenceActivity(self:LookupSequence("Move_Missile_1")),self:GetSequenceActivity(self:LookupSequence("Move_Missile_2"))}
		self.IdleAnim = {self:GetSequenceActivity(self:LookupSequence("Missile_Idle"))}
		self.IdleCalmAnim = {self:GetSequenceActivity(self:LookupSequence("Missile_Idle"))}
		self.WarnAnim = "Warn_Fuel_Rod"
		self.SurpriseAnim = "Surprised_Fuel_Rod"
		self.FireAnim = "Attack_Fuel_Rod"
		self.CalmTurnLeftAnim = "Missile_Turn_Left_Idle"
		self.CalmTurnRightAnim = "Missile_Turn_Right_Idle"
		self.TurnLeftAnim = "Missile_Turn_Left_Idle"
		self.TurnRightAnim = "Missile_Turn_Right_Idle"
	end
end

function ENT:OnLeaveGround(ent)
	if self:Health() <= 0 then 
		self:StartActivity(self:GetSequenceActivity(self:LookupSequence("Dead_Airborne")))
	else
		if self.loco:GetVelocity():IsZero() then
			self.OldSeq = self:GetSequence()
		else
			self.OldSeq = self:SelectWeightedSequence(self.RunAnim[math.random(#self.RunAnim)])
		end
		self.LastTimeOnGround = CurTime()
		self:StartActivity(self.IdleAnim[math.random(#self.IdleAnim)])
	end
end

function ENT:OnLandOnGround(ent)
	if self.FlyingDead then
		self.HasLanded = true
	elseif self.LastTimeOnGround then
		local t = CurTime()-self.LastTimeOnGround
		local seq
		if t < 3 then
			seq = "land_soft"
		else
			seq = "land_hard"
		end
		local func = function()
			self:PlaySequenceAndWait(seq)
			self:StartActivity(self.IdleAnim[math.random(#self.IdleAnim)])
		end
		table.insert(self.StuffToRunInCoroutine,func)
		self:ResetAI()
	elseif self.OldSeq then
		self:ResetSequence(self.OldSeq)
	end
end

function ENT:Think()
	if self.IsInVehicle then
		if self.InDropship then
			local att = self.Dropship:GetAttachment(self.Dropship:LookupAttachment(self.Dropship.InfantryAtts[self.DropshipId]))
			local ang = att.Ang
			local pos = att.Pos
			self:SetAngles(att.Ang)
			if !self.DLanded then
				self:SetPos(att.Pos+Vector(0,0,3))
				if !self.DidDropshipIdleAnim then
					self.DidDropshipIdleAnim = true
					local anim
					if self.InPhantom then
						anim = self.DropshipPassengerIdleAnims[math.random(#self.DropshipPassengerIdleAnims)]
					else
						anim = self.SpiritPassengerIdleAnims[math.random(#self.SpiritPassengerIdleAnims)]
					end
					local id, len = self:LookupSequence(anim)
					self:ResetSequence(id)
					--print(id,len)
					timer.Simple( len, function()
						if IsValid(self) then
							self.DidDropshipIdleAnim = false
						end
					end )
				end
			else
				local off = 0
				if self.SideAnim == "Right" then off = -0 end
				self:SetPos(att.Pos+Vector(0,0,3)-att.Ang:Right()*off)
			end
			--self.loco:SetVelocity(Vector(0,0,0))
		end
	end
end

function ENT:Speak(voice)
	local character = self.Voices["Grunt"]
	if self.CurrentSound then self.CurrentSound:Stop() end
	if character[voice] and istable(character[voice]) then
		local sound = table.Random(character[voice])
		self.CurrentSound = CreateSound(self,sound)
		self.CurrentSound:SetSoundLevel(100)
		self.CurrentSound:Play()
	end
end

function ENT:BeforeThink()
end

function ENT:Use( activator )
	if !self.CanUse then return end
	if self:CheckRelationships(activator) == "friend" and activator:IsPlayer() then
		self.IsFollowingPlayer = !self.IsFollowingPlayer
		if !IsValid(self.FollowingPlayer) then
			self.FollowingPlayer = activator
		else
			self.FollowingPlayer = nil
		end
		self.CanUse = false
		timer.Simple( 1, function()
			if IsValid(self) then
				self.CanUse = true
			end
		end )
	end
end

local thingstoavoid = {
	["prop_physics"] = true,
	["prop_ragdoll"] = true
}

function ENT:OnContact( ent ) -- When we touch someBODY
	if ent == game.GetWorld() then if self.FlyingDead then self.AlternateLanded = true end return "no" end
	if (ent.IsVJBaseSNPC == true or ent.CPTBase_NPC == true or ent.IsSLVBaseNPC == true or ent:GetNWBool( "bZelusSNPC" ) == true) or (ent:IsNPC() && ent:GetClass() != "npc_bullseye" && ent:Health() > 0 ) or (ent:IsPlayer() and ent:Alive()) or ((ent:IsNextBot()) and ent != self ) then
		local d = ent:GetPos()-self:GetPos()
		ent:SetVelocity(d*5)
	end
	if (ent:GetClass() == "prop_door_rotating" or ent:GetClass() == "func_door" or ent:GetClass() == "func_door_rotating" ) then
		ent:Fire( "Open" )
	end
	if (thingstoavoid[ent:GetClass()]) then
		local p = ent:GetPhysicsObject()
		if IsValid(p) then
			p:Wake()
			local d = ent:GetPos()-self:GetPos()
			p:SetVelocity(d*5)
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
	end
end

function ENT:OnInjured(dmg)
	local rel = self:CheckRelationships(dmg:GetAttacker())
	local ht = self:Health()
	if rel == "friend" and self.BeenInjured then dmg:ScaleDamage(0) return end
	if (ht) - math.abs(dmg:GetDamage()) < 1 then return end
	if dmg:GetDamage() < 1 then return end
	ParticleEffect( "halo_reach_blood_impact_grunt", dmg:GetDamagePosition(), Angle(0,0,0), self )
	if !IsValid(self.Enemy) then
		if self:CheckRelationships(dmg:GetAttacker()) == "foe" then
			self:Speak("OnSurprise")
			self:SetEnemy(dmg:GetAttacker())
		end
	else
		if self.NPSound < CurTime() then
			if dmg:GetDamage() > 10 then
				self:Speak("OnHurt")
			else
				self:Speak("OnHurtLarge")
			end
			self.NPSound = CurTime()+math.random(2,5)
		end
		if self:CheckRelationships(dmg:GetAttacker()) == "friend" then
			timer.Simple( math.random(2,3), function()
				if IsValid(self) then
					--self:Speak("HurtFriend")
				end
			end )
		end
	end
end

ENT.Variations = {
	[ACT_FLINCH_CHEST] = {["Back"] = "flinch_back_chest", ["Front"] = "flinch_front_chest"},
	[ACT_FLINCH_STOMACH] = {["Back"] = "flinch_back_gut", ["Front"] = "flinch_front_gut"}
}

function ENT:DoGestureSeq(seq)
	local an = seq
	if isstring(seq) then
		local a,le = self:LookupSequence(seq)
		an = a
	end
	local gest = self:AddGestureSequence(an)
	self:SetLayerPriority(gest,1)
	self:SetLayerPlaybackRate(gest,1)
	self:SetLayerCycle(gest,0)
end

ENT.BackpackHealth = 50

function ENT:OnTraceAttack( info, dir, trace )
	--print(trace.HitGroup)
	if trace.HitGroup == 2 and math.random(1,2) == 1 then
		self.BackpackHealth = self.BackpackHealth-math.abs(info:GetDamage())
		if self.BackpackHealth < 0 then
			self:SetBodygroup(2,1)
			local prop = ents.Create( "prop_physics" )
			prop:SetModel( self.BackpackModel )
			prop:SetPos(self:GetAttachment(self:LookupAttachment("methane_fx")).Pos)
			prop:Spawn()
			if self:Health() > 0 then
				hook.Call( "OnNPCKilled", GAMEMODE, self, info:GetAttacker(), info:GetInflictor() )
			end
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
			local wep = ents.Create(self.Weapon:GetClass())
			wep:SetPos(self.Weapon:GetPos())
			wep:SetAngles(self.Weapon:GetAngles())
			wep:Spawn()
			self.Weapon:Remove()
			if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
				timer.Simple( 60, function()
					if IsValid(wep) then
						wep:Remove()
					end
				end)
			end
			self.KilledDmgInfo = info
			self.BehaveThread = nil
			local ragdoll = self:CreateRagdoll(info)
			ragdoll:EmitSound("halo_reach/characters/grunt/grunt_backpack_steam/grunt_backpack_steam"..math.random(1,3)..".ogg",100)
			ParticleEffectAttach("iv04_halo_reach_grunt_methane_leak_violent",PATTACH_POINT_FOLLOW,ragdoll,ragdoll:LookupAttachment("methane_fx"))
			for i = 1, 25 do
				timer.Simple( 0.1*i, function()
					if IsValid(ragdoll) then
						local top = ragdoll:GetPhysicsObjectNum( 0 ) -- We can flyyyyyy
						local ang = ragdoll:GetAttachment(ragdoll:LookupAttachment("methane_fx")).Ang
						top:ApplyForceCenter( Vector( 0, 0, 100000 )+(((ang):Forward())*100000)+(ang:Right()*math.random(100000,-100000)) )
					end
				end )
			end
			timer.Simple( 5, function()
				if IsValid(ragdoll) then
					ragdoll:StopParticles()
				end
			end )
			if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
				timer.Simple( 60, function()
					if IsValid(prop) then
						prop:Remove()
					end
				end)
			end
		end
	elseif trace.HitGroup == 1 then
		if self.HasHelmet then
			self:SetBodygroup(4,1)
			local prop = ents.Create( "prop_physics" )
			prop:SetModel( self.HelmetModel )
			prop:SetPos(info:GetDamagePosition())
			prop:SetAngles(Angle(0,self:GetAngles().y,0))
			prop:Spawn()
			self.HasHelmet = false
			if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
				timer.Simple( 60, function()
					if IsValid(prop) then
						prop:Remove()
					end
				end)
			end
		else
			info:ScaleDamage(3)
		end
	end
	if self:Health() - info:GetDamage() < 1 then self.DeathHitGroup = trace.HitGroup return end
	local hg = trace.HitGroup
	if !self.IsInVehicle and self.FlinchAnims[hg] and !self.DoneFlinch and math.random(100) < self.FlinchChance and info:GetDamage() > self.FlinchDamage then
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
	end
end

function ENT:LocalAllies()
	local allies = {}
	for k, v in pairs(ents.FindInSphere(self:GetPos(),400)) do
		if v != self and self:CheckRelationships(v) == "friend" and v:IsNextBot() then
			allies[#allies+1] = v
		end
	end
	return allies
end

function ENT:DoCustomIdle()
	if self.IsControlled then return end
	if self.IsFollowingPlayer and IsValid(self.FollowingPlayer) then
		local dist = self:GetRangeSquaredTo(self.FollowingPlayer)
		if dist > 300^2 then
			local goal = self.FollowingPlayer:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 300
			local navs = navmesh.Find(goal,256,100,20)
			local nav = navs[math.random(#navs)]
			local pos = goal
			if nav then pos = nav:GetRandomPoint() end
			self:WanderToPosition( (pos), self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
		else
			for i = 1, 3 do
				timer.Simple( 0.7*i, function()
					if IsValid(self) and !IsValid(self.Enemy) then
						self:SearchEnemy()
					end
				end )
				if !IsValid(self.Enemy) then
					coroutine.wait(0.7)
				end
			end
		end
	else
		if self.Alerted then
			timer.Simple( 15, function()
				if IsValid(self) and !IsValid(self.Enemy) then
					self.Alerted = false
					self.SpokeSearch = false
				end
			end )
			if !self.SpokeSearch then
				self:Speak("OnInvestigate")
				for id, v in ipairs(self:LocalAllies()) do
					if !v.SpokeSearch then
						v.SpokeSearch = true
						v.NeedsToReport = true
					end
				end
			end
			self:WanderToPosition( ((self.LastSeenEnemyPos or self:GetPos()) + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 200), self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
			coroutine.wait(1)
		else
			if math.random(1,3) == 1 then
				self:WanderToPosition( ((self:GetPos()) + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 200), self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
			else
				for i = 1, 3 do
					timer.Simple( 0.7*i, function()
						if IsValid(self) and !IsValid(self.Enemy) then
							self:SearchEnemy()
						end
					end )
					if !IsValid(self.Enemy) then
						coroutine.wait(0.7)
					end
				end
			end
			if !self.SpokeIdle then
				self:Speak("OnIdle")
				self.SpokeIdle = true
				timer.Simple( math.random(45,60), function()
					if IsValid(self) then
						self.SpokeIdle = false
					end
				end )
			end
		end
	end
	--self:WanderToPosition( (self:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * self.WanderDistance), self.WanderAnim[math.random(1,#self.WanderAnim)], self.MoveSpeed )
end

function ENT:NearbyReply( quote, dist, tim )
	tim = tim or math.random(2,4)
	dist = dist or 500
	for k, v in pairs(ents.FindInSphere(self:GetPos(),dist)) do
		if v != self and v.Speak and self:CheckRelationships(v) == "friend" then
			timer.Simple( tim, function()
				if IsValid(v) then
					v:Speak(quote)
				end
			end )
			break
		end
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
		self:MoveToPosition( area:GetRandomPoint(), ACT_RUN_AGITATED, self.MoveSpeed*(6) )
		timer.Simple( 5, function()
			if IsValid(self) then
				self.Hiding = false
			end
		end )
	end
	if !self.Hiding then
		local nav = table.Random(navs)
		self:MoveToPosition( nav:GetRandomPoint(), ACT_RUN_AGITATED,self.MoveSpeed*(6) )
	end
	self:Speak("OnCower")
end

function ENT:OnOtherKilled( victim, info )
	if victim == self then return end
	if self:Health() < 1 then return end
	local rel = self:CheckRelationships(victim)
	if rel == "foe" and victim == self.Enemy then
		if !victim.BeenNoticed then
			victim.BeenNoticed = true
			if victim:IsPlayer() then
				self:NearbyReply("OnKillPlayer")
			end
		end
		local found = false
		for ent, bool in pairs(self.RegisteredTargets) do
			if IsValid(ent)and ent != victim and ent:Health() > 0 then
				self:SetEnemy(ent)
				found = true
				break
			end
		end
		if !found then
			if math.random(1,3) == 1 then
				if math.random(1,2) == 1 then
					self:Speak("OnTaunt")
				else
					self:Speak("OnVictory")
				end
				local func = function()
					--self:PlaySequenceAndWait("Celebrate")
					self:WanderToPosition( self.LastSeenEnemyPos, self.RunAnim[math.random(#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
				end
				table.insert(self.StuffToRunInCoroutine,func)
			end
		end
	elseif rel == "friend" then
		--print(victim.IsElite,victim.IsLeader,victim.IsUltra)
		--print(victim.CovRank,self.CovRank)
		if self.SawAllyDie and !self.SawAlliesDie then self.SawAlliesDie = true end
		if !self.SawAllyDie then self.SawAllyDie = true end
		if ( !self.Spooked and !self.Kamikaze ) and ( ( victim.CovRank and victim.CovRank > self.CovRank ) or self.SawAlliesDie or ( victim.IsElite or victim.IsBrute ) ) then
			local r1 = math.random(100)
			local r2 = self.CovRank*20
			if self.SawAlliesDie then
				self.SawAllyDie = false
				self.SawAlliesDie = false
			end
			--print(r1,r2)
			if r1 <= r2 then
				self.Kamikaze = true
				self:Speak("OnKamikaze")
			else
				self:Speak("OnFlee")
				self.Spooked = true
				timer.Simple( math.random(5,10), function()
					if IsValid(self) then
						self.Spooked = false
					end
				end )
				local func = function()
					while (self.Spooked) do
						self:Flee()
						coroutine.wait(1)
					end
				end
				table.insert(self.StuffToRunInCoroutine,func)
				self:ResetAI()
			end
		else
			if info:GetAttacker():IsPlayer() then
				--self:Speak("FriendKilledByPlayer")
			else
				if ( info:GetAttacker():IsNPC() and info:GetAttacker().IsVJBaseSNPC and string.StartWith(info:GetAttacker():GetClass(), "npc_vj_flood") ) then	
					--self:Speak("FriendKilledByFlood")
				elseif info:GetAttacker().timeDeath then
					--self:Speak("FriendKilledBySentinel")
				else
					--self:Speak("FriendDied")
				end
			end
		
		end
		
	end
end

function ENT:RunAround()	
	local r = math.random(1,2)
	if r == 2 then r = -1 end
	local t = CurTime()+math.random(2,3)
	local eff = EffectData()
	eff:SetOrigin(self.Latcher:GetPos())
	util.Effect("BloodImpact",eff)
	local dir = self:GetForward()+self:GetRight()*r
	local goal = self:GetPos()+(dir*900)
	self.loco:SetDesiredSpeed(self.MoveSpeed*self.MoveSpeedMultiplier)
	while (self:Health() > 0 ) do
		if self:GetSequence() != self:LookupSequence("stunned_run") then
			self:SetSequence("stunned_run")
		end
		if t < CurTime() then
			local tim = math.random(2,4)
			t = CurTime()+tim
			r = math.random(1,2)
			if r == 2 then r = -1 end
			local eff = EffectData()
			eff:SetOrigin(self.Latcher:GetPos())
			util.Effect("BloodImpact",eff)
			dir = self:GetForward()+self:GetRight()*r
			goal = self:GetPos()+(dir*900)
			self:TakeDamage(20,self,self)
			timer.Simple( tim/2, function()
				if IsValid(self) then
					local eff = EffectData()
					eff:SetOrigin(self.Latcher:GetPos())
					util.Effect("BloodImpact",eff)
				end
			end )
		end
		self.loco:Approach(goal,1)
		self.loco:FaceTowards(goal)
		coroutine.wait(0.01)
	end
end

function ENT:OnLostSeenEnemy(ent)
	if self.Enemy == ent then
		self.LastSeenEnemyPos = ent:GetPos()
	end
end

function ENT:TurnTo(dif,calm)
	calm = calm or false
	local seq
	local e
	if dif < 0 then
		e = 1
		if calm then
			seq = self.CalmTurnLeftAnim
		else
			seq = self.TurnLeftAnim
		end
	else
		e = -1
		if calm then
			seq = self.CalmTurnRightAnim
		else
			seq = self.TurnRightAnim
		end
	end
	local id, len = self:LookupSequence(seq)
	local t
	if math.abs(dif) > 140 then
		t = 1
	else
		t = math.abs(dif)/140
	end
	self:SetSequence(seq)
	self:ResetSequenceInfo()
	self:SetCycle( 0 )
	self:SetPlaybackRate( 1 )
	local z = len*t
	for i = 1, 140*t do
		timer.Simple( (0.001*i)+z, function()
			if IsValid(self) then
				self:SetAngles(self:GetAngles()+Angle(0,e,0))
			end
		end )
	end
	coroutine.wait(z)
	self:StartActivity(self.IdleAnim[math.random(#self.IdleAnim)])
end

function ENT:GoCrazyAalALalALa(ent) -- A reference to a nice memory
	self.InKamikaze = true
	self.Weapon:SetNoDraw(true)
	timer.Simple( 0.5, function()
		if IsValid(self) then
			local grenade1 = ents.Create("astw2_haloreach_plasma_thrown")
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
			self.Grenade1 = grenade1
			local grenade2 = ents.Create("astw2_haloreach_plasma_thrown")
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
			self.Grenade2 = grenade2
		end
	end )
	self:PlaySequenceAndWait("Kamikaze_Start")
end

function ENT:CustomBehaviour(ent)
	if !IsValid(ent) then return end
	local should, dif = self:ShouldFace(ent)
	if should then
		self:TurnTo(dif)
		coroutine.wait(0.2)
		return
	end
	if !ent:IsOnGround() then return self:StartShooting(ent) end
	if self.Kamikaze then
		if !self.InKamikaze then
			return self:GoCrazyAalALalALa(ent) -- Funny reference
		else
			self:Speak("OnCharge")
			return self:StartChasing(ent,ACT_RUN_AGITATED,self.MoveSpeed*7.5,true,true)
		end
	end
	local los, obstr = self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter(),{self,ent,self:GetOwner()})
	local dist = self:GetRangeSquaredTo(ent:GetPos())
	if !self.IsSniper and ( ( ent.GetEnemy and ent:GetEnemy() == self ) or BeingStaredAt(self,ent,60) ) and los then
		if math.random(1,100) <= self.DodgeChance and !self.Dodged then
			local anim = seqs[math.random(1,2)]
			self:Speak("OnDodge")
			self:Dodge(anim)
		end
	end
	if los then
		if IsValid(ent) then
			self.LastSeenEnemyPos = ent:GetPos()
		end
		if math.random(1,10) == 1 and !self.ThrowedGrenade then
			return self:ThrowAGrenade(ent)
		end
		self:StartShooting(ent)
	elseif !los then
		if IsValid(obstr) then
			local ros = self:CheckRelationships(obstr)
			if ros == "foe" then
				self:SetEnemy(obstr)
			end
		else
			--self.LastTarget = ent
			--self:SetEnemy(nil)
			--self.Alerted = true
			self:StartChasing( ent, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
		end
	end
end

function ENT:GetNear(ent)
	local t = math.Rand(0,1)+(self.ActionTime-(self.Difficulty*0.6))
	local stop = false
	local shoot = false
	local move = true
	timer.Simple( t, function()
		if IsValid(self) then
			stop = true
		end
	end )
	timer.Simple( t-math.Rand(0,1), function()
		if IsValid(self) then
			move = false
		end
	end )
	timer.Simple( t/2, function()
		if IsValid(self) then
			shoot = true
			dir = dire
		end
	end )
	self:StartMovingAnimations(self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*2.5)
	local r = math.random(1,3)
	local dir
	local dire
	if r == 1 then
		dir = self:GetForward()*1
		dire = self:GetRight()*math.random(1,-1)
	elseif r == 2 then
		dir = self:GetRight()*1
		dire = self:GetForward()*math.random(1,-1)
	elseif r == 3 then
		dir = self:GetRight()*-1
		dire = self:GetForward()*math.random(1,-1)
	end
	while (!stop) do
		if IsValid(ent) then
			if shoot then
				shoot = false
				self:ShootBullet(ent)
			end
			self.loco:FaceTowards(ent:GetPos())
			if move then
				self.loco:Approach(self:GetPos()+dir,1)
			else
				self:StartActivity(self.IdleAnim[math.random(#self.IdleAnim)])
			end
			coroutine.wait(0.01)
		else
			stop = true
		end
	end
end

function ENT:ThrowAGrenade(ent)
	ent = ent or self.Enemy
	if !IsValid(ent) then return end
	local pos = ent:GetPos()
	local grenade
	timer.Simple( 0.8, function()
		if IsValid(self) then
			grenade = ents.Create("astw2_haloreach_plasma_thrown")
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
	timer.Simple( 1, function()
		if IsValid(self) and IsValid(grenade) then
			grenade:SetMoveType( MOVETYPE_VPHYSICS )
			grenade:SetParent( nil )
			grenade:SetPos(self:GetAttachment(2).Pos)
			local prop = grenade:GetPhysicsObject()
			if IsValid(prop) then
				prop:Wake()
				prop:EnableGravity(true)
				prop:SetVelocity( (self:GetAimVector() * 500)+(self:GetUp()*(math.random(10,50)*5)) )
			end
		end
	end )
	self.ThrowedGrenade = true
	timer.Simple( math.random(10,15), function()
		if IsValid(self) then
			self.ThrowedGrenade = false
		end
	end )
	self:Speak("OnGrenadeThrow")
	self:PlaySequenceAndWait("throw_grenade")
end

function ENT:StartShooting(ent)
	ent = ent or self.Enemy or self:GetEnemy()
	if !IsValid(ent) then return end
	local crouch = math.random(1,2)
	if crouch == 1 then
		if math.random(1,2) == 1 then
			self:MoveToPosition(self:GetPos()+Vector(math.random(256,-256),math.random(256,-256),0),self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier)
		end
		local should, dif = self:ShouldFace(ent)
		if should then
			self:TurnTo(dif)
			coroutine.wait(0.2)
		end
		self:StartActivity( self.IdleAnim[math.random(#self.IdleAnim)] )
		timer.Simple( 2, function()
			if IsValid(self) then
				self:ShootBullet(ent)
			end
		end )
		coroutine.wait(2)
	else
		self:GetNear(ent)
	end
end

function ENT:RunToPosition( pos, anim, speed )
	if !util.IsInWorld( pos ) then return "Tried to move out of the world!" end
	self:StartActivity( anim )			-- Move animation
	self.loco:SetDesiredSpeed( speed )		-- Move speed
	self.loco:SetAcceleration( speed+speed )
	self:MoveToPos( pos )
end	

function ENT:ShootBullet(ent)
	ent = ent or self.Enemy
	if !IsValid(ent) or self.Spooked or self.Kamikaze then return end
	if !self.ShootQuote and math.random(1,4) == 1 then
		self.ShootQuote = true
		timer.Simple( 5, function()
			if IsValid(self) then
				self.ShootQuote = false
			end
		end )
		self:Speak("OnDamagedFoe")
	end
	self:FireWep()
	--self:CustomBehaviour(ent)
end

function ENT:FireWep()
	for i = 1, self:GetCurrentWeaponProficiency()+2 do
		timer.Simple( math.random(0.2,0.4)*i, function()
			if IsValid(self) then
				self:DoGestureSeq(self.FireAnim)
				if IsValid(self.Weapon) then
					self.Weapon:AI_PrimaryAttack()
				end
			end
		end )
	end
end

function ENT:Dodge( name, speed )

	self.Dodged = true
	
	timer.Simple( math.random(3,5), function()
		if IsValid(self) then
			self.Dodged = false
		end
	end )

	self.loco:SetDesiredSpeed( self.MoveSpeed*self.MoveSpeedMultiplier )
	local len = self:SetSequence( name )
	self:StartActivity(self:GetSequenceActivity(self:LookupSequence(name)))
	speed = speed or 1

	self:ResetSequenceInfo()
	self:SetCycle( 0 )
	self:SetPlaybackRate( speed )

	local dir = -1
	
	if name == "evade_right" then dir = 1 end
	
	for i = 1, len*20 do
		timer.Simple( i*0.05, function()
			if IsValid(self) then
				self.loco:Approach(self:GetPos()+self:GetRight()*dir,1)
			end
		end )
	end

	coroutine.wait( len / speed )

end

function ENT:GetShootPos()
	--[[if IsValid(self:GetActiveWeapon()) then
		return self:GetActiveWeapon():GetAttachment(self:GetActiveWeapon():LookupAttachment("muzzle")).Pos
	end]]
	return self:WorldSpaceCenter()
end

function ENT:CanSee(pos,ent)
	local tbl = {
		start = self:GetShootPos(),
		endpos = pos,
		filter = {self,ent}
	}
	local tr = util.TraceHull( tbl )
	return !tr.Hit
end

function ENT:HandleAnimEvent(event,eventTime,cycle,type,options)
	--[[print(event)
	print(eventTime)
	print(cycle)
	print(type)
	print(options)]]
	--[[if options == self.ShootEvent then
		self:ShootBullet(self.Enemy)
	end]]
end

local se = {
	[1] = "Step Right",
	[2] = "Step Left"
}

function ENT:DoMeleeDamage()
	local damage = self.MeleeDamage
	for	k,v in pairs(ents.FindInCone(self:GetPos()+self:OBBCenter(), self:GetForward(), self.MeleeRange,  math.cos( math.rad( self.MeleeConeAngle ) ))) do
		if v != self and self:CheckRelationships(v) != "friend" then
			v:TakeDamage( damage, self, self )
			--v:EmitSound( self.OnMeleeSoundTbl[math.random(1,#self.OnMeleeSoundTbl)] )
			if v:IsPlayer() then
				v:ViewPunch( self.ViewPunchPlayers )
			end
			if IsValid(v:GetPhysicsObject()) then
				v:GetPhysicsObject():ApplyForceCenter( v:GetPhysicsObject():GetPos() +((v:GetPhysicsObject():GetPos()-self:GetPos()):GetNormalized())*self.MeleeForce )
			end
		end
	end
end

function ENT:Melee()
	--self:Speak("Melee")
	self.Grenade1.kt = CurTime()+0.25
	self.Grenade2.kt = CurTime()+0.25
	coroutine.wait( 0.5 )
	self:TakeDamage( self:Health(), self, self )
end

function ENT:StartChasing( ent, anim, speed, los, kam )
	self:StartActivity( anim )
	self.loco:SetDesiredSpeed( speed )		-- Move speed
	self:ChaseEnt(ent,los,kam)
end

ENT.NextUpdateT = CurTime()

ENT.UpdateDelay = 0.5

function ENT:ChaseEnt(ent,los,kamikaze)
	local path = Path( "Follow" )
	path:SetMinLookAheadDistance( self.PathMinLookAheadDistance )
	path:SetGoalTolerance( self.PathGoalTolerance )
	if !IsValid(ent) then return end
	if los and !kamikaze then
		local goal = ent:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 300
		local navs = navmesh.Find(goal,512,100,20)
		local nav = navs[math.random(#navs)]
		local pos = goal
		if nav then pos = nav:GetRandomPoint() end
		path:Compute( self, pos )
	else
		path:Compute( self, ent:GetPos() )
	end
	if ( !path:IsValid() ) then return "Failed" end
	local saw = false
	while ( path:IsValid() and IsValid(ent) ) do
		if !self.DoingLose then
			self.DoingLose = true
			timer.Simple( 15, function()
				if !IsValid(self) then return end
				self.DoingLose = false
				if !IsValid(ent) then return end
				if !saw and !self:CanSee( ent:GetPos()+ent:OBBCenter(), ent ) then
					self:OnLoseEnemy()
					self:SetEnemy(nil)
					--print(self.State)
					return "LostLOS"
				end
			end)
		end
		if self.NextUpdateT < CurTime() then
			self.NextUpdateT = CurTime()+0.5
			local cansee = self:CanSee( ent:GetPos() + ent:OBBCenter(), ent )
			saw = cansee
			local dist = self:GetPos():DistToSqr(ent:GetPos())
			if kamikaze and dist < self.MeleeDistance^2 then
				return self:Melee()
			elseif !kamikaze and cansee and !los then
				return "GotLOS"
			elseif dist > self.LoseEnemyDistance^2 then
				self:OnLoseEnemy()
				self:SetEnemy(nil)
				return "Lost enemy"
			elseif !kamikaze and dist < 400^2 and cansee and los then
				return "Got range"
			end
			if cansee then
				self.LastSeenEnemyPos = ent:GetPos()
			end
		end
		if path:GetAge() > self.RebuildPathTime and (!los or kamikaze) then
			if self.OnRebuildPath == true then
				self:OnRebuiltPath()
			end	
			if IsValid(ent) then
				path:Compute( self, ent:GetPos() )
			end
		end
		path:Update( self )
		if self.loco:IsStuck() then
			if self.CustomOnStuck == true then self:CustomStuck() return "CustomOnStuck" end
			self:OnStuck()
			return "Stuck"
		end
		coroutine.yield()
	end
	return "ok"
end

function ENT:OnHaveEnemy(ent)
	local new = true
	if isvector(self.LastSeenEnemyPos) or self.LastTarget then
		new = false
	end
	local func = function()
		if new then
			self:Speak("OnAlertMoreFoes")
		else
			if self.LastTarget == ent then
				self:Speak("OnAlert")
			else
				--self:Speak("SightedEnemyRecentCombat")
			end
		end
		if !self.Surprised then 
			self.Surprised = true
			self:PlaySequenceAndWait(self.SurpriseAnim)
			timer.Simple(math.random(15,20), function()
				if IsValid(self) then
					self.Surprised = false
				end
			end )
		end
	end
	table.insert(self.StuffToRunInCoroutine,func)
	self.LastSeenEnemyPos = ent:GetPos()
	self:AlertAllies(ent)
end

function ENT:AlertAllies(ent) -- We find allies in sphere and we alert them
	for k, v in pairs(ents.FindInSphere( self:GetPos(), self.AttractAlliesRange ) ) do
		if isfunction(v.SetEnemy) and self:CheckRelationships(v) == "friend" and v != self then
			local doset = false
			if !IsValid(v.Enemy) then
				doset = true
			end
			v:SetEnemy(ent)
			if doset then
				if v.OnHaveEnemy then
					v:OnHaveEnemy(ent)
				end
			else
				v.LastSeenEnemyPos = ent:GetPos()
			end
			--print("Alerted"..v:GetClass().."whose's index is"..v:EntIndex().."and its target is"..ent:GetClass().."")
		end
	end
end

function ENT:OnKilled( dmginfo ) -- When killed
	if self.BackpackHealth < 0 then return end
	hook.Call( "OnNPCKilled", GAMEMODE, self, dmginfo:GetAttacker(), dmginfo:GetInflictor() )
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
	self.KilledDmgInfo = dmginfo
	self.BehaveThread = nil
	self.DrownThread = coroutine.create( function() self:DoKilledAnim() end )
	coroutine.resume( self.DrownThread )
end

function ENT:DetermineDeathAnim( info )
	local origin = info:GetAttacker():GetPos()
	local damagepos = info:GetDamagePosition()
	local ang = (damagepos-origin):Angle()
	local y = ang.y - self:GetAngles().y
	if y < 0 then y = y + 360 end
	--print(y)
	local anim
	if self.DeathHitGroup then
		if self.DeathHitGroup == 1 then
			anim = "Die_Front_Head_"..math.random(1,2)..""
		else
			if y <= 135 and y > 45 then -- Right
				anim = "Die_Right_Gut"
			elseif y < 225 and y > 135 then -- Front
				anim = "Die_Front_Gut_"..math.random(1,3)..""
			elseif y >= 225 and y < 315 then -- Left
				anim = "Die_Left_Gut"
			elseif y <= 45 or y >= 315 then -- Back
				anim = "Die_Back_Gut"
			end
		end
	else
		return true
	end
	return anim
end

function ENT:DoKilledAnim()
	if self.KilledDmgInfo:GetDamageType() != DMG_BLAST then
		if self.KilledDmgInfo:GetDamage() <= 150 then
			self:Speak("OnDeath")
			local anim = self:DetermineDeathAnim(self.KilledDmgInfo)
			if anim == true then 
				local wep = ents.Create(self.Weapon:GetClass())
				wep:SetPos(self.Weapon:GetPos())
				wep:SetAngles(self.Weapon:GetAngles())
				wep:Spawn()
				self.Weapon:Remove()
				self:CreateRagdoll(DamageInfo())
				if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
					timer.Simple( 60, function()
						if IsValid(wep) then
							wep:Remove()
						end
					end)
				end
				return
			end
			local seq, len = self:LookupSequence(anim)
			timer.Simple( len, function()
				if IsValid(self) then
					local wep = ents.Create(self.Weapon:GetClass())
					wep:SetPos(self.Weapon:GetPos())
					wep:SetAngles(self.Weapon:GetAngles())
					wep:Spawn()
					self.Weapon:Remove()
					if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
						timer.Simple( 60, function()
							if IsValid(wep) then
								wep:Remove()
							end
						end)
					end
					self:CreateRagdoll(DamageInfo())
				end
			end )
			self:PlaySequenceAndPWait(seq, 1, self:GetPos())
		else
			self:Speak("OnDeathPainful")
			local wep = ents.Create(self.Weapon:GetClass())
			wep:SetPos(self.Weapon:GetPos())
			wep:SetAngles(self.Weapon:GetAngles())
			wep:Spawn()
			self.Weapon:Remove()
			if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
				timer.Simple( 60, function()
					if IsValid(wep) then
						wep:Remove()
					end
				end)
			end
			rag = self:CreateRagdoll(self.KilledDmgInfo)
		end
	else
		self:Speak("OnDeathThrown")
		self.FlyingDead = true
		local dir = ((self:GetPos()-self.KilledDmgInfo:GetDamagePosition())):GetNormalized()
		dir = dir+self:GetUp()*2
		local force = self.KilledDmgInfo:GetDamage()*1.5
		self:SetAngles(Angle(0,dir:Angle().y,0))
		self.loco:Jump()
		self.loco:SetVelocity(dir*force)
		coroutine.wait(0.5)
		while (!self.HasLanded) do
			if self.AlternateLanded then
				local rag
				if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
					timer.Simple( 60, function()
						if IsValid(rag) then
							rag:Remove()
						end
					end)
				end
				rag = self:CreateRagdoll(DamageInfo())
				return
			end
			coroutine.wait(0.01)
		end
		self:PlaySequenceAndWait("Dead_Land")
		local wep = ents.Create(self.Weapon:GetClass())
		wep:SetPos(self.Weapon:GetPos())
		wep:SetAngles(self.Weapon:GetAngles())
		wep:Spawn()
		self.Weapon:Remove()
		if GetConVar( "ai_serverragdolls" ):GetInt() == 0 then
			timer.Simple( 60, function()
				if IsValid(wep) then
					wep:Remove()
				end
			end)
		end
		rag = self:CreateRagdoll(DamageInfo())
	end
end

-- Basic ASTW 2 compatibility

function ENT:IsSprinting()
	return self.Sprinting
end

function ENT:Crouching()
	return self.IsCrouching
end

function ENT:GetAmmoCount()
	return self.CurMag
end

function ENT:SetAmmo(ammo)
	self.CurMag = ammo
end

function ENT:DoAnimationEvent(a)
	-- I don't care
	if a == 1689 then
		local wep = self.Weapon
		if CLIENT then wep = self:GetNWEntity("wep") end
		local time = 2
		timer.Simple( time, function()
			if IsValid(self) and IsValid(wep) then
				self:SetAmmo(wep:GetMaxClip1())
				wep:SetClip1(wep:GetMaxClip1())
			end
		end )
		if !CLIENT then
			--local set = self.AnimSets[self.Weapon:GetClass()] or self.AnimSets["Rifle"]
			local a,len = self:LookupSequence("pistol_reload")
			local func = function()
				self:PlaySequenceAndWait(a)
			end
			table.insert(self.StuffToRunInCoroutine,func)
			self:ResetAI()
		end
	end
end

function ENT:SetViewPunchAngles(no)
	-- No
end

function ENT:GetCurrentWeaponProficiency()
	return self.Difficulty*2 or 1
end

local moves = {
	[ACT_RUN_AGITATED] = true,
	[ACT_WALK_CROUCH_AIM] = true,
	[ACT_RUN] = true,
	[ACT_RUN_PISTOL] = true,
	[ACT_RUN_RIFLE] = true
}


function ENT:FootstepSound()
	local character = self.Voices[self.VoiceType]
	if character["OnStep"] and istable(character["OnStep"]) then
		local sound = table.Random(character["OnStep"])
		self:EmitSound(sound,65)
	end
end

function ENT:BodyUpdate()
	local act = self:GetActivity()
	if moves[act] and self:Health() > 0 then
		self:BodyMoveXY()
	end
	if !self.loco:GetVelocity():IsZero() and self.loco:IsOnGround() then
		if !self.LMove then
			self.LMove = CurTime()+0.25
		else
			if self.LMove < CurTime() then
				self:FootstepSound()
				self.LMove = CurTime()+0.25
			end
		end
		local goal = self:GetPos()+self.loco:GetVelocity()
		local y = (goal-self:GetPos()):Angle().y
		local di = math.AngleDifference(self:GetAngles().y,y)
		self:SetPoseParameter("move_yaw",di)
		self:SetPoseParameter("walk_yaw",di)
	else
		self.LMove = nil
	end
	local look = false
	local goal
	local y
	local di = 0
	local p
	local dip = 0
	if IsValid(self.Enemy) then
		goal = self.Enemy:WorldSpaceCenter()
		local an = (goal-self:WorldSpaceCenter()):Angle()
		y = an.y
		di = math.AngleDifference(self:GetAngles().y,y)
		p = an.p
		dip = math.AngleDifference(self:GetAngles().p,p)
	end
	self:SetPoseParameter("aim_yaw",-di)
	self:SetPoseParameter("aim_pitch",-dip)
	local goal = self:GetPos()+self.loco:GetVelocity()
	local y = (goal-self:GetPos()):Angle().y
	local di = math.AngleDifference(self:GetAngles().y,y)
	self:SetPoseParameter("move_yaw",di)
	self:FrameAdvance()
end