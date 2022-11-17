function ENT:SetupAnimations()
	--PrintTable( self:GetSequenceList() )
	self.PatrolMoveAnim = {"Move_Patrol_Unarmed_Up"}
	self.PatrolIdleAnim = {"Patrol_Unarmed_Idle_Down"}
	if self.AITemplate == "MARINE" then
		self.PatrolIdlePoseAnim = {"Patrol_Unarmed_Idle_Posing_1","Patrol_Unarmed_Idle_Posing_2","Combat_Unarmed_Idle_Posing_1","Combat_Unarmed_Idle_Posing_3","Combat_Unarmed_Idle_Posing_2"}
	elseif self.AITemplate == "ELITE" then
		self.PatrolIdlePoseAnim = {"Patrol_Unarmed_Idle_Posing_1","Patrol_Unarmed_Idle_Posing_2","Patrol_Unarmed_Idle_Posing_3"}
	end
	self.TransitionAnims["Patrol_Move_2_Idle"] = "Patrol_Move_2_Patrol_Idle"
	self.TransitionAnims["Patrol_Idle_2_Move"] = "Patrol_Idle_2_Patrol_Move"
	self.DeadAirAnim = "Dead_Airborne"
	self.DeadLandAnim = self:LookupSequence("Dead_Land") > 0 and "Dead_Land" or {"Dead_Land_1","Dead_Land_2"}
	self.AirAnim = "any_airborne"
	-- Warthog--
	self.WarthogDriverIdle = "Warthog_Driver_Idle"
	self.WarthogDriverEnter = "Warthog_Driver_Enter"
	self.WarthogDriverExit = "Warthog_Driver_Exit"
	self.WarthogGunnerIdle = "Warthog_Gunner_Idle"
	self.WarthogGunnerEnter = "Warthog_Gunner_Enter"
	self.WarthogGunnerExit = "Warthog_Gunner_Exit"
	self.WarthogGunnerCelebrate = "Warthog_Gunner_Celebrate"
	self.WarthogGunnerPanic = "Warthog_Gunner_Panic"
	self.WarthogPassengerEnter = "Warthog_Passenger_Enter"
	self.WarthogPassengerExit = "Warthog_Passenger_Exit"
	-- Warthog --
	-- Wraith --
	self.WraithDriverIdle = "Wraith_Driver_Idle"
	self.WraithDriverEnter = "Wraith_Driver_Enter"
	self.WraithDriverExit = "Wraith_Driver_Exit"
	self.WraithGunnerIdle = "Wraith_Gunner_Idle"
	self.WraithGunnerEnter = "Wraith_Gunner_Enter"
	self.WraithGunnerExit = "Wraith_Gunner_Exit"
	-- Wraith --
	-- Prowler --
	self.ProwlerDriverIdle = "Prowler_Driver_Idle"
	self.ProwlerDriverEnter = "Prowler_Driver_Enter"
	self.ProwlerDriverExit = "Prowler_Driver_Exit"
	self.ProwlerGunnerIdle = "Prowler_Gunner_Idle"
	self.ProwlerGunnerEnter = "Prowler_Gunner_Enter"
	self.ProwlerGunnerExit = "Prowler_Gunner_Exit"
	self.ProwlerPassengerLeftIdle = "Prowler_Passenger_Left_Idle"
	self.ProwlerPassengerLeftEnter = "Prowler_Passenger_Left_Enter"
	self.ProwlerPassengerLeftExit = "Prowler_Passenger_Left_Exit"
	self.ProwlerPassengerRightIdle = "Prowler_Passenger_Right_Idle"
	self.ProwlerPassengerRightEnter = "Prowler_Passenger_Right_Enter"
	self.ProwlerPassengerRightExit = "Prowler_Passenger_Right_Exit"
	-- Prowler --
	-- Ghost --
	self.GhostDriverIdle = "Ghost_Idle"
	self.GhostDriverEnter = "Ghost_Enter"
	self.GhostDriverExit = "Ghost_Exit"
	-- Ghost --
	-- Hornet --
	self.HornetDriverIdle = "Hornet_Pilot_Idle"
	self.HornetDriverEnter = "Hornet_Pilot_Enter"
	self.HornetDriverExit = "Hornet_Pilot_Exit"
	self.HornetPassengerLeftEnter = "Hornet_Passenger_Left_Enter"
	self.HornetPassengerLeftExit = "Hornet_Passenger_Left_Exit"
	self.HornetPassengerRightEnter = "Hornet_Passenger_Right_Enter"
	self.HornetPassengerRightExit = "Hornet_Passenger_Right_Exit"
	-- Hornet --
	self.PingFrontAnims = {
		["Chest"] = "Pinged_Armored_Rifle_Front_Chest",
		["Gut"] = "Pinged_Armored_Rifle_Front_Gut",
		["Head"] = "Pinged_Armored_Rifle_Front_Head",
		["Left_Arm"] = "Pinged_Armored_Rifle_Front_Left_Arm",
		["Right_Arm"] = "Pinged_Armored_Rifle_Front_Right_Arm"
	}
	self.PingBackAnims = {
		["Chest"] = "Pinged_Armored_Rifle_Back_Chest",
		["Gut"] = "Pinged_Armored_Rifle_Back_Gut"
	}
	self.FlinchFrontAnims = {
		["Chest"] = "Flinch_Armored_Rifle_Front_Chest",
		["Gut"] = "Flinch_Armored_Rifle_Front_Gut",
		["Head"] = "Flinch_Armored_Rifle_Front_Head",
		["Left_Arm"] = "Flinch_Armored_Rifle_Front_Left_Arm",
		["Right_Arm"] = "Flinch_Armored_Rifle_Front_Right_Arm",
		["Left_Leg"] = "Flinch_Armored_Rifle_Front_Left_Leg",
		["Right_Leg"] = "Flinch_Armored_Rifle_Front_Right_Leg"
	}
	self.FlinchBackAnims = {
		["Chest"] = "Flinch_Armored_Rifle_Back_Chest",
		["Gut"] = "Flinch_Armored_Rifle_Back_Gut"
	}
	self.DeathFrontAnims = {
		["Head"] = {"Die_Front_Head_1","Die_Front_Head_2"},
		["Gut"] =  {"Die_Front_Gut","Die_Front_Gut_1","Die_Front_Gut_2"}
	}
	self.DeathBackAnims = {
		["Head"] = {"Die_Back_Head_1"}
	}
	self.DeathLeftAnims = {
		["Head"] = {"Die_Left_Head_1","Die_Left_Head_2"},
		["Gut"] =  {"Die_Left_Gut"}
	}
	self.DeathRightAnims = {
		["Head"] = {"Die_Right_Head"},
		["Gut"] =  {"Die_Right_Gut"}
	}
	if self.AITemplate == "BRUTE" then
		self.DeathFrontAnims = {
			["Gut"] =  {"Die_Front_Gut"}
		}	
		self.DeathBackAnims = {
			["Head"] = {"Die_Back_Head_1"},
			["Gut"] = {"Die_Back_Gut"}
		}
		self.DeathLeftAnims = {
			["Head"] = {"Die_Left_Head"},
			["Gut"] =  {"Die_Left_Gut_1","Die_Left_Gut_2"}
		}
		self.DeathRightAnims = {
			["Head"] = {"Die_Right_Head"},
			["Gut"] =  {"Die_Right_Gut_1","Die_Right_Gut_2"}
		}
	end
	--print(self.DeadLandAnim)
	if IsValid(self.Weapon) then
		local hold = self:ConfigureWeapon()
		if self.GenericWeaponAnims then
			self.AirAnim = "Combat_Any_Airborne"
			if self.AITemplate == "FLOOD_ELITE" then
				self.BraceAnim = "Brace_Combat_Any_Any"
				self.EvadeLeftAnim = "Evade_Left_Combat_Any_Any"
				self.EvadeRightAnim = "Evade_Right_Combat_Any_Any"
				self.LandHardAnim = "Land_Hard_Combat_Any_Any"
				self.LandAnim = "Land_Soft_Combat_Any_Any"
				self.LeapAnim = "Leap_Any_Any"
				self.PushLeftAnim = "Melee_Smash_Any_Left"
				self.PushRightAnim = "Melee_Smash_Any_Right"
				self.RunCalmAnim = "Move_Combat_Any_Down"
				self.WalkCalmAnim = "Walk_Combat_Any_Down"
				self.WalkAnim = "Walk_Combat_Any_Up"
				self.SurpriseAnim = "Surprised_Combat_Any_Any"
				self.RunAnim = {"Move_Combat_Any_Up"}
				if self.HasSword then
					self.MeleeTackleAnim = "Melee_Combat_Sword_Tackle"
					self.MeleeAirAnim = "Melee_Combat_Sword_Airborne"
					self.MeleeAnim = {"Melee_Combat_Sword"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Sword"}
					self.IdleAnim = "Combat_Any_Any_Idle_Up"
					self.IdleCalmAnim = "Combat_Any_Idle_Down"
				else
					self.IdleAnim = "Combat_Any_Idle_Up"
					self.IdleCalmAnim = "Combat_Any_Idle_Down"
					self.MeleeTackleAnim = "Melee_Combat_Any_Any_Tackle"
					self.MeleeAnim = {"Melee_Combat_Any_1","Melee_Combat_Any_2"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Any_Any"}
				end
				self.PatrolIdleAnim = self.IdleCalmAnim
				self.DeathBackAnims = {
					["Head"] = {"Die_Back_Gut"}
				}
				self.DeathLeftAnims = {
					["Gut"] =  {"Die_Left_Gut"}
				}
				self.DeathRightAnims = {
					["Gut"] =  {"Die_Right_Gut"}
				}
				self.DeathFrontAnims = {
					["Head"] = {"Die_Front_Gut_1","Die_Front_Gut_2"},
					["Gut"] =  {"Die_Front_Gut_1","Die_Front_Gut_2"}
				}
			else
				self.BraceAnim = "Brace_Combat_Any_Any"
				self.EvadeLeftAnim = "Evade_Left_Combat_Any_Any"
				self.EvadeRightAnim = "Evade_Right_Combat_Any_Any"
				self.LandHardAnim = "Land_Hard_Combat_Any_Any"
				self.LandAnim = "Land_Soft_Combat_Any_Any"
				self.LeapAnim = "Leap_Any_Any"
				self.PushLeftAnim = "Melee_Smash_Any_Left"
				self.PushRightAnim = "Melee_Smash_Any_Right"
				self.RunCalmAnim = "Move_Combat_Any_Any_Down"
				self.WalkCalmAnim = "Walk_Combat_Any_Any_Down"
				self.WalkAnim = "Walk_Combat_Any_Any_Up"
				self.SurpriseAnim = "Surprised_Combat_Any_Any"
				self.ReloadAnim = "Reload_Combat_Pr"
				if self.HasSword then
					self.MeleeTackleAnim = "Melee_Combat_Sword_Tackle"
					self.MeleeAirAnim = "Melee_Combat_Sword_Airborne"
					self.MeleeAnim = {"Melee_Combat_Sword"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Sword"}
					self.RunAnim = {"Move_Combat_Any_Any_Up"}
					self.IdleAnim = "Combat_Any_Any_Idle_Up"
					self.IdleCalmAnim = "Combat_Any_Any_Idle_Down"
				else
					if hold == "smg" or hold == "pistol" then
						self.IdleAnim = "Combat_Pistol_Smg_Idle_Up"
						self.IdleCalmAnim = "Combat_Pistol_Smg_Idle_Down"
						self.RunAnim = {"Move_Combat_Pistol_Smg_1_Up","Move_Combat_Pistol_Smg_2_Up"}
						if hold == "pistol" then
							self.ShootAnim = "Attack_Combat_Any_Fire_Pp"
							self.ReloadAnim = "Reload_Combat_Pp"
						else
							self.ShootAnim = "Attack_Combat_Any_Fire_Smg"
						end
					else
						self.IdleAnim = "Combat_Any_Any_Idle_Up"
						self.IdleCalmAnim = "Combat_Any_Any_Idle_Down"
						self.RunAnim = {"Move_Combat_Any_Any_Up"}
						if hold == "physgun" then
							self.ShootAnim = "Attack_Combat_Any_Fire_Bs"
						else
							self.ShootAnim = "Attack_Combat_Any_Fire_Spr"
						end
					end
					self.MeleeTackleAnim = "Melee_Combat_Any_Any_Tackle"
					self.MeleeAnim = {"Melee_Combat_Any_Any_1","Melee_Combat_Any_Any_2"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Any_Any"}
				end
				self.PatrolIdleAnim = self.IdleCalmAnim
				self.DeathBackAnims = {
					["Head"] = {"Die_Back_Gut"}
				}
				self.DeathLeftAnims = {
					["Gut"] =  {"Die_Left_Gut"}
				}
				self.DeathRightAnims = {
					["Gut"] =  {"Die_Right_Gut"}
				}
				self.DeathFrontAnims = {
					["Head"] = {"Die_Front_Head_1","Die_Front_Head_2","Die_Front_Head_3"},
					["Gut"] =  {"Die_Front_Gut_1","Die_Front_Gut_2"}
				}
			end
		else
			local changed = false
			if (self.AITemplate == "BRUTE" and self.BruteWeapons[self.Weapon:GetClass()]) or (self.AITemplate == "GRUNT" and hold != "rpg") then
				if hold == "rifle" then
					changed = true
				end
				hold = "pistol"
			end
			if self.PistolHolds[hold] then
				self.ShootAnim = {"attack_combat_pistol"}
				self.GrenadeAnim = {"Throw_Grenade_Combat_Rifle_1","Throw_Grenade_Combat_Rifle_2"}
				self.TransitionAnims["Move_2_Idle"] = "Combat_Pistol_Move_2_Combat_Idle"
				self.TransitionAnims["Move_2_Idle_Passive"] = "Combat_Pistol_Move_2_Combat_Idle"
				self.TransitionAnims["Walk_2_Idle"] = "Combat_Pistol_Walk_2_Combat_Idle"
				self.TransitionAnims["Walk_2_Idle_Passive"] = "Combat_Pistol_Walk_2_Combat_Idle"
				self.TransitionAnims["Idle_2_Move"] = "Combat_Pistol_Idle_2_Combat_Move"
				self.TransitionAnims["Idle_2_Move_Passive"] = "Combat_Pistol_Idle_2_Combat_Move"
				self.TransitionAnims["Idle_2_Walk"] = "Combat_Pistol_Idle_2_Combat_Walk"
				self.TransitionAnims["Idle_2_Walk_Passive"] = "Combat_Pistol_Idle_2_Combat_Walk"
				self.IdleAnim = {"Combat_Pistol_Idle_Up"}
				self.IdleCalmAnim = {"Combat_Pistol_Idle_Down"}
				self.RunAnim = {"Move_Combat_Pistol_Up"}
				self.RunCalmAnim = {"Move_Combat_Pistol_Down"}
				self.WalkAnim = {"Walk_Combat_Pistol_Up"}
				self.WalkCalmAnim = {"Walk_Combat_Pistol_Down"}
				self.ReloadAnim = "Reload_Combat_Pistol"
				self.DiveLeftAnim = "Dive_Left_Combat_Unarmed"
				self.DiveRightAnim = "Dive_Right_Combat_Unarmed"
				self.DiveFrontAnim = "Dive_Front_Combat_Unarmed"
				self.AirAnim = "Airborne_Combat_Rifle"
				self.LandAnim = "Land_Soft_Combat_Pistol"
				self.LandHardAnim = "Land_Hard_Combat_Pistol"
				self.SurpriseAnim = "Surprised_Combat_Pistol"
				self.CrouchIdleAnim = {"Crouch_Pistol_Idle_Up"}
				self.CrouchMoveAnim = {"move_crouch_pistol_up"}
				self.WarnAnim = {"Point_Combat_Pistol"}
				self.CrouchMoveCalmAnim = {"pistol_crouch_move_passive"}
				self.PushLeftAnim = "Melee_Smash_Combat_Pistol_Left"
				self.PushLeftAnim = "Right_Smash_Combat_Pistol_Left"
				self.TauntAnim = {"Taunt_Combat_Pistol"}
				self.WarthogPassengerIdle = "Warthog_Passenger_Idle_Pistol"
				self.HornetPassengerLeftIdle = "hornet_passenger_left_idle_pistol"
				self.HornetPassengerRightIdle = "hornet_passenger_right_idle_pistol"
				self.ProwlerPassengerLeftIdle = "prowler_passenger_left_idle_pistol"
				self.ProwlerPassengerRightIdle = "prowler_passenger_right_idle_pistol"
				self.MongoosePassengerIdle = "mongoose_passenger_idle_pistol"
				self.ScorpionPassengerIdle = "scorpion_passenger_idle_pistol"
				self.WaveAnim = "Wave_Combat_Pistol"
				self.ShakeFistAnim = {"Shakefist_Combat_Pistol_1","Shakefist_Combat_Pistol_2","Shakefist_Combat_Pistol_3"}
				self.AdvanceAnim = "Signal_Attack_Combat_Pistol"
				self.CheerAnim = "Cheer_Combat_Pistol"
				self.SignalAttackAnim = "Signal_Attack_Combat_Pistol"
				self.WaveAnimGesture = false
				self.AllowGrenade = true
				self.CanMelee = true
				self.EvadeLeftAnim = "Evade_Left_Combat_Pistol"
				self.EvadeRightAnim = "Evade_Right_Combat_Pistol"
				self.DiveFrontAnim = "dive_front_combat_unarmed"
				self.DiveLeftAnim = "dive_left_combat_unarmed"
				self.DiveRightAnim = "dive_right_combat_unarmed"
				self.FallbackAnim = "Signal_Fallback_Combat_Pistol"
				self.HoldAnim = "Signal_Hold_Combat_Pistol"
				self.EquipmentAnim = "Throw_Equipment_Combat_Pistol"
				if self.Weapon:GetClass() == "astw2_halo3_magnum" or self.Weapon:GetClass() == "astw2_halo3_magnum_odst" then
					self.Weapon.BurstLength = 4
				end
				if self.AITemplate == "BRUTE" then
					self.BraceAnim = "Brace_Combat_Pistol"
					self.AirAnim = "Airborne_Combat_Unarmed"
					self.DrawSlowWeaponAnim = {"Draw_Slow_Armored_Pistol"}
					self.DrawFastWeaponAnim = {"Draw_Fast_Armored_Pistol"}
					if self.IsArmored then
						self.MeleeAnim = {"Melee_Armored_Pistol_1","Melee_Armored_Pistol_2"}
						self.MeleeBackAnim = {"Melee_Back_Armored_Pistol"}
						self.GrenadeAnim = {"Throw_Grenade_Armored_Pistol"}
						self.ShootAnim = {"attack_armored_pistol_1","attack_armored_pistol_2","attack_armored_pistol_3"}
						self.TransitionAnims["Move_2_Idle"] = "Combat_Pistol_Move_2_Combat_Idle"
						self.TransitionAnims["Move_2_Idle_Passive"] = "Combat_Pistol_Move_2_Combat_Idle"
						self.TransitionAnims["Walk_2_Idle"] = "Combat_Pistol_Walk_2_Combat_Idle"
						self.TransitionAnims["Walk_2_Idle_Passive"] = "Combat_Pistol_Walk_2_Combat_Idle"
						self.TransitionAnims["Idle_2_Move"] = "Combat_Pistol_Idle_2_Combat_Move"
						self.TransitionAnims["Idle_2_Move_Passive"] = "Combat_Pistol_Idle_2_Combat_Move"
						self.TransitionAnims["Idle_2_Walk"] = "Combat_Pistol_Idle_2_Combat_Walk"
						self.TransitionAnims["Idle_2_Walk_Passive"] = "Combat_Pistol_Idle_2_Combat_Walk"
					else
						self.GrenadeAnim = {"Throw_Grenade_Combat_Pistol"}
						self.MeleeAnim = {"Melee_Combat_Pistol_1"}
						self.MeleeBackAnim = {"Melee_Back_Combat_Pistol"}
					end
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Head"}
					}
				elseif self.AITemplate == "SPARTAN" then
					self.PatrolIdleAnim = {"Combat_Pistol_Idle_Down"}
					self.PatrolMoveAnim = {"Walk_Combat_Pistol_Down"}
					self.GrenadeAnim = {"Throw_Grenade_Combat_Pistol"}
					self.DeathFrontAnims = {
						["Head"] = {"Die_Front_Head"},
						["Gut"] =  {"Die_Front_Gut"}
					}
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Head"},
						["Gut"] =  {"Die_Back_Gut"}
					}
					self.DeathLeftAnims = {
						["Head"] = {"Die_Left_Head"},
						["Gut"] =  {"Die_Left_Gut"}
					}
					self.DeathRightAnims = {
						["Head"] = {"Die_Right_Head"},
						["Gut"] =  {"Die_Right_Gut"}
					}
					if self.Weapon:GetClass() == "astw2_halo3_plasmapistol" then
						self.MeleeAnim = {"Melee_Combat_Pistol_Pp_1","Melee_Combat_Pistol_Pp_2"}
					elseif self.Weapon:GetClass() == "astw2_halo3_needler" then
						self.MeleeAnim = {"Melee_Combat_Pistol_Ne"}
					else
						self.MeleeAnim = {"Melee_Combat_Pistol_Hp_1","Melee_Combat_Pistol_Hp_2"}
					end
				elseif self.AITemplate == "ELITE" then
					self.BraceAnim = "Brace_Combat_Pistol"
					self.ShootAnim = {"attack_combat_pistol_1"}
					self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Pistol"}
					self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Pistol"}
					self.MeleeAnim = {"Melee_Combat_Pistol"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Pistol"}
					self.GrenadeAnim = {"Throw_Grenade_Combat_Pistol"}
					self.WarnAnim = {"Warn_Combat_Pistol"}
					self.PatrolMoveAnim = {"Move_Patrol_Unarmed_Up"}
					self.PatrolIdleAnim = {"Patrol_Pistol_Idle_Up"}
					self.PosingAnims = {"Patrol_Pistol_Idle_Posing_1","Patrol_Pistol_Idle_Posing_2","Patrol_Pistol_Idle_Posing_3"}
					self.DeathFrontAnims = {
						["Head"] = {"Die_Front_Head"},
						["Gut"] =  {"Die_Front_Gut"}
					}
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Head"},
						["Gut"] =  {"Die_Back_Gut"}
					}
					self.DeathLeftAnims = {
						["Head"] = {"Die_Left_Head"},
						["Gut"] =  {"Die_Left_Gut"}
					}
					self.DeathRightAnims = {
						["Head"] = {"Die_Right_Head"},
						["Gut"] =  {"Die_Right_Gut"}
					}
					self.PatrolIdlePoseAnim = {"Patrol_Pistol_Idle_Posing_1","Patrol_Pistol_Idle_Posing_2","Patrol_Pistol_Idle_Posing_3"}
					self.PosingAnims = {"Combat_Pistol_Idle_Posing_1","Combat_Pistol_Idle_Posing_2","Combat_Pistol_Idle_Posing_3","Combat_Pistol_Idle_Posing_4","Combat_Pistol_Idle_Posing_5","Combat_Pistol_Idle_Posing_6","Combat_Pistol_Idle_Posing_7","Combat_Pistol_Idle_Posing_8"}
					if self.Weapon:GetClass() == "astw2_halo3_needler" then
						--print(self.Weapon.Primary.Delay)
						self.Weapon.Primary.Delay = self.Weapon.Primary.Delay*2
					end
				elseif self.AITemplate == "GRUNT" then
					self.RunAnim = {"Move_Pistol_1","Move_Pistol_2","Move_Pistol_3","Move_Pistol_4"}
					self.WalkAnim = {"Move_Pistol_1","Move_Pistol_2","Move_Pistol_3","Move_Pistol_4"}
					self.WanderAnim = {"Move_Pistol_1","Move_Pistol_2","Move_Pistol_3","Move_Pistol_4"}
					self.WalkCalmAnim = {"Move_Pistol_Crouch"}
					self.EvadeLeftAnim = "Evade_Left"
					self.EvadeRightAnim = "Evade_Right"
					self.GrenadeAnim = {"Throw_Grenade"}
					self.AirAnim = "Airborne_Combat_Pistol"
					self.FleePistolMoveAnim = "Flee_Pistol_Move_Front"
					self.FleePistolIdleAnim = "Flee_Pistol_Idle"
					self.DeathFrontAnims = {
						["Head"] = {"Die_Front_Head_1","Die_Front_Head_2"},
						["Gut"] =  {"Die_Front_Gut_3","Die_Front_Gut_1","Die_Front_Gut_2"}
					}
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Gut"}
					}
					self.DiveFrontAnim = "dive_front"
					self.DiveLeftAnim = "dive_left"
					self.DiveRightAnim = "dive_right"
					self.WarnAnim = {"Combat_Pistol_Warn"}
					self.SurpriseAnim = "Combat_Pistol_Surprise_Front"
					self.FlinchFrontAnims = {
						["Chest"] = "Flinch_Front_Chest",
						["Gut"] = "Flinch_Front_Gut",
						["Head"] = "Flinch_Front_Gut",
						["Left_Arm"] = "Flinch_Front_Left_Arm",
						["Right_Arm"] = "Flinch_Front_Right_Arm",
						["Left_Leg"] = "Flinch_Front_Left_Leg",
						["Right_Leg"] = "Flinch_Front_Right_Leg"
					}
					self.FlinchBackAnims = {
						["Chest"] = "Flinch_Back_Chest",
						["Gut"] = "Flinch_Back_Gut"
					}
					--print("a")
					--print(changed)
					
					if changed then
						self.ShootAnim = {"Attack_Plasma_Rifle"}
						--print("no")
					elseif self.Weapon:GetClass() == "astw2_halo3_needler" then
						self.ShootAnim = {"Attack_Needler"}
						--print(self.Weapon.Primary.Delay)
						self.Weapon.Primary.Delay = self.Weapon.Primary.Delay*2
						--print(self.Weapon.Primary.Delay)
					else
						self.ShootAnim = {"Attack_Plasma_Pistol"}
					end
				else
					self.BraceAnim = "Combat_Pistol_Brace"
					self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Pistol"}
					self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Pistol"}
					self.MeleeAnim = {"Melee_Combat_Pistol_1","Melee_Combat_Pistol_2"}
					self.MeleeIsGesture = true
					self.MeleeBackAnim = {"Melee_Back_Combat_Missile"}
					self.PosingAnims = {"Combat_Pistol_Idle_Posing_1","Combat_Pistol_Idle_Posing_2"}
					self.TransitionAnims["Crouch_Idle_2_Idle"] = "Crouch_Pistol_Idle_2_Combat_Idle"
				end
			elseif self.RifleHolds[hold] then
				self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Missile"}
				self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Missile"}
				self.IdleAnim = {"combat_rifle_idle_up"}
				self.IdleCalmAnim = {"combat_rifle_idle_down"}
				self.RunAnim = {"move_combat_rifle_up"}
				self.WalkAnim = {"walk_combat_rifle_up"}
				self.WalkCalmAnim = {"Walk_Combat_Rifle_Down"}
				self.RunCalmAnim = {"move_combat_rifle_down"}
				self.GrenadeAnim = {"Throw_Grenade_Combat_Rifle_1","Throw_Grenade_Combat_Rifle_2"}
				self.EquipmentAnim = "Throw_Equipment_Combat_Support"
				self.AirAnim = "airborne_combat_rifle"
				self.LandAnim = "land_soft_combat_rifle"
				self.LandHardAnim = "land_hard_combat_rifle"
				self.CalmTurnLeftAnim = "turn_left_combat_rifle"
				self.CalmTurnRightAnim = "turn_right_combat_rifle"
				self.TurnLeftAnim = "turn_left_combat_rifle"
				self.TurnRightAnim = "turn_right_combat_rifle"
				self.CrouchTurnLeftAnim = "turn_right_crouch_rifle"
				self.CrouchTurnRightAnim = "turn_left_crouch_rifle"
				self.SurpriseAnim = "surprised_combat_missile"
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
				self.AdvanceAnim = "signal_attack_combat_rifle"
				self.ShakeFistAnim = "shakefist_combat_missile"
				self.CheerAnim = "cheer_combat_rifle"
				self.AllowGrenade = true
				self.CanShootCrouch = true
				self.CanMelee = false
				self.TauntAnim = {"taunt_combat_rifle"}
				self.EvadeLeftAnim = "evade_left_combat_rifle"
				self.EvadeRightAnim = "evade_right_combat_rifle"
				self.DiveFrontAnim = "dive_front_combat_unarmed"
				self.DiveLeftAnim = "dive_left_combat_unarmed"
				self.DiveRightAnim = "dive_right_combat_unarmed"
				self.FallbackAnim = "signal_fallback_combat_rifle"
				if self.Weapon:GetClass() == "astw2_halo3_sniperrifle" then
					self.Weapon.BurstLength = 1
					self.ReloadAnim = "reload_combat_rifle"
					self:DoGestureSeq("Combat_Spr_Grip",false)
					self.ShootAnim = {"attack_combat_rifle_1","attack_combat_rifle_2"}
				elseif hold == "ar2" then
					self.ReloadAnim = "reload_combat_rifle"
					self.ShootAnim = {"attack_combat_rifle_1","attack_combat_rifle_2"}
				elseif hold == "shotgun" then
					self.Weapon.Acc = 0
					self.Weapon.Primary.RecoilAcc = 0
					self.WeaponAccuracy = 9
					self.Weapon.BurstLength = 1
					self.ShootAnim = {"attack_combat_shotgun"}
					self:DoGestureSeq("Combat_Sg_Grip",false)
					self.ReloadAnim = "reload_combat_shotgun"
				elseif hold == "smg" then
					self.ShootAnim = {"attack_combat_rifle_1","attack_combat_rifle_2"}
					self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Pistol"}
					self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Pistol"}
					self:ManipulateBoneAngles(self:LookupBone("l_hand"),Angle(0,0,90))
					self.ReloadAnim = "reload_combat_rifle"
				else
					self.ShootAnim = {"attack_combat_rifle_1","attack_combat_rifle_2"}
					self.ReloadAnim = "reload_combat_rifle"
				end
				if self.AITemplate == "BRUTE" then
					self.BraceAnim = "Brace_Combat_Rifle"
					self.MeleeAnim = {"Melee_Combat_Rifle_1"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Rifle"}
					self.GrenadeAnim = {"Throw_Grenade_Combat_Rifle"}
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Head"}
					}
				elseif self.AITemplate == "SPARTAN" then
					self.PatrolIdleAnim = {"Combat_Rifle_Idle_Down"}
					self.PatrolMoveAnim = {"Walk_Combat_Rifle_Down"}
					self.GrenadeAnim = {"Throw_Grenade_Combat_Rifle"}
					if self.Weapon:GetClass() == "astw2_halo3_carbine" then
						self.MeleeAnim = {"Melee_Combat_Rifle_Cb_1","Melee_Combat_Rifle_Cb_2"}
					elseif hold == "shotgun" then
						self.MeleeAnim = {"Melee_Combat_Rifle_Sg_1","Melee_Combat_Rifle_Sg_2"}
					else
						self.MeleeAnim = {"Melee_Combat_Rifle_Br_1","Melee_Combat_Rifle_Br_2"}
					end
				elseif self.AITemplate == "ELITE" then
					self.BraceAnim = "Brace_Combat_Rifle"
					self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Rifle"}
					self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Rifle"}
					self.MeleeAnim = {"Melee_Combat_Rifle"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Rifle"}
					self.GrenadeAnim = {"Throw_Grenade_Combat_Rifle"}
					self.SurpriseAnim = "surprised_combat_rifle"
					self.EvadeLeftAnim = "evade_left_combat_pistol"
					self.EvadeRightAnim = "evade_right_combat_pistol"
					self.PatrolMoveAnim = {"Move_Patrol_Unarmed_Up"}
					self.PatrolIdleAnim = {"Patrol_Pistol_Idle_Up"}
					self.PosingAnims = {"Patrol_Rifle_Idle_Posing_1","Patrol_Rifle_Idle_Posing_2"}
					self.DeathFrontAnims = {
						["Head"] = {"Die_Front_Head"},
						["Gut"] =  {"Die_Front_Gut"}
					}
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Head"},
						["Gut"] =  {"Die_Back_Gut"}
					}
					self.DeathLeftAnims = {
						["Head"] = {"Die_Left_Head"},
						["Gut"] =  {"Die_Left_Gut"}
					}
					self.DeathRightAnims = {
						["Head"] = {"Die_Right_Head"},
						["Gut"] =  {"Die_Right_Gut"}
					}
					self.PatrolIdlePoseAnim = {"Patrol_Rifle_Idle_Posing_1","Patrol_Rifle_Idle_Posing_2"}
					self.PosingAnims = {"Combat_Rifle_Idle_Posing_1","Combat_Rifle_Idle_Posing_2","Combat_Rifle_Idle_Posing_3","Combat_Rifle_Idle_Posing_4","Combat_Rifle_Idle_Posing_5"}
				else
					self.MeleeAnim = {"Melee_Combat_Rifle_1","Melee_Combat_Rifle_2"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Missile"}
					self.BraceAnim = "Combat_Rifle_Brace"
					self.PosingAnims = {"Combat_Rifle_Idle_Posing_1","Combat_Rifle_Idle_Posing_2","Combat_Rifle_Idle_Posing_3","Combat_Rifle_Idle_Posing_4","Combat_Rifle_Idle_Posing_5","Combat_Rifle_Idle_Posing_6","Combat_Rifle_Idle_Posing_7","Combat_Rifle_Idle_Posing_8","Combat_Rifle_Idle_Posing_9"}
				end
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
			elseif hold == "rpg" and self.AITemplate != "BRUTE" then
				self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Missile"}
				self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Missile"}
				self.IdleAnim = {"combat_missile_idle_up"}
				self.IdleCalmAnim = {"combat_missile_idle_up"}
				self.RunAnim = {"move_combat_missile_up"}
				self.WalkAnim = {"walk_combat_missile_up"}
				self.WalkCalmAnim = {"walk_combat_missile_up"}
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
				self.PushLeftAnim = {"melee_smash_combat_missile_left"}
				self.PushRightAnim = {"melee_smash_combat_missile_right"}
				self.WaveAnim = "wave_combat_missile"
				self.AdvanceAnim = "signal_advance_combat_missile"
				self.ShakeFistAnim = "shakefist_combat_missile"
				self.CheerAnim = "cheer_combat_missile"
				self.GrenadeAnim = {"Throw_Grenade_Combat_Missile"}
				self.AllowGrenade = true
				self.CanShootCrouch = true
				self.CanMelee = false
				self.TauntAnim = {"taunt_combat_missile"}
				self.EvadeLeftAnim = "evade_left_combat_missile"
				self.EvadeRightAnim = "evade_right_combat_missile"
				self.DiveFrontAnim = "dive_front_combat_unarmed"
				self.DiveLeftAnim = "dive_left_combat_unarmed"
				self.DiveRightAnim = "dive_right_combat_unarmed"
				self.FallbackAnim = "signal_fallback_combat_missile"
				if self.AITemplate == "SPARTAN" then
					self.PatrolIdleAnim = {"combat_missile_idle_up"}
					self.PatrolMoveAnim = {"walk_combat_missile_up"}
					self.CanMelee = true
				elseif self.AITemplate == "ELITE" then
					self.MeleeAnim = {"Melee_Combat_Missile"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Missile"}
					self.GrenadeAnim = {"Throw_Grenade_Combat_Missile"}
					self.CanMelee = true
				elseif self.AITemplate == "GRUNT" then
					self.PatrolIdleAnim = {"Patrol_Missile_Idle_1","Patrol_Missile_Idle_2","Patrol_Missile_Idle_3"}
					self.PatrolMoveAnim = {"Move_Missile_1"}
					self.RunAnim = {"Move_Missile_1","Move_Missile_2"}
					self.WalkAnim = {"Move_Missile_1","Move_Missile_2"}
					self.WalkCalmAnim = {"Move_Missile_1","Move_Missile_2"}
					self.WanderAnim = {"Move_Missile_1","Move_Missile_2"}
					self.EvadeLeftAnim = "Evade_Left"
					self.EvadeRightAnim = "Evade_Right"
					self.GrenadeAnim = {"Throw_Grenade_Missile"}
					self.DiveFrontAnim = "dive_front"
					self.DiveLeftAnim = "dive_left"
					self.DiveRightAnim = "dive_right"
					self.AirAnim = "Airborne_Combat_Missile"
					self.FleePistolMoveAnim = "Flee_Pistol_Move_Front"
					self.FleePistolIdleAnim = "Flee_Pistol_Idle"
					self.DeathFrontAnims = {
						["Head"] = {"Die_Front_Head_1","Die_Front_Head_2"},
						["Gut"] =  {"Die_Front_Gut_3","Die_Front_Gut_1","Die_Front_Gut_2"}
					}
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Gut"}
					}
					self.MoveSpeed = 120
					self.MoveSpeedMultiplier = 1
					self.WarnAnim = {"Combat_Missile_Warn"}
					self.SurpriseAnim = "Combat_Missile_Surprise_Front"
					self.FlinchFrontAnims = {
						["Chest"] = "Flinch_Front_Chest",
						["Gut"] = "Flinch_Front_Gut",
						["Head"] = "Flinch_Front_Gut",
						["Left_Arm"] = "Flinch_Front_Left_Arm",
						["Right_Arm"] = "Flinch_Front_Right_Arm",
						["Left_Leg"] = "Flinch_Front_Left_Leg",
						["Right_Leg"] = "Flinch_Front_Right_Leg"
					}
					self.FlinchBackAnims = {
						["Chest"] = "Flinch_Back_Chest",
						["Gut"] = "Flinch_Back_Gut"
					}
					--print("a")
					--print(changed)
					
					if changed then
						self.ShootAnim = {"Attack_Plasma_Rifle"}
						--print("no")
					elseif self.Weapon:GetClass() == "astw2_halo3_needler" then
						self.ShootAnim = {"Attack_Needler"}
						--print(self.Weapon.Primary.Delay)
						self.Weapon.Primary.Delay = self.Weapon.Primary.Delay*2
						--print(self.Weapon.Primary.Delay)
					else
						self.ShootAnim = {"Attack_Plasma_Pistol"}
					end
					self.ShootAnim = {"Attack_Fuel_Rod"}
					self.PosingAnims = {"Combat_Missile_Idle_Posing_1","Combat_Missile_Idle_Posing_2"}
				else
					self.PosingAnims = {"Combat_Missile_Idle_Posing_1","Combat_Missile_Idle_Posing_2"}
				end
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
			elseif hold == "physgun" or ( hold == "rpg" and self.AITemplate == "BRUTE" ) then
				self:AdjustWeapon(self.Weapon,true)
				if self.IsArmored then
					self.EquipmentAnim = "Throw_Equipment_Armored_Support"
					self.MeleeAnim = {"Melee_Armored_Support_1","Melee_Armored_Support_2"}
				else
					self.EquipmentAnim = "Throw_Equipment_Combat_Support"
					self.MeleeAnim = {"Melee_Combat_Support_1"}
				end
				self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Support"}
				self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Support"}
				self.IdleAnim = {"combat_support_idle_up"}
				self.IdleCalmAnim = {"combat_support_idle_up"}
				self.RunAnim = {"move_combat_support_up"}
				self.WalkAnim = {"walk_combat_support_up"}
				self.RunCalmAnim = {"move_combat_support_up"}
				self.MeleeAnim = {"Melee_Combat_support_1"}
				self.MeleeBackAnim = {"Melee_Back_Combat_Missile"}
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
				self.PushLeftAnim = {"melee_smash_combat_support_left"}
				self.PushRightAnim = {"melee_smash_combat_support_right"}
				self.WaveAnim = "wave_combat_support"
				self.AdvanceAnim = "signal_attack_combat_missile"
				self.ShakeFistAnim = "shakefist_combat_support"
				self.CheerAnim = "cheer_combat_support"
				self.GrenadeAnim = {"Throw_Grenade_Combat_Rifle_1","Throw_Grenade_Combat_Rifle_2"}
				self.NoSurpriseAnim = true
				self.NoWarnAnim = true
				self.AllowGrenade = false
				self.CanShootCrouch = true
				self.CanMelee = false
				self.TauntAnim = {"taunt_combat_support"}
				self.EvadeLeftAnim = "evade_left_combat_support"
				self.EvadeRightAnim = "evade_right_combat_support"
				self.DiveFrontAnim = "dive_front_combat_unarmed"
				self.DiveLeftAnim = "dive_left_combat_unarmed"
				self.DiveRightAnim = "dive_right_combat_unarmed"
				self.FallbackAnim = "signal_fallback_combat_support"
				self.DeathBackAnims = {
					["Head"] = {"Die_Back_Head"}
				}
				if self.AITemplate == "SPARTAN" then
					self.PatrolIdleAnim = {"combat_support_idle_up"}
					self.GrenadeAnim = {"Throw_Grenade_Combat_Support"}
				else
					self.PatrolIdleAnim = {"Patrol_Pistol_Idle_Up"}
				end
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
			elseif hold == "knife" or hold == "melee" then
				self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Sword"}
				self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Sword"}
				self.IdleAnim = {"combat_Sword_idle_up"}
				self.IdleCalmAnim = {"combat_Sword_idle_up"}
				self.RunAnim = {"move_combat_Sword_up"}
				self.WalkAnim = {"walk_combat_Sword_up"}
				self.RunCalmAnim = {"move_combat_Sword_up"}
				self.MeleeAnim = {"Melee_Combat_Sword"}
				self.MeleeBackAnim = {"Melee_Back_Combat_Sword"}
				self.ShootAnim = {"attack_combat_Sword_1"}
				self.ReloadAnim = "reload_combat_Sword"
				self.AirAnim = "airborne_combat_Sword"
				self.LandAnim = "land_soft_combat_Sword"
				self.LandHardAnim = "land_hard_combat_Sword"
				self.CalmTurnLeftAnim = "turn_left_combat_Sword"
				self.CalmTurnRightAnim = "turn_right_combat_Sword"
				self.TurnLeftAnim = "turn_left_combat_Sword"
				self.TurnRightAnim = "turn_right_combat_Sword"
				self.CrouchTurnLeftAnim = "turn_right_crouch_Sword"
				self.CrouchTurnRightAnim = "turn_left_crouch_Sword"
				self.WarthogPassengerIdle = "warthog_passenger_idle_Sword"
				self.HornetPassengerLeftIdle = "hornet_passenger_left_idle_Sword"
				self.HornetPassengerRightIdle = "hornet_passenger_right_idle_Sword"
				self.ProwlerPassengerLeftIdle = "prowler_passenger_left_idle_Sword"
				self.ProwlerPassengerRightIdle = "prowler_passenger_right_idle_Sword"
				self.MongoosePassengerIdle = "mongoose_passenger_idle_Sword"
				self.ScorpionPassengerIdle = "scorpion_passenger_idle_Sword"
				self.SurpriseAnim = "surprised_combat_Sword"
				self.WarnAnim = {"warn_combat_Sword"}
				self.CrouchIdleAnim = {"crouch_Sword_idle_up"}
				self.CrouchMoveAnim = {"move_crouch_Sword_up"}
				self.PushLeftAnim = {"melee_smash_combat_Sword_left"}
				self.PushRightAnim = {"melee_smash_combat_Sword_right"}
				self.WaveAnim = "wave_combat_Sword"
				self.AdvanceAnim = "signal_advance_combat_Sword"
				self.ShakeFistAnim = "shakefist_combat_Sword"
				self.CheerAnim = "cheer_combat_Sword"
				self.GrenadeAnim = {"Throw_Grenade_Combat_Sword"}
				self.AllowGrenade = true
				self.CanShootCrouch = true
				self.CanMelee = false
				self.TauntAnim = {"taunt_combat_Sword"}
				self.EvadeLeftAnim = "evade_left_combat_Sword"
				self.EvadeRightAnim = "evade_right_combat_Sword"
				self.DiveFrontAnim = "dive_front_combat_unarmed"
				self.DiveLeftAnim = "dive_left_combat_unarmed"
				self.DiveRightAnim = "dive_right_combat_unarmed"
				self.FallbackAnim = "signal_fallback_combat_Sword"
				if self.AITemplate == "SPARTAN" then
					self.PatrolIdleAnim = {"combat_Sword_idle_up"}
					self.PatrolMoveAnim = {"walk_combat_Sword_up"}
				elseif self.AITemplate == "ELITE" then
					self.PatrolIdleAnim = {"Patrol_Pistol_Idle_Up"}
					self.MeleeAnim = {"Melee_Combat_Sword_1","Melee_Combat_Sword_2"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Sword"}
					self.GrenadeAnim = {"Throw_Grenade_Combat_Sword"}
					self.BraceAnim = "Brace_Combat_Pistol"
					self.PatrolIdlePoseAnim = {"Patrol_Sword_Idle_Posing_1","Patrol_Sword_Idle_Posing_2","Patrol_Sword_Idle_Posing_3"}
					self.PosingAnims = {"Combat_Sword_Idle_Posing_1","Combat_Sword_Idle_Posing_2"}
				else
					self.BraceAnim = "Combat_Pistol_Brace"
				end
				self.DodgeChance = 0
				self.MeleeDamage = 100
				self.MeleeRange = 150
				self.MeleeConeAngle = 120
				self.HasMeleeWeapon = true
				self.HasSword = true
				self.TransitionAnims["Move_2_Idle"] = "combat_Sword_move_2_combat_idle"
				self.TransitionAnims["Move_2_Idle_Passive"] = "combat_Sword_move_2_combat_idle"
				self.TransitionAnims["Walk_2_Idle"] = "combat_Sword_walk_2_combat_idle"
				self.TransitionAnims["Walk_2_Idle_Passive"] = "combat_Sword_walk_2_combat_idle"
				self.TransitionAnims["Idle_2_Move"] = "combat_Sword_idle_2_combat_move"
				self.TransitionAnims["Idle_2_Move_Passive"] = "combat_Sword_idle_2_combat_move"
				self.TransitionAnims["Idle_2_Walk"] = "combat_Sword_idle_2_combat_walk"
				self.TransitionAnims["Idle_2_Walk_Passive"] = "combat_Sword_idle_2_combat_walk"
				self.TransitionAnims["Idle_2_Guard"] = "patrol_unarmed_idle_posing"
				self.TransitionAnims["Idle_2_Crouch"] = "combat_Sword_idle_2_crouch_idle"
				self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "crouch_Sword_move_2_crouch_idle"
				self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "crouch_Sword_move_2_crouch_idle"
				self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "crouch_Sword_walk_2_crouch_idle"
				self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "crouch_Sword_walk_2_crouch_idle"
				self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "crouch_Sword_idle_2_crouch_move"
				self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "crouch_Sword_idle_2_crouch_move"
				self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "crouch_Sword_idle_2_crouch_walk"
				self.TransitionAnims["Crouch_Idle_2_Idle"] = "crouch_Sword_idle_2_crouch_walk"
			elseif hold == "melee2" then
				self.EquipmentAnim = "Throw_Equipment_Combat_Pistol"
				self.DrawSlowWeaponAnim = {"Draw_Slow_Combat_Hammer"}
				self.DrawFastWeaponAnim = {"Draw_Fast_Combat_Hammer"}
				self.IdleAnim = {"combat_Hammer_idle_up"}
				self.IdleCalmAnim = {"combat_Hammer_idle_up"}
				self.RunAnim = {"move_combat_Hammer_up"}
				self.WalkAnim = {"walk_combat_Hammer_up"}
				self.RunCalmAnim = {"move_combat_Hammer_up"}
				self.MeleeAnim = {"Melee_Combat_Hammer_Strike_1","Melee_Combat_Hammer_Strike_2"}
				self.MeleeBackAnim = {"Melee_Back_Hammer"}
				self.ShootAnim = {"attack_combat_Hammer_1"}
				self.ReloadAnim = "reload_combat_Hammer"
				self.AirAnim = "airborne_combat_Hammer"
				self.LeapAnim = "Leap_Combat_Hammer"
				self.LeapAirAnim = "Leap_Combat_Hammer_Airborne"
				self.LeapMeleeAnim = "Leap_Combat_Hammer_Melee"
				self.LandAnim = "land_soft_combat_Hammer"
				self.LandHardAnim = "land_hard_combat_Hammer"
				self.CalmTurnLeftAnim = "turn_left_combat_Hammer"
				self.CalmTurnRightAnim = "turn_right_combat_Hammer"
				self.TurnLeftAnim = "turn_left_combat_Hammer"
				self.TurnRightAnim = "turn_right_combat_Hammer"
				self.CrouchTurnLeftAnim = "turn_right_crouch_Hammer"
				self.CrouchTurnRightAnim = "turn_left_crouch_Hammer"
				self.WarthogPassengerIdle = "warthog_passenger_idle_Hammer"
				self.HornetPassengerLeftIdle = "hornet_passenger_left_idle_Hammer"
				self.HornetPassengerRightIdle = "hornet_passenger_right_idle_Hammer"
				self.ProwlerPassengerLeftIdle = "prowler_passenger_left_idle_Hammer"
				self.ProwlerPassengerRightIdle = "prowler_passenger_right_idle_Hammer"
				self.MongoosePassengerIdle = "mongoose_passenger_idle_Hammer"
				self.ScorpionPassengerIdle = "scorpion_passenger_idle_Hammer"
				self.SurpriseAnim = "surprised_combat_Hammer"
				self.WarnAnim = {"warn_combat_Hammer"}
				self.CrouchIdleAnim = {"crouch_Hammer_idle_up"}
				self.CrouchMoveAnim = {"move_crouch_Hammer_up"}
				self.PushLeftAnim = {"melee_smash_combat_Hammer_left"}
				self.PushRightAnim = {"melee_smash_combat_Hammer_right"}
				self.WaveAnim = "wave_combat_Hammer"
				self.AdvanceAnim = "signal_advance_combat_Hammer"
				self.ShakeFistAnim = "shakefist_combat_Hammer"
				self.CheerAnim = "cheer_combat_Hammer"
				self.GrenadeAnim = {"Throw_Grenade_Combat_Hammer"}
				self.AllowGrenade = true
				self.CanShootCrouch = true
				self.CanMelee = false
				self.TauntAnim = {"taunt_combat_Hammer"}
				self.EvadeLeftAnim = "evade_left_combat_Hammer"
				self.EvadeRightAnim = "evade_right_combat_Hammer"
				self.DiveFrontAnim = "dive_front_combat_unarmed"
				self.DiveLeftAnim = "dive_left_combat_unarmed"
				self.DiveRightAnim = "dive_right_combat_unarmed"
				self.FallbackAnim = "signal_fallback_combat_Hammer"
				self.MeleeRange = 150
				if self.AITemplate == "SPARTAN" then
					self.PatrolIdleAnim = {"combat_Hammer_idle_up"}
					self.PatrolMoveAnim = {"walk_combat_Hammer_up"}
				elseif self.AITemplate == "ELITE" then
					self.GrenadeAnim = {"Throw_Grenade_Combat_Hammer"}
					self.MeleeIsGesture = true
					self.DodgeChance = 0
				else
					self.MeleeFromWeapon = true
					self.MeleeAnim = {"Melee_Combat_Hammer_1","Melee_Combat_Hammer_2"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Hammer"}
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Head"}
					}
				end
				self.HasMeleeWeapon = true
				self.TransitionAnims["Move_2_Idle"] = "combat_Hammer_move_2_combat_idle"
				self.TransitionAnims["Move_2_Idle_Passive"] = "combat_Hammer_move_2_combat_idle"
				self.TransitionAnims["Walk_2_Idle"] = "combat_Hammer_walk_2_combat_idle"
				self.TransitionAnims["Walk_2_Idle_Passive"] = "combat_Hammer_walk_2_combat_idle"
				self.TransitionAnims["Idle_2_Move"] = "combat_Hammer_idle_2_combat_move"
				self.TransitionAnims["Idle_2_Move_Passive"] = "combat_Hammer_idle_2_combat_move"
				self.TransitionAnims["Idle_2_Walk"] = "combat_Hammer_idle_2_combat_walk"
				self.TransitionAnims["Idle_2_Walk_Passive"] = "combat_Hammer_idle_2_combat_walk"
				self.TransitionAnims["Idle_2_Guard"] = "patrol_unarmed_idle_posing"
				self.TransitionAnims["Idle_2_Crouch"] = "combat_Hammer_idle_2_crouch_idle"
				self.TransitionAnims["Crouch_Move_2_Crouch_Idle"] = "crouch_Hammer_move_2_crouch_idle"
				self.TransitionAnims["Crouch_Move_2_Crouch_Idle_Passive"] = "crouch_Hammer_move_2_crouch_idle"
				self.TransitionAnims["Crouch_Walk_2_Crouch_Idle"] = "crouch_Hammer_walk_2_crouch_idle"
				self.TransitionAnims["Crouch_Walk_2_Crouch_Idle_Passive"] = "crouch_Hammer_walk_2_crouch_idle"
				self.TransitionAnims["Crouch_Idle_2_Crouch_Move"] = "crouch_Hammer_idle_2_crouch_move"
				self.TransitionAnims["Crouch_Idle_2_Crouch_Move_Passive"] = "crouch_Hammer_idle_2_crouch_move"
				self.TransitionAnims["Crouch_Idle_2_Crouch_Walk"] = "crouch_Hammer_idle_2_crouch_walk"
				self.TransitionAnims["Crouch_Idle_2_Idle"] = "crouch_Hammer_idle_2_crouch_walk"
			end
		end
		if self.ItsBerserkinTime then -- Berserk guy or something Idk
			if self.AITemplate == "BRUTE" then
				self.DeathBackAnims = {
					["Head"] = {"Die_Back_Head"}
				}
				self.TransitionAnims["Idle_2_Move"] = "Berserk_2_Any_Move"
				self.TransitionAnims["Move_2_Idle"] = "Berserk_Unarmed_Move_2_Any_Idle"
				if self.IsArmored then
					if self.BruteWeapons[self.Weapon:GetClass()] then
						self.BerserkStartAnim = {"Berserk_Armored_Pistol"}
					else
						self.BerserkStartAnim = {"Berserk_Armored_Rifle_1","Berserk_Armored_Rifle_2"}
					end
				else
					if self.BruteWeapons[self.Weapon:GetClass()] then
						self.BerserkStartAnim = {"Berserk_Combat_Pistol_1"}
					else
						self.BerserkStartAnim = {"Berserk_Combat_Rifle_1","Berserk_Combat_Rifle_2"}
					end
				end
				self.IdleAnim = {"Berserk_Unarmed_Idle_Down"}
				self.BerserkEndAnim = {"Berserk_To_Armored_Idle_1","Berserk_To_Armored_Idle_2"}
				self.DiveLeftAnim = "Dive_Left_Berserk_Unarmed"
				self.DiveRightAnim = "Dive_Right_Berserk_Unarmed"
				self.DiveFrontAnim = "Dive_Front_Berserk_Unarmed"
				self.EvadeLeftAnim = "Evade_Left_Berserk_Unarmed"
				self.EvadeRightAnim = "Evade_Right_Berserk_Unarmed"
				self.FlinchFrontAnims = {
					["Chest"] = "Flinch_Berserk_Unarmed_Front_Chest",
					["Gut"] = "Flinch_Berserk_Unarmed_Front_Gut",
					["Head"] = "Flinch_Berserk_Unarmed_Front_Head",
					["Left_Arm"] = "Flinch_Berserk_Unarmed_Front_Left_Arm",
					["Right_Arm"] = "Flinch_Berserk_Unarmed_Front_Right_Arm",
					["Left_Leg"] = "Flinch_Berserk_Unarmed_Front_Left_Leg",
					["Right_Leg"] = "Flinch_Berserk_Unarmed_Front_Right_Leg"
				}
				self.FlinchBackAnims = {
					["Chest"] = "Flinch_Berserk_Unarmed_Back_Chest",
					["Gut"] = "Flinch_Berserk_Unarmed_Back_Gut"
				}
				self.PingFrontAnims = {
					["Chest"] = "Pinged_Berserk_Unarmed_Front_Chest",
					["Gut"] = "Pinged_Berserk_Unarmed_Front_Gut",
					["Head"] = "Pinged_Berserk_Unarmed_Front_Head",
					["Left_Arm"] = "Pinged_Berserk_Unarmed_Front_Left_Arm",
					["Right_Arm"] = "Pinged_Berserk_Unarmed_Front_Right_Arm"
				}
				self.PingBackAnims = {
					["Chest"] = "Pinged_Berserk_Unarmed_Back_Chest",
					["Gut"] = "Pinged_Berserk_Unarmed_Back_Gut"
				}
				self.LandAnim = "Land_Soft_Berserk_Unarmed"
				self.MeleeAnim = {"Melee_Berserk_Unarmed_1","Melee_Berserk_Unarmed_2"}
				self.MeleeTackleAnim = "Melee_Berserk_Unarmed_Tackle"
				self.RunAnim = {"Move_Berserk_Unarmed_Down"}
			else
				self.BerserkStartAnim = {"Berserk_Combat_Pistol"}
			end
		end
	else
		if self.DoesntUseWeapons then
			self.IdleCalmAnim = {"combat_idle"}
			self.PatrolIdleAnim = {"patrol_idle"}
			self.IdleAnim = {"combat_idle"}
			self.RunAnim = {"move_any"}
			self.CrouchMoveAnim = {"crouch_any_move"}
			self.WanderAnim = {"move_any_patrol"}
			self.PatrolMoveAnim = {"move_any_patrol"}
			self.SurpriseAnim = "Surprised"
			self.WarnAnim = "Warn"
			self.LandAnim = "Land_Soft_Any"
			self.LandHardAnim = "Land_Hard_Any"
			self.MeleeAnim = {"Melee_1","Melee_2","Melee_3","Melee_4"}
			self.MeleeBackAnim = {"Melee_Back"}
			self.MeleeLeftAnim = {"Melee_Left"}
			self.MeleeRightAnim = {"Melee_Right"}
			self.LeapAirAnim = "Leap_Airborne"
			if self.AITemplate == "FLOOD_INFECTION" then
				self.AirAnim = "Airborne"
				self.IdleAnim = {"Idle_7","Idle_6","Idle_5","Idle_4","Idle_3","Idle_2","Idle_1"}
				self.MeleeAnim = {"Melee_1","Melee_2","Melee_3"}
				self.RunAnim = {"Move_9_Any","Move_8_Any","Move_7_Any","Move_6_Any","Move_5_Any","Move_4_Any","Move_3_Any","Move_2_Any","Move_1_Any"}
				self.CrouchMoveAnim = {"Move_9_Any","Move_8_Any","Move_7_Any","Move_6_Any","Move_5_Any","Move_4_Any","Move_3_Any","Move_2_Any","Move_1_Any"}
				self.WanderAnim = {"Move_9_Any","Move_8_Any","Move_7_Any","Move_6_Any","Move_5_Any","Move_4_Any","Move_3_Any","Move_2_Any","Move_1_Any"}
				self.PatrolMoveAnim = {"Move_9_Any","Move_8_Any","Move_7_Any","Move_6_Any","Move_5_Any","Move_4_Any","Move_3_Any","Move_2_Any","Move_1_Any"}
				self.InfectAnims = {
					["MARINE"] = {"Flood_Wrestle"},
					["ELITE"] = {"Flood_Wrestle_Elite"},
					["BRUTE"] = {"Flood_Wrestle_Brute"},
				}
			end
		else
			if self.AITemplate == "FLOOD_ELITE" then
				self.BraceAnim = "Brace_Combat_Any_Any"
				self.EvadeLeftAnim = "Evade_Left_Combat_Any_Any"
				self.EvadeRightAnim = "Evade_Right_Combat_Any_Any"
				self.LandHardAnim = "Land_Hard_Combat_Any_Any"
				self.LandAnim = "Land_Soft_Combat_Any_Any"
				self.LeapAnim = "Leap_Any_Any"
				self.PushLeftAnim = "Melee_Smash_Any_Left"
				self.PushRightAnim = "Melee_Smash_Any_Right"
				self.RunCalmAnim = "Move_Combat_Any_Down"
				self.WalkCalmAnim = "Walk_Combat_Any_Down"
				self.WalkAnim = "Walk_Combat_Any_Up"
				self.SurpriseAnim = "Surprised_Combat_Any_Any"
				self.RunAnim = {"Move_Combat_Any_Up"}
				if self.HasSword then
					self.MeleeTackleAnim = "Melee_Combat_Sword_Tackle"
					self.MeleeAirAnim = "Melee_Combat_Sword_Airborne"
					self.MeleeAnim = {"Melee_Combat_Sword"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Sword"}
					self.IdleAnim = "Combat_Any_Any_Idle_Up"
					self.IdleCalmAnim = "Combat_Any_Idle_Down"
				else
					self.IdleAnim = "Combat_Any_Idle_Up"
					self.IdleCalmAnim = "Combat_Any_Idle_Down"
					self.MeleeTackleAnim = "Melee_Combat_Any_Any_Tackle"
					self.MeleeAnim = {"Melee_Combat_Any_1","Melee_Combat_Any_2"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Any_Any"}
				end
				self.PatrolIdleAnim = self.IdleCalmAnim
				self.DeathBackAnims = {
					["Head"] = {"Die_Back_Gut"}
				}
				self.DeathLeftAnims = {
					["Gut"] =  {"Die_Left_Gut"}
				}
				self.DeathRightAnims = {
					["Gut"] =  {"Die_Right_Gut"}
				}
				self.DeathFrontAnims = {
					["Head"] = {"Die_Front_Gut_1","Die_Front_Gut_2"},
					["Gut"] =  {"Die_Front_Gut_1","Die_Front_Gut_2"}
				}
			else
				self.RunAnim = {"Move_Berserk_Unarmed_Down"}
				self.IdleAnim = {"Combat_Unarmed_Idle_Down"}
				self.WaveAnim = "wave_combat_unarmed"
				self.ShakeFistAnim = "shakefist_combat_unarmed"
				self.TauntAnim = {"taunt_combat_unarmed"}
				self.FallbackAnim = "signal_fallback_combat_unarmed"
				self.BraceAnim = "brace_combat"
				self.AdvanceAnim = "signal_advance_combat_unarmed"
				if self.GenericWeaponAnims then
					self.ShakeFistAnim = nil
					self.AirAnim = "Combat_Any_Airborne"
					self.BraceAnim = "Brace_Combat_Unarmed"
					self.IdleAnim = {"Combat_Unarmed_Idle_Up"}
					self.IdleCalmAnim = {"Combat_Unarmed_Idle_Up"}
					self.MeleeTackleAnim = "Melee_Combat_Any_Any_Tackle"
					self.MeleeAnim = {"Melee_Combat_Any_Any_1","Melee_Combat_Any_Any_2"}
					self.MeleeBackAnim = {"Melee_Back_Combat_Any_Any"}
					self.EvadeLeftAnim = "Evade_Left_Combat_Any_Unarmed"
					self.EvadeRightAnim = "Evade_Right_Combat_Any_Unarmed"
					self.LandHardAnim = "Land_Hard_Combat_Any_Any"
					self.LandAnim = "Land_Soft_Combat_Any_Any"
					self.LeapAnim = "Leap_Any_Any"
					self.PushLeftAnim = "Melee_Smash_Unarmed_Left"
					self.PushRightAnim = "Melee_Smash_Unarmed_Right"
					self.RunAnim = {"Move_Combat_Unarmed_1_Up","Move_Combat_Unarmed_2_Up"}
					self.SurpriseAnim = "Surprised_Combat_Unarmed"
					self.WalkAnim = "Walk_Combat_Unarmed_Up"
					self.WalkCalmAnim = "Walk_Combat_Unarmed_Up"
					self.PatrolIdleAnim = self.IdleCalmAnim
					self.DeathBackAnims = {
						["Head"] = {"Die_Back_Gut"}
					}
					self.DeathLeftAnims = {
						["Gut"] =  {"Die_Left_Gut"}
					}
					self.DeathRightAnims = {
						["Gut"] =  {"Die_Right_Gut"}
					}
					self.DeathFrontAnims = {
						["Head"] = {"Die_Front_Head_1","Die_Front_Head_2","Die_Front_Head_3"},
						["Gut"] =  {"Die_Front_Gut_1","Die_Front_Gut_2"}
					}
				end
			end
		end
	end
end