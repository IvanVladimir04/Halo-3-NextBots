AddCSLuaFile()

ENT.CountedVehicles = 0

ENT.SeenVehicles = {}

ENT.DriveThese = {
	--["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = true,
	--["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = true,
	--["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = true,
	["models/snowysnowtime/halo3/vehicles/warthogs/chain.mdl"] = true
}

ENT.PassengerSlots = {
	--["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = 3,
	--["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = 3,
	--["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = 3,
	["models/snowysnowtime/halo3/vehicles/warthogs/chain.mdl"] = 3
}

ENT.TurretTypes = {
	--["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = "MG",
	--["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = "Gauss",
	--["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = "Rocket",
	["models/snowysnowtime/halo3/vehicles/warthogs/chain.mdl"] = "MG"
}

ENT.TurretAttachments = {
	--["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = "turret",
	--["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = "turret_2",
	--["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = "turret_2",
	["models/snowysnowtime/halo3/vehicles/warthogs/chain.mdl"] = {
		["Driver"] = "h3_driver",
		["Gunner"] = "h3_gunner",
		["Passenger"] = "h3_passenger1"
	}
}

ENT.VehicleSlots = {
	--["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = {
	--	[1] = "Driver",
	--	[2] = "Gunner",
	--	[3] = "Passenger"
	--},
	--["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = {
	--	[1] = "Driver",
	--	[2] = "Gunner",
	--	[3] = "Passenger"
	--},
	--["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = {
	--	[1] = "Driver",
	--	[2] = "Gunner",
	--	[3] = "Passenger"
	--},
	["models/snowysnowtime/halo3/vehicles/warthogs/chain.mdl"] = {
		[1] = "Driver",
		[2] = "Passenger",
		[3] = "Gunner"
	}
}

function ENT:CanEnterAVehicle()
	if !self.AllowVehicleFunctions then return false end
	local ve
	local can = false
	for veh, bool in pairs(self.SeenVehicles) do
		if IsValid(veh) then
			if !veh.PassengerS then veh.PassengerS = {} end
			local total = 0
			for i = 1, #veh.PassengerS do
				local pas = veh.PassengerS[i]
				if IsValid(pas) or ( ( i == 1 and !IsValid(veh:GetDriver()) ) or ( IsValid(veh.pSeat[i-1]) and IsValid(veh.pSeat[i-1]:GetDriver()) ) ) then
					total = total+1
				end
			end
			if total < self.PassengerSlots[veh:GetModel()] then
				ve = veh
				can = true
				break
			end
		else
			self.SeenVehicles[veh] = nil
		end
	end
	return can, ve
end

--[[
NextBot [180][npc_iv04_h3_all_marine] 
Error: 
addons/simfphys-halo-ce-vehicles-redux-pre-release-private-betatest/lua/autorun/simf_redux_snow.lua:
2177:
 Tried to use a NULL entity!

]]

function ENT:VehicleIdle()
	self:SearchEnemy()
	if self.VehicleRole == "Gunner" then
		self:PlaySequenceAndWait(self.WarthogGunnerIdle)
	elseif self.VehicleRole == "Driver" then
		if self.IsFollowingPlayer then
			self:Drive(self.FollowingPlayer:GetPos()+self.FollowingPlayer:GetForward()*-400)
		else
			self:VehicleStop()
		end
		self:PlaySequenceAndWait(self.WarthogDriverIdle)
	elseif self.VehicleRole == "Passenger" then
		self:PlaySequenceAndWait(self.WarthogPassengerIdle)
	end
end

--[[ Stuff to make the vehicle move:
    veh:SetActive(true)
    veh:StartEngine()

    veh.PressedKeys["A"] = true/false
    veh.PressedKeys["S"] = true/false
    veh.PressedKeys["D"] = true/false
    veh.PressedKeys["W"] = true/false
	veh.PressedKeys["joystick_steer_left"] = true/false
	veh.PressedKeys["joystick_steer_right"] = true/false
	
	veh.PressedKeys["Space"] = false
   
    veh:PlayerSteerVehicle( self, left, right )
    self is the driver
    left, right are 0 or 1
    
    function ENT:GetInfoNum(no,yes)
        return 1
    end
]]

function ENT:AdjustKeys(ang)
	local veh = self.Vehicle
	local dif = math.AngleDifference(self:GetAngles().y,ang.y)
	local right = 0
	local left = 0
	if dif < 0 then dif = dif + 360 end
	--print(dif)
	self.NotLookingAtEnemy = true
	self.VehicleEyeAng = Angle(0,self:GetAngles().y,0)
	if ( dif > 60 and dif < 300 ) then
		if ( dif < 300 and dif > 180 ) then
			veh.PressedKeys["A"] = true
			veh.PressedKeys["D"] = false
			veh.PressedKeys["joystick_steer_right"] = false
			veh.PressedKeys["joystick_steer_left"] = true
			left = 1
			--print("left")
		else
			veh.PressedKeys["A"] = false
			veh.PressedKeys["D"] = true
			veh.PressedKeys["joystick_steer_right"] = true
			veh.PressedKeys["joystick_steer_left"] = false
			right = 1
			--print("right")
		end
		self.VehicleEyeAng = Angle(0,dif,0)
	else
		veh.PressedKeys["A"] = false
		veh.PressedKeys["D"] = false
		veh.PressedKeys["joystick_steer_right"] = false
		veh.PressedKeys["joystick_steer_left"] = false
	end
	if ( dif < 90 or dif > 270 ) then
		veh.PressedKeys["S"] = false
		veh.PressedKeys["W"] = true
		--print("back")
	else
		veh.PressedKeys["S"] = true
		veh.PressedKeys["W"] = false
		right = 0
		veh.PressedKeys["A"] = false
		veh.PressedKeys["D"] = false
		veh.PressedKeys["joystick_steer_right"] = false
		veh.PressedKeys["joystick_steer_left"] = false
		left = 0
		--print("front")
	end
	veh.PressedKeys["Space"] = false
   
    veh:PlayerSteerVehicle( self, left, right )
end

function ENT:Drive(goal,pathed,path)
	local pos = goal
	local stop = false
	local timed = false
	--debugoverlay.Sphere(goal,10,10,10)
	while (!stop) do
		if pathed then
			if !IsValid(path) then
				stop = true
			end
			pos = path:GetCurrentGoal().pos
			path:Draw()
		elseif !timed then
			timed = true
			timer.Simple( math.random(3,5), function()
				if IsValid(self) then
					stop = true
				end
			end )
		end
		local ang = (pos-self:GetPos()):GetNormalized():Angle()
		self:AdjustKeys(ang)
		coroutine.wait(0.3)
	end
	self:VehicleStop()
end

function ENT:VehicleStop()
	self.Vehicle.PressedKeys["Space"] = true
	self.Vehicle.PressedKeys["S"] = false
	self.Vehicle.PressedKeys["W"] = false
	self.Vehicle.PressedKeys["A"] = false
	self.Vehicle.PressedKeys["D"] = false
	self.Vehicle.PressedKeys["joystick_steer_right"] = false
	self.Vehicle.PressedKeys["joystick_steer_left"] = false
end

function ENT:VehicleBehavior(ent,dist)
	if self.VehicleRole == "Gunner" then
		if self.GunnerShoot and !self.Shot then
			self.Shot = true
			timer.Simple( math.random( 4,6 ), function()
				if IsValid(self) then
					self.Shot = false
				end
			end )
			if self.TurretType == "MG" then
				local del = 0.5
				for i = 1, math.random(30,40) do
					del = del-0.1
					if del < 0.1 then del = 0.1 end
					timer.Simple( i*del, function()
						if IsValid(self) and IsValid(self.Vehicle) then
							local bullet = {}
							bullet.Damage = 8
							local dir
							local origin = self.Vehicle:GetAttachment(self.Vehicle:LookupAttachment("muzzle")).Pos
							ParticleEffectAttach( "imp_halo_3_muzzle_warthog_chaingun", PATTACH_POINT_FOLLOW, self.Vehicle, 5 )
							self.Vehicle:EmitSound("hce_turret")
							--local bullet = {}
							bullet.Num 			= 2
							bullet.Spread 		= Vector(0.025,0.015,0.025)
							bullet.Tracer		= 1
							bullet.TracerName	= "effect_simfphys_halo_warthog_chaingun_tracer"
							bullet.Force		= 1
							--bullet.Damage		= 32
							bullet.HullSize		= 1
							bullet.Attacker 	= self
							bullet.Callback = function(att, tr, dmginfo)
								local effectdata = EffectData()
									effectdata:SetOrigin( tr.HitPos )
									util.Effect( "cball_bounce", effectdata, true, true )

								if tr.Entity ~= Entity(0) then
									if simfphys.IsCar( tr.Entity ) then
										local effectdata = EffectData()
											effectdata:SetOrigin( tr.HitPos + shootDirection * tr.Entity:BoundingRadius() )
											effectdata:SetNormal( shootDirection * 10 )
										util.Effect( "manhacksparks", effectdata, true, true )
									
										sound.Play( Sound( "doors/vent_open"..math.random(1,3)..".wav" ), tr.HitPos, 30)
									end
								end
							end
							
							local ens = ents.Create("prop_physics")
							ens:SetPos(origin)
							ens:SetAngles(self.Vehicle:GetAttachment(self.Vehicle:LookupAttachment("muzzle")).Ang)
							bullet.Src = ens:GetPos()
							if IsValid(self.Enemy) then
								dir = (self.Enemy:WorldSpaceCenter()-origin):GetNormalized()
							end
							bullet.Dir = dir or self:GetAimVector()
							ens:FireBullets(bullet)
							ens:Remove()
						end
					end )
				end
			elseif self.TurretType == "Gauss" then
				local vehicle = self.Vehicle
				
				vehicle.wOldPos = vehicle.wOldPos or vehicle:GetPos()
				local deltapos = vehicle:GetPos() - vehicle.wOldPos
				vehicle.wOldPos = vehicle:GetPos()
				
				local AttachmentID = vehicle.swapMuzzle and vehicle:LookupAttachment( "muzzle" ) or vehicle:LookupAttachment( "muzzle" )
				local Attachment = vehicle:GetAttachment( AttachmentID )
							
				local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
				local shootDirection = Attachment.Ang:Forward()
			
				self.Vehicle:EmitSound("gauss_fire")

				self.Vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 150000, shootOrigin )
					
				local projectile = {}
					projectile.filter = self.Vehicle.VehicleData["filter"]
					projectile.shootOrigin = shootOrigin
					projectile.shootDirection = shootDirection
					projectile.attacker = self
					projectile.attackingent = vehicle
					projectile.Damage = 500
					projectile.Force = 64000
					projectile.Size = 25
					projectile.BlastRadius = 50
					projectile.BlastDamage = 2500
					projectile.DeflectAng = 10
					projectile.BlastEffect = "simfphys_hce_snow_gauss"
					projectile.MuzzleVelocity = 640
				
				AVX.FirePhysProjectile( projectile )
			elseif self.TurretType == "Rocket" then
				for i = 1, 6 do 
					timer.Simple( 0.3*i, function()
						if IsValid(self) and IsValid(self.Vehicle) then
							local vehicle = self.Vehicle
							
							vehicle.wOldPos = vehicle.wOldPos or vehicle:GetPos()
							local deltapos = vehicle:GetPos() - vehicle.wOldPos
							vehicle.wOldPos = vehicle:GetPos()
							
							local AttachmentID = math.random(6,7)
							local Attachment = vehicle:GetAttachment( AttachmentID )
										
							local shootOrigin = Attachment.Pos + deltapos * engine.TickInterval()
							local shootDirection = Attachment.Ang:Forward()
						
							vehicle:EmitSound("reach_rocket_fire")

							vehicle:GetPhysicsObject():ApplyForceOffset( -shootDirection * 80000, shootOrigin )
							local projectile = {}
								projectile.filter = vehicle.VehicleData["filter"]
								projectile.shootOrigin = shootOrigin
								projectile.shootDirection = shootDirection
								projectile.attacker = self
								projectile.attackingent = vehicle
								projectile.Damage = 250
								projectile.Force = 64000
								projectile.Size = 50
								projectile.BlastRadius = 200
								projectile.BlastDamage = 800
								projectile.DeflectAng = 1
								projectile.BlastEffect = "simfphys_hce_snow_rocket_reach"
								projectile.MuzzleVelocity = 50
							
							HCE.FirePhysProjectile( projectile )
						end
					end )
				end
				
			end
		end
		self:PlaySequenceAndWait(self.WarthogGunnerIdle)
	elseif self.VehicleRole == "Driver" then
		self:SetSequence(self.WarthogDriverIdle)
		local r = math.random(1,2)
		if r == 2 then r = -1 end
		local goal = ent:GetPos()+self:GetRight()*(r*600)+self:GetForward()*math.random(100,1000)
		self:Drive(goal,false,nil)
	elseif self.VehicleRole == "Passenger" then
		local y = math.AngleDifference(self:GetAngles().y,(ent:WorldSpaceCenter()-self:GetShootPos()):GetNormalized():Angle().y)
		if math.abs(y) <= 90 then
			self.Weapon:AI_PrimaryAttack()
		else
			self:SetEnemy(nil)
		end
		self:PlaySequenceAndWait(self.WarthogPassengerIdle)
	end
end

function ENT:EnterVehicle(veh)
	local dirs = {
		[1] = veh:GetRight()*-80,
		[3] = veh:GetForward()*-160,
		[2] = veh:GetRight()*80
	}
	local voices = {
		[1] = "entervcl_drvr",
		[3] = "entervcl_trrt",
		[2] = "entervcl"
	}
	local seat
	local clss = veh:GetModel()
	local e
	for i = 1, self.PassengerSlots[clss] do
		if !IsValid(veh.PassengerS[i]) then
			if ( i == 1 and !IsValid(veh:GetDriver()) ) or ( IsValid(veh.pSeat[i-1]) and !IsValid(veh.pSeat[i-1]:GetDriver()) ) or ( IsValid(veh.pSeat[i]) and !IsValid(veh.pSeat[i]:GetDriver()) ) then
				veh.PassengerS[i] = self
				--PrintTable(veh.pSeat)
				e = i
				if i == 1 then
					seat = veh.DriverSeat
					--i = i
				elseif i == 2 then
					seat = veh.pSeat[i]
					e = 3
				elseif i == 3 then
					seat = veh.pSeat[1]
					e = 2
				else
					seat = veh.pSeat[i-2]
				end
				break
			end
		end
	end
	self.VehicleRole = self.VehicleSlots[clss][e]
	--print(self.VehicleRole)
	self.TurretType = self.TurretTypes[clss]
	self.TurretAttachment = self.TurretAttachments[clss][self.VehicleRole]
	self:Speak(voices[e])
	self:MoveToPosition(seat:GetPos()+dirs[e],self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier)
	--[[local oldfunc = seat.GetDriver
	local newfunc = function()
		if IsValid(self) and self.IsInVehicle and self.Vehicle == seat:GetParent() then 
			return self
		else 
			return oldfunc(seat)
		end 
	end
	print("a")
	seat.GetDriver = newfunc
	print("e")]]
	for i = 1, self.PassengerSlots[clss] do
		if veh.PassengerS[i] == self then
			if ( i == 1 and IsValid(veh:GetDriver()) ) or ( IsValid(veh.pSeat[i-1]) and IsValid(veh.pSeat[i-1]:GetDriver()) ) then
				local rude
				if i == 1 then
					rude = veh:GetDriver()
				else
					if IsValid(veh.pSeat[i-1]) then
						rude = veh.pSeat[i-1]:GetDriver()
					end
				end
				veh.PassengerS[i] = rude
				self.VehicleRole = "No"
				self:ResetSequence(self.IdleAnim[math.random(#self.IdleAnim)])
				return
			end
		end
	end
	self.IsInVehicle = true
	self.Vehicle = veh
	self.Seat = seat
	--self:SetPos(seat:GetPos())
	self:SetParent(seat)
	self:SetOwner(seat)
	seat.AltDriver = self
	--print(seat)
	self.OldMask = self:GetSolidMask()
	self.TraceMask = MASK_VISIBLE_AND_NPCS
	self:SetSolidMask(self.TraceMask)
	if self.VehicleRole == "Gunner" then
		self.LTPP = veh:GetPoseParameter("turret_yaw")
		self.LTP = veh:GetPoseParameter("spin_cannon")
		self.Weapon:SetNoDraw(true)
		self:SetAngles(Angle(veh:GetAngles().p,veh:GetAngles().y+veh:GetPoseParameter("turret_yaw"),0))
		self:PlaySequenceAndWait(self.WarthogGunnerEnter)
	elseif self.VehicleRole == "Driver" then
		veh:SetActive(true)
		veh:StartEngine()
		self.Weapon:SetNoDraw(true)
		self:PlaySequenceAndWait(self.WarthogDriverEnter)
		self:SetAngles(Angle(veh:GetAngles().p,veh:GetAngles().y,0))
	elseif self.VehicleRole == "Passenger" then
		self:SetAngles(Angle(veh:GetAngles().p,veh:GetAngles().y,0))
		self:PlaySequenceAndWait(self.WarthogPassengerEnter)
	end
end

function ENT:GetInfoNum(no,yes)
    return 1
end

function ENT:VehicleThink()
if self.IsInVehicle then
			if self.InPelican then
				local att = self.Pelican:GetAttachment(self.Pelican:LookupAttachment(self.Pelican.InfantryAtts[self.PelicanId]))
				local ang = att.Ang
				local pos = att.Pos
				self:SetAngles(att.Ang)
				if !self.PLanded then
					self:SetPos(att.Pos+Vector(0,0,3))
					if !self.DidPelicanIdleAnim then
						self.DidPelicanIdleAnim = true
						local anim
						if self.SideAnim == "Left" then
							anim = self.PelicanPassengerLIdleAnims[self.SAnimId]
						else
							anim = self.PelicanPassengerRIdleAnims[self.SAnimId]
						end
						local id, len = self:LookupSequence(anim)
						self:ResetSequence(id)
						--print(id,len)
						timer.Simple( len, function()
							if IsValid(self) then
								self.DidPelicanIdleAnim = false
							end
						end )
					end
				else
					--local off = 50*self.SAnimId
					--if self.SideAnim == "Right" then off = -50*self.SAnimId end
					local off = 0
					self:SetPos(att.Pos+Vector(0,0,3)-att.Ang:Right()*off)
				end
				--self.loco:SetVelocity(Vector(0,0,0))
			else
				local att = self.Vehicle:GetAttachment(self.Vehicle:LookupAttachment(self.TurretAttachment))
				self:SetPos(att.Pos)
				self:SetAngles(att.Ang)
			end
		end
end