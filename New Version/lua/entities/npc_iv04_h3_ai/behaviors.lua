AddCSLuaFile()



function ENT:SpartanInitialize()
end
function ENT:MarineInitialize()
end
function ENT:EliteInitialize()
end
function ENT:BruteInitialize()
	self:SetCollisionBounds(Vector(20,20,0),Vector(-20,-20,100))
	self.CanShootCrouch = false
	self:SetSkin(self.Rank)
	self.VoiceType = "Brute_"..math.random(3)..""
	self:SetBodygroup(7,math.random(1,-4))
	if self.Rank == 1 then
		if !self.IsCaptain then
			self:SetBodygroup(2,2)
			self:SetBodygroup(3,2)
		else
			self:SetBodygroup(2,3)
			self:SetBodygroup(3,3)
			self:SetBodygroup(4,3)
			self:SetBodygroup(5,1)
			self:SetBodygroup(6,1)
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
end
function ENT:MarineIdle()
end
function ENT:EliteIdle()
end
function ENT:BruteIdle()
	if self.IsInVehicle then return self:VehicleIdle() end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleIdle()
	end
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
	if self.IsFollowingPlayer then
		if self.FollowingPlayer:InVehicle() then
			local ent = self.FollowingPlayer:GetVehicle():GetParent()
			if IsValid(ent) and self.DriveThese[ent:GetModel()] and !self.SeenVehicles[ent] then
				self.SeenVehicles[ent] = true
				self.CountedVehicles = self.CountedVehicles+1
			end
		end
		local dist = self:GetRangeSquaredTo(self.FollowingPlayer)
		if dist > 300^2 then
			local goal = self.FollowingPlayer:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 300
			local navs = navmesh.Find(goal,256,100,20)
			local nav = navs[math.random(#navs)]
			local pos = goal
			if nav then pos = nav:GetRandomPoint() end
			self:WanderToPosition( (pos), self.RunCalmAnim[math.random(1,#self.RunCalmAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )	
		end
	end
	if math.random(1,2) == 1 then
		self.SpecificGoal = ((self:WorldSpaceCenter()+self:GetUp()*30)+(self:GetAngles()+Angle(0,math.random(-45,45),0)):Forward()*1)
		timer.Simple( math.random(2,3), function()
			if IsValid(self) then self.SpecificGoal = nil end
		end )
	end
	local seq = self.IdleCalmAnim[math.random(#self.IdleCalmAnim)]
	self:ResetSequence(seq)
	self:SearchEnemy()
	timer.Simple( self:SequenceDuration(seq)/2, function()
		if IsValid(self) then
			self:SearchEnemy()
		end
	end )
	coroutine.wait(self:SequenceDuration(seq))
	self:SearchEnemy()
end
function ENT:GruntIdle()
end
function ENT:JackalIdle()
end
function ENT:DroneIdle()
end
function ENT:HunterIdle()
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
end
function ENT:MarineThink()
end
function ENT:EliteThink()
end
function ENT:BruteThink()
end
function ENT:GruntThink()
end
function ENT:JackalThink()
end
function ENT:DroneThink()
end
function ENT:HunterThink()
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
end
function ENT:MarineBehavior(ent,range)
end
function ENT:EliteBehavior(ent,range)
end
function ENT:BruteBehavior(ent,range)
end
function ENT:GruntBehavior(ent,range)
end
function ENT:JackalBehavior(ent,range)
end
function ENT:DroneBehavior(ent,range)
end
function ENT:HunterBehavior(ent,range)
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