AddCSLuaFile()
include("voices.lua")

ENT.Base 			= "npc_iv04_weaponuserbase"

ENT.IsHalo3Marine = true

ENT.MoveSpeed = 75

ENT.MoveSpeedMultiplier = 2

ENT.BehaviourType = 3

ENT.CustomIdle = true

ENT.SightType = 2

ENT.Faction = "FACTION_UNSC"

ENT.AIType = "Offensive"

ENT.ExtraSpread = 0

ENT.ShootDist = 1024

ENT.SightDistance = 4096

ENT.CanUse = true

ENT.GrenadeRange = 768

ENT.GrenadeChances = 30

ENT.MeleeDamage = 0

ENT.MeleeRange = 100

ENT.FlinchChance = 30

ENT.FlinchDamage = 10

ENT.RunBehaviourTime = 0

ENT.SeenVehicles = {}

ENT.CountedVehicles = 0

ENT.IsUNSC = true

ENT.CollisionMask = MASK_NPCSOLID

ENT.SearchJustAsSpawned = false

ENT.CanJump = true

ENT.UseNBSight = true

ENT.BloodEffect = "halo_reach_blood_impact_human"

ENT.LastThinkTime = 0

ENT.ThrownGrenades = 0

ENT.DistToTarget = 0

ENT.ThinkDelay = 1

ENT.LastCalcTime = 0

ENT.AimCalculationT = 3

ENT.NBlink = 0

ENT.AttractAlliesRange = 512

ENT.LocGravity = 600

ENT.TransitionAnims = {}

ENT.NoticedKills = 0

ENT.CountedEnemies = 0

ENT.MentionedSpree = false

ENT.CountedAllies = 0

ENT.MentionedAllySpree = false

ENT.InteractableAllies = {}

ENT.PPP = 0

ENT.YPP = 0

ENT.PostCombatQuotes = {
	[1] = "pstcmbt",
	[2] = "status",
	[3] = "pstcmbt_ez",
	[4] = "pstcmbt_tim",
	[5] = "pstcmbt_agg"
}

ENT.PostCombatResponses = {
	["status"] = "status_re"
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
	[1] = "Flinch_Head",
	[3] = "Flinch_Front_Chest",
	[4] = "Flinch_Front_Left_Arm",
	[5] = "Flinch_Front_Right_Arm",
	[6] = "Flinch_Front_Left_Leg",
	[7] = "Flinch_Front_Right_Leg"
}

ENT.FlinchMove = {
	[1] = 50,
	[3] = 50,
	[4] = 50,
	[5] = 50,
	[6] = 0,
	[7] = 0
}

ENT.ShootCorpseFilter = {
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

ENT.PossibleVoices = {
	[1] = "Marine1",
	[2] = "Marine2",
	[3] = "Marine3",
	[4] = "Marine4",
	[5] = "Marine5",
	[6] = "Marine6"
}

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
	wep:Fire("setparentattachment", "anim_attachment_RH")
	wep:AddEffects(EF_BONEMERGE)
	self.Weapon = wep
	wep:SetClip1(wep:GetMaxClip1())
end

function ENT:OnInitialize()
	self.StartPosition = self:GetPos()
	if !self.VoiceType then
		self.VoiceType = self.PossibleVoices[math.random(#self.PossibleVoices)]
	end
	if self.FriendlyToPlayers then
		self.FriendlyToPlayers = GetConVar("halo_3_nextbots_ai_hostile_humans"):GetInt() != 1
	end
	self:SetBloodColor(DONT_BLEED)
	self.AIType = GetConVar("halo_3_nextbots_ai_type"):GetString() or self.AIType
	self:DoInit()
	self:SetupHoldtypes()
	self:SetCollisionBounds(Vector(-15,-15,0),Vector(15,15,60))
end

function ENT:DoInit()
end

function ENT:Speak(voice,character)
	local character = character or self.Voices[self.VoiceType]
	if self.CurrentSound then self.CurrentSound:Stop() end
	if character and character[voice] and istable(character[voice]) then
		local sound = table.Random(character[voice])
		self.CurrentSound = CreateSound(self,sound)
		self.CurrentSound:SetSoundLevel(100)
		self.CurrentSound:Play()
		self:MoveMouth()
	--else
		--print("nosound",character,character[voice],istable(character[voice]),voice,self.VoiceType)
	end
end

function ENT:GetCurrentWeaponProficiency()
	return self.WeaponAccuracy or 1
end

function ENT:OnStared(weirdo)
	if weirdo:IsPlayer() then
		if self.HasSeenEnemies then
			self:Speak("look_pstcmbt")
		else
			self:Speak("look")
		end
	else
		if weirdo.InteractableAllies[self:GetClass()] then
			self:Speak(weirdo.InteractableAllies[self:GetClass()])
			timer.Simple( 5, function()
				if IsValid(self) and IsValid(weirdo) and !IsValid(self.Enemy) and !IsValid(weirdo.Enemy) and weirdo.InteractableAlliesResponses[self:GetClass()] then
					weirdo.LookTarget = self
					timer.Simple( 2, function()
						if IsValid(weirdo) then weirdo.LookTarget = nil end
					end )
					weirdo:Speak(weirdo.InteractableAlliesResponses[self:GetClass()])
				end
			end )
		end
	end
end

function ENT:OnSeenFriendly(ent)
	--print("friend",ent)
	if self:Health() < 1 then return end
	if !IsValid(self.Enemy) then
		if !self.Waved and ent:IsPlayer() then
			self.Waved = true
			self:Speak(self.GreetQuote or "grt_plr_mc")
			if self.WaveAnimGesture then
				self:DoGestureSeq(self.WaveAnim)
			else
				local func = function()
					self:PlaySequenceAndWait(self.WaveAnim)
				end
				table.insert(self.StuffToRunInCoroutine,func)
			end
			return
		end
		if !self.BeingStaredAt and !self.CommentedStare and ( ent:IsPlayer() or ( ent.CanInteractWithOthers and !ent.BeingStaredAt ) ) then
			local st1 = false
			local st2 = false
			local st3 = false
			local ang1 = ent:GetAimVector():Angle()
			local ang2 = ( self:GetPos() - ent:GetPos() ):GetNormalized():Angle()
			local dif = math.abs(math.AngleDifference( ang1.y, ang2.y ))
			self.BeingStaredAt = true
			--print(dif)
			if dif <= 60 then
				self.LookTarget = ent
				timer.Simple( 5*0.33, function()
					if IsValid(self) and !IsValid(self.Enemy) and ( IsValid(ent) and ent:Health() > 0 ) then
						local ang1 = ent:GetAimVector():Angle()
						local ang2 = ( self:GetPos() - ent:GetPos() ):Angle()
						local dif = math.abs(math.AngleDifference( ang1.y, ang2.y ))
						if dif < 60 then
							--print(dif)
							st1 = true
						else
							self.BeingStaredAt = false
						end
					end
				end )
				timer.Simple( 5*0.66, function()
					if IsValid(self) and !IsValid(self.Enemy) and ( IsValid(ent) and ent:Health() > 0 ) then
						local ang1 = ent:GetAimVector():Angle()
						local ang2 = ( self:GetPos() - ent:GetPos() ):Angle()
						local dif = math.abs(math.AngleDifference( ang1.y, ang2.y ))
						if dif < 60 then
							st2 = true
						else
							self.BeingStaredAt = false
						end
					end
				end )
				timer.Simple( 5, function()
					if IsValid(self) and self:Health() > 0 and !IsValid(self.Enemy) and ( IsValid(ent) and ent:Health() > 0 ) then
						local ang1 = ent:GetAimVector():Angle()
						local ang2 = ( self:GetPos() - ent:GetPos() ):Angle()
						local dif = math.abs(math.AngleDifference( ang1.y, ang2.y ))
						self.BeingStaredAt = false
						if dif < 60 then
							st3 = true
							self:OnStared(ent)
							self.CommentedStare = true
							timer.Simple( 20, function()
								if IsValid(self) then
									self.CommentedStare = false
								end
							end )
							timer.Simple( 3, function()
								if IsValid(self) then
									self.LookTarget = nil
								end
							end )
							--[[timer.Simple(4, function() -- CATCH
							if ent.SetEnemy then ent:SetEnemy(self) end
							end )]]
						else
							self.LookTarget = nil
						end
					end
				end )
			end
		end
	end
end

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
									self:SetupHoldtypes()
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

ENT.TotalHolds = {
	["crossbow"] = true,
	["ar2"] = true,
	["shotgun"] = true,
	["pistol"] = true,
	["revolver"] = true,
	["smg"] = true,
	["rpg"] = true
}

function ENT:GetAmmoCount( no )
	return self.Weapon:Clip1()
end

function ENT:SetupHoldtypes()
	self.WarthogDriverEnter = "warthog_d_enter"
	self.WarthogDriverExit = "warthog_d_exit"
	self.WarthogDriverIdle = "warthog_d_idle"
	self.WarthogPassengerEnter = "warthog_p_enter"
	self.WarthogPassengerExit = "warthog_p_exit"
	self.WarthogGunnerEnter = "warthog_g_enter"
	self.WarthogGunnerExit = "warthog_g_exit"
	self.WarthogGunnerIdle = "warthog_g_idle"
	self.WarthogGunnerFire = "warthog_g_fire"
	self.DeadAirAnim = "any_dead_fly"
	self.PelicanPassengerLIdleAnims = {
		[5] = "Pelican_Passenger_Rifle_Idle_L1",
		[4] = "Pelican_Passenger_Rifle_Idle_L2",
		[3] = "Pelican_Passenger_Rifle_Idle_L3",
		[2] = "Pelican_Passenger_Rifle_Idle_L4",
		[1] = "Pelican_Passenger_Rifle_Idle_L5"
	}
	self.PelicanPassengerLExitAnims = {
		[5] = "Pelican_Passenger_Exit_L1",
		[4] = "Pelican_Passenger_Exit_L2",
		[3] = "Pelican_Passenger_Exit_L3",
		[2] = "Pelican_Passenger_Exit_L4",
		[1] = "Pelican_Passenger_Exit_L5"
	}
	self.PelicanPassengerRIdleAnims = {
		[5] = "Pelican_Passenger_Rifle_Idle_R1",
		[4] = "Pelican_Passenger_Rifle_Idle_R2",
		[3] = "Pelican_Passenger_Rifle_Idle_R3",
		[2] = "Pelican_Passenger_Rifle_Idle_R4",
		[1] = "Pelican_Passenger_Rifle_Idle_R5"
	}
	self.PelicanPassengerRExitAnims = {
		[5] = "Pelican_Passenger_Exit_R1",
		[4] = "Pelican_Passenger_Exit_R2",
		[3] = "Pelican_Passenger_Exit_R3",
		[2] = "Pelican_Passenger_Exit_R4",
		[1] = "Pelican_Passenger_Exit_R5"
	}
	if IsValid(self.Weapon) then
		local hold = self.Weapon.HoldType_Aim
		if !self.Weapon.NextPrimaryFire then self.Weapon.NextPrimaryFire = CurTime() end
		local relo = self.Weapon.AI_Reload
		self:SetNWEntity("wep",self.Weapon)
		self.Weapon.TrueScope = false
		self.Weapon.AI_Reload = function()
			relo(self.Weapon)
			self:DoAnimationEvent(1689)
		end
		if self.PistolHolds[hold] then
			self.IdleAnim = {"pistol_idle_1","pistol_idle_2"}
			self.IdleCalmAnim = {"pistol_idle_1_passive","pistol_idle_2_passive"}
			self.RunAnim = {"pistol_move"}
			self.RunCalmAnim = {"pistol_move_passive"}
			self.WalkAnim = {"pistol_walk"}
			self.MeleeAnim = {"pistol_melee_1","pistol_melee_2"}
			self.ShootAnim = {"pistol_fire"}
			self.ReloadAnim = "pistol_reload"
			self.CalmTurnLeftAnim = "any_turn_left"
			self.CalmTurnRightAnim = "any_turn_right"
			self.TurnLeftAnim = "pistol_turn_left"
			self.TurnRightAnim = "pistol_turn_right"
			self.CrouchTurnLeftAnim = "pistol_crouch_turn_left"
			self.CrouchTurnRightAnim = "pistol_crouch_turn_right"
			self.AirAnim = "pistol_airborne"
			self.LandAnim = "pistol_land_soft"
			self.LandHardAnim = "pistol_land_hard"
			self.SurpriseAnim = "pistol_surprise_front"
			self.WarnAnim = {"pistol_warn_1","pistol_warn_2"}
			self.CrouchMoveCalmAnim = {"pistol_crouch_move_passive"}
			self.CrouchIdleAnim = {"pistol_crouch_idle"}
			self.CrouchMoveAnim = {"pistol_crouch_move"}
			self.GrenadeAnim = {"rifle_throwgrenade_1","rifle_throwgrenade_2"}
			self.PushAnim = {"pistol_smash"}
			self.WarthogPassengerIdle = "Warthog_Passenger_Idle_Pistol"
			if self.Weapon:GetClass() == "astw2_halo3_magnum" or self.Weapon:GetClass() == "astw2_halo3_magnum_odst" then
				self.Weapon.BurstLength = 4
			end
			self.WaveAnim = "pistol_wave"
			self.ShakeFistAnim = "pistol_shakefist"
			self.AdvanceAnim = "pistol_advance"
			self.CheerAnim = "pistol_cheer"
			self.WaveAnimGesture = true
			self.AllowGrenade = true
			self.CanShootCrouch = true
			self.CanMelee = true
			self.FallbackAnim = "pistol_fallback"
			self.TransitionAnims["Move_2_Idle"] = "pistol_move_2_idle"
			self.TransitionAnims["Move_2_Idle_Passive"] = "pistol_move_2_idle_passive"
			self.TransitionAnims["Walk_2_Idle"] = "pistol_walk_2_idle"
			self.TransitionAnims["Walk_2_Idle_Passive"] = "pistol_walk_2_idle_passive"
			self.TransitionAnims["Idle_2_Move"] = "pistol_idle_2_move"
			self.TransitionAnims["Idle_2_Move_Passive"] = "pistol_idle_2_move_passive"
			self.TransitionAnims["Idle_2_Walk"] = "pistol_idle_2_walk"
			self.TransitionAnims["Idle_2_Walk_Passive"] = "pistol_idle_2_walk_passive"
			self.TransitionAnims["Idle_2_Guard"] = "pistol_idle_2_guard_idle"
			self.TransitionAnims["Idle_2_Crouch"] = "pistol_idle_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "pistol_crouch_move_2_crouch_idle"
			self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "pistol_crouch_move_2_crouch_idle_passive"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "pistol_crouch_walk_2_crouch_idle"
			self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "pistol_crouch_walk_2_crouch_idle_passive"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "pistol_crouch_idle_2_crouch_move"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "pistol_crouch_idle_2_crouch_move_passive"
			self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "pistol_crouch_idle_2_crouch_walk"
			self.TransitionAnims["Crouch_Idle_2_Guard"] = "pistol_crouch_idle_2_guard_idle"
			self.TransitionAnims["Crouch_Idle_2_Idle"] = "pistol_crouch_idle_2_idle"
		elseif self.RifleHolds[hold] then
			self.IdleAnim = {"rifle_idle"}
			self.IdleCalmAnim = {"rifle_idle_passive"}
			self.RunAnim = {"rifle_move"}
			self.RunCalmAnim = {"rifle_move_passive"}
			self.WalkAnim = {"rifle_walk"}
			self.MeleeAnim = {"rifle_melee_1","rifle_melee_2"}
			if self.Weapon:GetClass() == "astw2_halo3_sniper_rifle" then
				self.ReloadAnim = self:LookupSequence("rifle_reload")
				self.Weapon.BurstLength = 1
				self.ShootAnim = {"rifle_br_fire_1","rifle_br_fire_2"}
			elseif hold == "ar2" then
				self.ReloadAnim = self:LookupSequence("rifle_reload")
				self.ShootAnim = {"rifle_br_fire_1","rifle_br_fire_2"}
			elseif hold == "shotgun" then
				self.Weapon.Acc = 0
				self.Weapon.Primary.RecoilAcc = 0
				self.WeaponAccuracy = 9
				self.Weapon.BurstLength = 1
				self.ReloadAnim = self:LookupSequence("rifle_reload")
				self.ShootAnim = {"rifle_sg_fire"}
				self:DoGestureSeq("rifle_sg_grip",false)
			elseif hold == "smg" then
				self.ReloadAnim = self:LookupSequence("rifle_reload")
				self.ShootAnim = {"rifle_br_fire_1","rifle_br_fire_2"}
				self:ManipulateBoneAngles(self:LookupBone("l_hand"),Angle(0,0,90))
			else
				self.ReloadAnim = self:LookupSequence("rifle_reload")
				self.ShootAnim = {"rifle_br_fire_1","rifle_br_fire_2"}
			end
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
			self.IdleAnim = {"missile_idle_1","missile_idle_2"}
			self.IdleCalmAnim = {"missile_idle_1","missile_idle_2"}
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

function ENT:DoCustomIdle()
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
	elseif self.AIType == "Defensive" then
		local dist = self:GetRangeSquaredTo(self.StartPosition)
		if dist > 300^2 then
			self:WanderToPosition( (self.StartPosition + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * 300), self.RunCalmAnim[math.random(1,#self.RunCalmAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
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

function ENT:OnHaveEnemy(ent)
	if !self.HasSeenEnemies then
		self.HasSeenEnemies = true
		if ( ent:IsNPC() and ent.IsVJBaseSNPC and string.StartWith(ent:GetClass(), "npc_vj_flood") ) or ent.Faction == "FACTION_FLOOD" then
			--self:Speak("warn_pureforms") -- Save this for when we make our own
			self.SawFlood = true
			self:Speak("warn_flood")
		elseif ent.IsScarab then
			self:Speak("warn_scrb")
		elseif IsValid(ent.Weapon) and ent.Weapon:GetClass() == "astw2_haloreach_gravityhammer" then
			self:Speak("warn_wpn_hmmer")
		elseif ent.IsHunter then
			self:Speak("warn_chr_hntr")
		elseif self.IsSergeant and math.random(1,2) == 1 then
			self:Speak("ordr_openfire")
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
	if #self:PossibleTargets() > 5 and !H3HS:WasSignalGiven("ThrowAllGrenades",5) then
		H3HS:Signal("ThrowAllGrenades",self)
		self:Speak("ordr_grenade_all")
	end
	self:AlertAllies(ent)
	if !self.IsInVehicle then
		if !self.BeenSurprised and math.random(1,3) == 1 then
			self.BeenSurprised = true
			local xy = ent:GetPos().x+ent:GetPos().y
			local xy2 = self:GetPos().x+self:GetPos().y
			local dif = math.abs(xy-xy2)
			if dif < 700 then
				local func = function()
					local should, dif = self:ShouldFace(ent,10)
					if should then
						self:TurnTo(dif)
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
					self:TurnTo(dif)
					coroutine.wait(0.2)
				end
				self:PlaySequenceAndWait(self.WarnAnim[math.random(#self.WarnAnim)])
			end
			table.insert(self.StuffToRunInCoroutine,func)
		end
		self:ResetAI()
	end
	self.HasLOSToTarget = true
	self.RegisteredTargetPositions[ent] = ent:GetPos()
	if !self.DoneStealth and self:IsUndetected() then
		self.HaltShoot = true
	end
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
	if ent == self.Enemy then
		self:SetEnemy(nil)
		self:GetATarget()
	end
end

function ENT:OnTraceAttack( info, dir, trace )
	if trace.HitGroup == 1 and !self.HeadShotImmune then
		info:ScaleDamage(3)
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

function ENT:OnInjured(dmg)
	--print(dmg:GetInflictor())
	local rel = self:CheckRelationships(dmg:GetAttacker())
	local ht = self:Health()
	ParticleEffect( self.BloodEffect, dmg:GetDamagePosition(), Angle(0,0,0), self )
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
			if self:Health() < self.StartHealth/2 then
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
	if math.abs(self:Health()) - math.abs(dmg:GetDamage()) <= 0 then return end
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
		if dmg:GetAttacker():IsPlayer() then
			timer.Simple( math.random(2,3), function()
				if IsValid(self) then
					self:Speak("scld_plr_hrtme")
				end
			end )
		end
	end
	if self.Unkillable then
		dmg:SetDamage(0)
	else
		local total = dmg:GetDamage()
		--print(self.Shield, "before")
		self.HealthActual = self:Health()
		self.HealthH = CurTime()
		local htt = CurTime()
		local htl = self:Health()
		local dm = dmg:GetDamage()
		local ht = self:Health()-math.abs(dm)
		--print(self.Shield, "now")
		timer.Simple( 2, function()
			if IsValid(self) and htt == self.HealthH then
				--print("Starting regeneration")
				for i = 1, 10 do
					timer.Simple( 0.4*i, function()
						if IsValid(self) and htl == self.HealthActual then
							--print("Regenerating", (self.HealthActual-ht)/10)
							self:SetHealth(self:Health()+((self.HealthActual-ht)/10))
						end
					end )
				end
			end
		end )
	end
end

function ENT:GetShootPos()
	if IsValid(self:GetActiveWeapon()) then
		return self:GetActiveWeapon():GetAttachment(1).Pos
	else
		return self:WorldSpaceCenter()
	end
end

function ENT:HasToReload()
	return self.Weapon:Clip1() == 0
end

function ENT:DoMelee()
	self:Speak("melee")
	if IsValid(self.Enemy) then
		local ang = (self.Enemy:GetPos()-self:GetPos()):GetNormalized():Angle()
		self:SetAngles(Angle(0,ang.y,0))
	end	
	self.DoneMelee = true
	self.DoingMelee = true
	timer.Simple( math.random(5,10), function()
		if IsValid(self) then
			self.DoneMelee = false
		end
	end )
	local anim = self.MeleeAnim[math.random(#self.MeleeAnim)]
	local id, len = self:LookupSequence(anim)
	timer.Simple( len*0.4, function()
		if IsValid(self) then
			self:DoMeleeDamage()
		end
	end )
	timer.Simple( len, function()
		if IsValid(self) then
			self.DoingMelee = false
		end
	end )
	self:PlaySequenceAndPWait(anim,1,self:GetPos())
end

function ENT:DoMeleeDamage()
	-- lol
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
			d:SetDamageType( DMG_SLASH )
			d:SetDamagePosition( v:NearestPoint( self:WorldSpaceCenter() ) )
			v:TakeDamageInfo(d)
		end
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
	if !H3HS:WasSignalGiven("ThrowAllGrenades",5) then
		self:Speak("ordr_grenade")
	end
	timer.Simple( 0.4, function()
		if IsValid(self) then
			grenade = ents.Create("astw2_halo3_frag_thrown")
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

local thingstoavoid = {
	["prop_physics"] = true,
	["prop_ragdoll"] = true
}

function ENT:OnContact( ent ) -- When we touch someBODY
	if ent == game.GetWorld() then if self.FlyingDead then self.AlternateLanded = true end return "no" end
	if ent:IsPlayer() then
		if !self.SpokeBump then 
			self.SpokeBump = true 
			timer.Simple( math.random(10,20), function()
				if IsValid(self) then
					self.SpokeBump = false
				end
			end )
			self:Speak("bump")
		end
	end
	if (ent.IsVJBaseSNPC == true or ent.CPTBase_NPC == true or ent.IsSLVBaseNPC == true or ent:GetNWBool( "bZelusSNPC" ) == true) or (ent:IsNPC() && ent:GetClass() != "npc_bullseye" && ent:Health() > 0 ) or (ent:IsPlayer() and ent:Alive()) or ((ent:IsNextBot()) and ent != self ) and ent != self.Owner then
		local d = self:GetPos()-ent:GetPos()
		self.loco:SetVelocity(d*1)
	end
	if (ent:GetClass() == "prop_door_rotating" or ent:GetClass() == "func_door" or ent:GetClass() == "func_door_rotating" ) then
		local func = function()
			local seq = self:GetSequence()
			self:PlaySequenceAndWait(self.PushAnim[math.random(#self.PushAnim)])
		end
		table.insert(self.StuffToRunInCoroutine,func)
		self:ResetAI()
		ent:Fire( "Open" )
	end
	if (thingstoavoid[ent:GetClass()]) and !self.PushingProp then
		self.PushingProp = true
		self.PushedProp = ent
	end
	if ent:IsVehicle() and self.DriveThese[ent:GetModel()] and !self.SeenVehicles[ent] then
		self.SeenVehicles[ent] = true
		self.CountedVehicles = self.CountedVehicles+1
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

ENT.DriveThese = {
	["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = true,
	["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = true,
	["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = true
}

ENT.PassengerSlots = {
	["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = 3,
	["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = 3,
	["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = 3
}

ENT.TurretTypes = {
	["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = "MG",
	["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = "Gauss",
	["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = "Rocket"
}

ENT.TurretBones = {
	["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = "turret",
	["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = "turret_2",
	["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = "turret_2"
}

function ENT:CanEnterAVehicle()
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

function ENT:VehicleIdle()
	self:SearchEnemy()
	if self.VehicleRole == "Gunner" then
		self:PlaySequenceAndWait(self.WarthogGunnerIdle)
	elseif self.VehicleRole == "Driver" then
		if self.IsFollowingPlayer then
			self:Drive(self.FollowingPlayer:GetPos()+self.FollowingPlayer:GetForward()*-400)
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
	if ( dif > 195 and dif < 345 ) or ( dif < 165 and dif > 15 )then
		if dif >= 180 then
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
	else
		veh.PressedKeys["A"] = false
		veh.PressedKeys["D"] = false
		veh.PressedKeys["joystick_steer_right"] = false
		veh.PressedKeys["joystick_steer_left"] = false
	end
	if ( dif < 90 and dif > 270 ) then
		veh.PressedKeys["S"] = true
		veh.PressedKeys["W"] = false
		--print("back")
	else
		veh.PressedKeys["S"] = false
		veh.PressedKeys["W"] = true
		--print("front")
	end
	veh.PressedKeys["Space"] = false
   
    veh:PlayerSteerVehicle( self, left, right )
end

function ENT:Drive(goal,pathed,path)
	local pos = goal
	local stop = false
	local timed = false
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
							bullet.Attacker = self
							bullet.Damage = 8
							local dir
							local origin = self.Vehicle:GetAttachment(self.Vehicle:LookupAttachment("muzzle")).Pos
							ParticleEffectAttach( "simphys_halo_warthog_chaingun_muzzle", PATTACH_POINT_FOLLOW, self.Vehicle, 5 )
							self.Vehicle:EmitSound("hce_turret")
							local ens = ents.Create("prop_physics")
							ens:SetPos(origin)
							ens:SetAngles(self.Vehicle:GetAttachment(self.Vehicle:LookupAttachment("muzzle")).Ang)
							bullet.TracerName = "effect_simfphys_halo_warthog_chaingun_tracer"
							bullet.Src = ens:GetPos()
							bullet.Spread = Vector(0.05,0.05,0.05)
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

ENT.VehicleSlots = {
	["models/snowysnowtime/vehicles/haloreach/warthog.mdl"] = {
		[1] = "Driver",
		[2] = "Gunner",
		[3] = "Passenger"
	},
	["models/snowysnowtime/vehicles/haloreach/warthog_rocket.mdl"] = {
		[1] = "Driver",
		[2] = "Gunner",
		[3] = "Passenger"
	},
	["models/snowysnowtime/vehicles/haloreach/warthog_gauss.mdl"] = {
		[1] = "Driver",
		[2] = "Gunner",
		[3] = "Passenger"
	}
}

function ENT:EnterVehicle(veh)
	local dirs = {
		[1] = veh:GetRight()*-80,
		[2] = veh:GetForward()*-160,
		[3] = veh:GetRight()*80
	}
	local seat
	local clss = veh:GetModel()
	local e
	for i = 1, self.PassengerSlots[clss] do
		if !IsValid(veh.PassengerS[i]) then
			if ( i == 1 and !IsValid(veh:GetDriver()) ) or ( IsValid(veh.pSeat[i-1]) and !IsValid(veh.pSeat[i-1]:GetDriver()) ) then
				veh.PassengerS[i] = self
				if i == 1 then
					seat = veh
				else
					seat = veh.pSeat[i-1]
				end
				e = i
				break
			end
		end
	end
	self.VehicleRole = self.VehicleSlots[clss][e]
	self.TurretType = self.TurretTypes[clss]
	self.TurretBone = self.TurretBones[clss]
	self:MoveToPosition(seat:GetPos()+dirs[e],self.RunAnim[math.random(#self.RunAnim)],self.MoveSpeed*self.MoveSpeedMultiplier)
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
	self.TraceMask = MASK_VISIBLE_AND_NPCS
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

function ENT:NearbyAllies( pos, dist )
	local tbl = {}
	for k, v in pairs(ents.FindInSphere(pos,dist)) do
		if v != self and self:CheckRelationships(v) == "friend" then
			tbl[#tbl+1] = v
		end
	end
	return tbl
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
	self.GoingForSneakKill = true
	self:DoTransitionAnim("Idle_2_Crouch")
	self:StartMovingAnimations(self.CrouchMoveAnim[math.random(#self.CrouchMoveAnim)],self.MoveSpeed)
	self:MoveToPos(ent:GetPos()+ent:GetForward()*-20,{callback = function()
		if !self:IsUndetected() then
			self.HaltShoot = false
			self:ResetAI()
		end
	end})
	self:ResetAI()
end

function ENT:CustomBehaviour(ent,range)
	ent = ent or self.Enemy
	if !IsValid(ent) then self:GetATarget() end
	if !IsValid(self.Enemy) then return else ent = self.Enemy end
	if self.IsInVehicle then return self:VehicleBehavior(ent,range) end
	local los = self.HasLOSToTarget
	local range = ((CurTime()-self.LastCalcTime) < 1 and self.DistToTarget) or range
	if !self.DistToTarget then self.DistToTarget = range end
	local can, veh = self:CanEnterAVehicle()
	if can then
		self:EnterVehicle(veh)
		return self:VehicleBehavior(ent,range)
	end
	--print(los, !self.DoneMelee, range < self.MeleeRange^2, range, self.MeleeRange^2, math.sqrt(range), self.MeleeRange )
	if los and !self.DoneMelee and range < self.MeleeRange^2 then
		self:DoMelee()
	end
	if self.AllowGrenade and range < self.GrenadeRange^2 and range > (self.MeleeRange*2)^2 then
		self.CanThrowGrenade = true
	else
		self.CanThrowGrenade = false
	end
	if ( !self.DoneStealth or self.GoingForSneakKill ) and self:IsUndetected() then
		self.DoneStealth = true
		for k, v in ipairs(self:NearbyAllies(self:GetPos(),512)) do
			if v:IsPlayer() and v:Alive() and self.FriendlyToPlayers then
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
		if self.SawPlayer then
			self:StandBy()
		else
			self:SneakKill(ent)
		end
	end
	if !IsValid(ent) then return end
	if self.AIType == "Static" then
	
		local should, dif = self:ShouldFace(ent)
		if should then
			self:TurnTo(dif)
			coroutine.wait(0.2)
			return
		end
		if !IsValid(ent) then return end
		coroutine.wait(math.random(2,3))
		
	elseif self.AIType == "Defensive" then
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
				return
			end
		end
		local should, dif = self:ShouldFace(ent)
		if should then
			self:TurnTo(dif)
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
			if table.Count(tbl) > 0 or #tbl > 0 then
				local area = table.Random(tbl)
				self:MoveToPosition( area, self.RunAnim[math.random(1,#self.RunAnim)], self.MoveSpeed*self.MoveSpeedMultiplier )
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
				self:TurnTo(dif)
				coroutine.wait(0.2)
				return
			end
			if !IsValid(ent) then return end
			local p
			if math.random(1,2) == 1 then p = ent:GetPos() end
			local pos = self:FindStrafePos(p)
			local wait = math.Rand(0.5,1)
			local r = math.random(1,3)
			local anim = r == 1 and self.WalkAnim[math.random(#self.WalkAnim)] or self.RunAnim[math.random(#self.RunAnim)]
			local speed = r == 1 and self.MoveSpeed or self.MoveSpeed*self.MoveSpeedMultiplier 
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
end

function ENT:FindStrafePos(pos)
	pos = pos or self:GetPos()
	local navs = navmesh.Find( pos, 512, 100, 10 )
	local tbl = {}
	if table.Count(navs) > 0 or #navs > 0 then
		self.Hiding = true
		local area = table.Random(navs)
		local pos
		if area then pos = area:GetRandomPoint() else pos = self:GetPos() + Vector( math.Rand( -1, 1 ), math.Rand( -1, 1 ), 0 ) * math.random(256,500) end
		return pos
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

function ENT:StartMovingAnimations( anim, speed )
	local ani, typ = self:TransitionChecks( anim, speed )
	if type(anim) == "string" then
		self:ResetSequence( anim )
	else
		self:StartActivity( anim )			-- Move animation
	end
	self.loco:SetDesiredSpeed( speed )		-- Move speed
	self.loco:SetAcceleration( speed+speed )
end

function ENT:MoveToPosition( pos, anim, speed )
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
	self:MoveToPos( pos )
	self:TransitionArrival(typ,enemy)
	local ranim = self.IdleAnim[math.random(#self.IdleAnim)]
	if type(ranim) == "string" then
		self:ResetSequence( ranim )
	else
		self:StartActivity( ranim )			-- Move animation
	end
end	

function ENT:WanderToPosition( pos, anim, speed )
	if !util.IsInWorld( pos ) then return "Invalid" end
	local ani, typ = self:TransitionChecks( anim, speed )
	local enemy = IsValid(self.Enemy)
	if type(anim) == "string" then
		self:ResetSequence( anim )
	else
		self:StartActivity( anim )			-- Move animation
	end
	self.loco:SetDesiredSpeed( speed )		-- Move speed
	self.loco:SetAcceleration( speed+speed )
	self:WanderToPos( pos )
	self:TransitionArrival(typ,enemy)
	local ranim = self.IdleAnim[math.random(#self.IdleAnim)]
	if type(ranim) == "string" then
		self:ResetSequence( ranim )
	else
		self:StartActivity( ranim )			-- Move animation
	end
end

function ENT:OnPlasmaNadeStuck()
	self:Speak("OnPanic")
end

function ENT:OnOtherKilled( victim, info )
	if victim == self then return end
	if self:Health() < 1 then return end
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
			self:ResetAI()
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

function ENT:KeyDown(s)
	local fuckoff = true
	return false
end

function ENT:ViewPunch()
	-- STFU
end

function ENT:GetEyeTrace(pos)
	return util.TraceLine({start = self:GetShootPos(), endpos = pos, filter = self})
end

function ENT:GetAimVector(pos)
	if self.IsControlled then
		return self.DPly:GetAimVector()
	end
	local dir
	if self.SpecificGoal then
		dir = (self.SpecificGoal-self:GetShootPos()):GetNormalized()
	end
	if IsValid(self.Enemy) then
		local p = self.Enemy:WorldSpaceCenter()
		if pos then p = pos end
		if self.GetShootPos then
			return (p-self:GetShootPos()):GetNormalized()
		else
			return (p-self:WorldSpaceCenter()):GetNormalized()
		end
	else
		return dir or self:GetForward()
	end
end

function ENT:StartChasing( ent, anim, speed, los )
	self:ResetSequence( anim )			-- Move animation
	self.loco:SetDesiredSpeed( speed )		-- Move speed
	self:ChaseEnt(ent,los)
end

ENT.NextUpdateT = CurTime()

ENT.UpdateDelay = 0.5

ENT.TraceMask = MASK_ALL

function ENT:OnLoseEnemy()
	self:Speak("endcmbt")
end

function ENT:ChaseEnt(ent,los)
	local path = Path( "Follow" )
	path:SetMinLookAheadDistance( self.PathMinLookAheadDistance )
	path:SetGoalTolerance( self.PathGoalTolerance )
	if !IsValid(ent) then return end
	if los then
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
	local t = CurTime()+15
	while ( path:IsValid() and IsValid(ent) ) do
		if self.NextUpdateT < CurTime() then
			self.NextUpdateT = CurTime()+self.UpdateDelay
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
				self.PushingProp = false
				self.DoingPush = false
			end
			local mins, maxs = ent:GetCollisionBounds()
			local cansee, obstr = self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter()+ent:GetUp()*(maxs*0.25),{self,ent,self:GetOwner()})
			if IsValid(obstr) and ( ( obstr:IsNPC() or obstr:IsPlayer() or obstr:IsNextBot() ) and obstr:Health() > 0 ) and self:CheckRelationships(obstr) == "foe" then
				self:SetEnemy(obstr)
				return "New Target"
			end
			local dist = self:GetPos():DistToSqr(ent:GetPos())
			if !los and cansee then
				return "Obtained LOS"
			elseif los and cansee and dist < self.ShootDist^2 then
				return "Obtained range"
			end
			if self.loco:GetVelocity():IsZero() and self.loco:IsAttemptingToMove() then
				-- We are stuck, don't bother
				return "Give up"
			end
			if dist < self.MeleeRange^2 then
				return self:DoMelee()
			elseif dist > self.LoseEnemyDistance^2 or (!cansee and !los and CurTime() > t) then
				self:OnLoseEnemy()
				self:SetEnemy(nil)
				return "Lost enemy"
			end
		end
		if path:GetAge() > self.RebuildPathTime and !los then
			if self.OnRebuildPath == true then
				self:OnRebuiltPath()
			end	
			path:Compute( self, ent:GetPos() )
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

function ENT:MoveMouth()
	self:DoGestureSeq("pose_face",true,0.25,0.75)
end

function ENT:PoseEyes()
	self:DoGestureSeq("pose_eyes",true,0.1)
end

if SERVER then

	function ENT:Think()
		if self.NBlink < CurTime() then
			self.NBlink = CurTime()+math.random(4,6)
			self:PoseEyes()
		end
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
				if self.VehicleRole == "Gunner" then
					self:SetPos(self.Vehicle:GetBonePosition(self.Vehicle:LookupBone(self.TurretBone))+self:GetUp()*26+self:GetForward()*-20)
				else
					local offs = {
						["Driver"] = self.Vehicle:GetRight()*-18+self.Vehicle:GetUp()*38+self.Vehicle:GetForward()*-16,
						["Passenger"] = self.Vehicle:GetRight()*18+self.Vehicle:GetUp()*6+self.Vehicle:GetForward()*67
					}
					self:SetPos(self.Seat:GetPos()+offs[self.VehicleRole])
				end
			end
		end
		if self.LastThinkTime < CurTime() then -- We can think	
			if GetConVar("ai_disabled"):GetInt() == 1 or self.Flying or self.HaltShoot or self.AnimBusy then return end
			self.LastThinkTime = CurTime()+self.ThinkDelay -- Set when we can think again
			if IsValid(self.Enemy) then
				local ent = self.Enemy
				
				if self.LastCalcTime < CurTime() then -- We can do expensive actions
					self.LastCalcTime = CurTime()+self.AimCalculationT -- Set when we can do the expensive actions again
					local los, obstr = self:IsOnLineOfSight(self:WorldSpaceCenter()+self:GetUp()*40,ent:WorldSpaceCenter(),{self,ent,self:GetOwner()})
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
								self:ResetAI()
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
				
				if self.HasLOSToTarget and !self.DoingMelee then
					local should, dif = self:ShouldFace(ent)
					if should then
						self:AngleTo(dif,target)
						return "Gotta turn"
					end
					if self.AllowGrenade and self.ThrownGrenades < 2 and ( self.DistToTarget < 1024^2 and self.DistToTarget > 256^2) then
						local chances = 5+(#self:PossibleTargets())
						local rand = math.random(100)
						if rand < chances or H3HS:WasSignalGiven("ThrowAllGrenades",5) then
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
	self:ResetSequence(self.IdleAnim[math.random(#self.IdleAnim)])
end

function ENT:AngleTo(dif,target)
	local e
	if dif < 0 then
		e = 1
	else
		e = -1
	end
	for i = 1, math.abs(dif) do
		timer.Simple( 0.01*i, function()
			if IsValid(self) and IsValid(target) then
				self:SetAngles(self:GetAngles()+Angle(0,e,0))
			end
		end )
	end
end

function ENT:Shoot()
	if !IsValid(self.Weapon) then return end
	if self.StopShoot then return end
	if self:Health() < 1 then return end
	self.Weapon:AI_PrimaryAttack()
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

function ENT:FootstepSound()
	local character = self.Voices[self.VoiceType]
	if character and character["OnStep"] and istable(character["OnStep"]) then
		local sound = table.Random(character["OnStep"])
		self:EmitSound(sound,60)
	end
end

function ENT:BodyUpdate()
	local act = self:GetActivity()
	if !self.loco:GetVelocity():IsZero() and self.loco:IsOnGround() and self.loco:IsAttemptingToMove() then
		if !self.LMove then
			self.LMove = CurTime()+0.3
		else
			if self.LMove < CurTime() then
				self:FootstepSound()
				self.LMove = CurTime()+0.3
			end
		end
		local goal = self:GetPos()+self.loco:GetVelocity()
		local y = (goal-self:GetPos()):Angle().y
		local m_y = math.AngleDifference(self:GetAngles().y,y)
		self:SetPoseParameter("move_yaw",-m_y)
		self:SetPoseParameter("walk_yaw",-m_y)
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

function ENT:OnRemove()

end

function ENT:DoAnimationEvent(a)
	-- I don't care
	if a == 1689 then
		local wep = self.Weapon
		if CLIENT then wep = self:GetNWEntity("wep") end
		if !CLIENT then
			--local set = self.AnimSets[self.Weapon:GetClass()] or self.AnimSets["Rifle"]
			self.StopShoot = true
			local a,len = self:LookupSequence(self.ReloadAnim)
			if !self.SayingOnReload and self:Health() > 0 and IsValid(self.Enemy) then
				self.SayingOnReload = true
				self:Speak("OnReload")
				timer.Simple( math.random(8,15), function()
					if IsValid(self) then
						self.SayingOnReload = false
					end
				end )
			end
			self:DoGestureSeq(self.ReloadAnim)
			local func = function()
				self:ResetSequence(self.IdleAnim[math.random(#self.IdleAnim)])
				coroutine.wait(len)
				self.StopShoot = false
				self.Reloading = false
				self:SetAmmo(wep:GetMaxClip1())
				wep:SetClip1(wep:GetMaxClip1())
			end
			table.insert(self.StuffToRunInCoroutine,func)
			self:ResetAI()
		end
	end
end

function ENT:OnKilled( dmginfo ) -- When killed
	hook.Call( "OnNPCKilled", GAMEMODE, self, dmginfo:GetAttacker(), dmginfo:GetInflictor() )
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
			if y <= 135 and y > 45 then -- Left
				anim = "Death_Front_Left_Head"
			elseif y < 225 and y > 135 then -- Front
				anim = "Death_Front_Head_"..math.random(1,2)..""
			elseif y >= 225 and y < 315 then -- Right
				anim = "Death_Front_Right_Head"
			elseif y <= 45 or y >= 315 then -- Back
				anim = "Death_Back_Head"
			end
		else
			if y <= 135 and y > 45 then -- Right
				anim = "Death_Front_Right_Gut"
			elseif y < 225 and y > 135 then -- Front
				anim = "Death_Front_Gut_"..math.random(1,2)..""
			elseif y >= 225 and y < 315 then -- Left
				anim = "Death_Front_Left_Gut"
			elseif y <= 45 or y >= 315 then -- Back
				anim = "Death_Back_Gut_"..math.random(1,2)..""
			end
		end
	else
		return true
	end
	return anim
end

function ENT:DoKilledAnim()
	if !self.KilledDmgInfo:IsDamageType(DMG_BLAST) then
		if self.KilledDmgInfo:GetDamage() <= 150 then
			if math.random(1,2) == 1 then
				self:Speak("dth")
			else
				self:Speak("dth_mjr")
			end
			local anim = self:DetermineDeathAnim(self.KilledDmgInfo)
			if anim == true then 
				local wep = ents.Create(self.Weapon:GetClass())
				wep:SetPos(self.Weapon:GetPos())
				wep:SetAngles(self.Weapon:GetAngles())
				wep:Spawn()
				self.Weapon:Remove()
				local rag = self:CreateRagdoll(self.KilledDmgInfo)
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
					rag = self:CreateRagdoll(DamageInfo())
				end
			end )
			self:PlaySequenceAndPWait(seq, 1, self:GetPos())
		else
			if self.DeathHitGroup == 1 then
				self:Speak("dth_hdsht")
			else
				if math.random(1,2) == 1 then
					self:Speak("dth_slw")
				else
					self:Speak("dth_drama")
				end
			end
			local wep = ents.Create(self.Weapon:GetClass())
			wep:SetPos(self.Weapon:GetPos())
			wep:SetAngles(self.Weapon:GetAngles())
			wep:Spawn()
			self.Weapon:Remove()
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
		self:Speak("dth_fall")
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
		self:PlaySequenceAndWait("any_dead_land")
		local wep = ents.Create(self.Weapon:GetClass())
		wep:SetPos(self.Weapon:GetPos())
		wep:SetAngles(self.Weapon:GetAngles())
		wep:Spawn()
		self.Weapon:Remove()
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
		rag = self:CreateRagdoll(DamageInfo())
	end
end

function ENT:PlaySequenceAndWait( name, speed )

	local len = self:SetSequence( name )
	speed = speed or 1

	self:ResetSequenceInfo()
	self:SetCycle( 0 )
	self:SetPlaybackRate( speed )
	
	self.AnimBusy = true
	timer.Simple( len, function() if IsValid(self) then self.AnimBusy = false end end )

	-- wait for it to finish
	coroutine.wait( len / speed )

end

function ENT:PlaySequenceAndPWait( name, speed, p )
	p = p or self:GetPos()
	local an = self:GetAngles()
	
	if isstring(name) then name = self:LookupSequence(name) end

    local len = self:SetSequence( name )
    speed = speed or 1

    self:ResetSequenceInfo()
    self:SetCycle( 0 )
    self:SetPlaybackRate( speed )
	self.AnimBusy = true
	timer.Simple( len, function() if IsValid(self) then self.AnimBusy = false end end )
    while (self:GetCycle() < 1) do
        local good,pos,ang = self:GetSequenceMovement(name,0,self:GetCycle())
		pos:Rotate(Angle(0,ang.y+an.y,0))
        local position = pos+p    
		if util.IsInWorld(position) then
			 self:SetPos(position)
		end
	--	if self:GetCycle() > 0.7 then
     --       local good,pos,ang = self:GetSequenceMovement(name,0,0.7)
     --       position = p+pos
     --   end
		self:SetAngles(ang+an)
        coroutine.yield()
    end

end

function ENT:PlaySequenceAndMove( name, speed, dir, sp, cyc )
    local len = self:SetSequence( name )
	if isstring(name) then name = self:LookupSequence(name) end
	local stop = false
	timer.Simple( len, function()
		stop = true
	end )
    self:ResetSequenceInfo()
    self:SetCycle( 0 )
    self:SetPlaybackRate( speed )
	self.loco:SetDesiredSpeed(sp)
	self.AnimBusy = true
	timer.Simple( len, function() if IsValid(self) then self.AnimBusy = false end end )
    while (!stop) do
		if self:GetCycle() < cyc then
			self.loco:Approach(self:GetPos()+dir,1)
		end
        coroutine.wait(0.01)
    end

end