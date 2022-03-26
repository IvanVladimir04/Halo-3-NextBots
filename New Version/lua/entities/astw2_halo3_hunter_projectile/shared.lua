ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Hunter Projectile"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/halo/combat_evolved/weapons/grenade_plasma.mdl"
ENT.FuseTime = 5
ENT.ArmTime = 0
ENT.ImpactFuse = false
ENT.PlasmaDamage = 15
AddCSLuaFile()

function ENT:Arm()
    if SERVER then
        
		
    end
end


function ENT:Initialize()
    if SERVER then
		ParticleEffectAttach( "astw2_halo_3_plasma_pistol_trail", PATTACH_POINT_FOLLOW, self, 0 )
		util.SpriteTrail( self, 0, Color(185,255,85,200), false, math.random(48,80), math.random(16,32), 0.42, 0.01, "effects/halo3/hunter_beam_final" )
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
        self:DrawShadow( true )
		self.Armed = false
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
			phys:SetMass(4)
            phys:SetBuoyancyRatio(0)
		phys:EnableGravity( false )
        end

        self.kt = CurTime() + self.FuseTime
        self.at = CurTime() + self.ArmTime
			self.bt = CurTime() + 1
	self.motorsound = CreateSound( self, "halo/combat_evolved/weapons/plasma_grenade_plasma_projectile_plas_grenlp1.wav")
	self.motorsound:Play()
	if self.at <= CurTime() then self:Arm() end
	-- timer.Simple( 0.1, function()
			-- local phys = self:GetPhysicsObject()
			-- self.Armed = true
			-- phys:ApplyForceCenter( self:GetAngles():Forward()* 1500 )
			-- end )
    end
	if CLIENT then
	ParticleEffectAttach( "astw2_halo_3_plasma_pistol_trail", PATTACH_POINT_FOLLOW, self, 0 )
	end
end

function ENT:OnRemove()
    if SERVER then
        self.motorsound:Stop()
    end
end


function ENT:PhysicsCollide(data, physobj)
if SERVER then
		-- if data.Speed > 25 then
            -- self:EmitSound(Sound("halo/halo_3/flak_proj_bounce" .. math.random(1,3) .. ".ogg"))
		-- end
		end
	if self.at <= CurTime() then
            self:Detonate()
			util.Decal( "astw2_halo_3_plasma_impact_green", self:GetPos(), self:GetPos() + data.HitNormal*32, self )

        end
		local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )
        -- util.Effect( "StunstickImpact", effectdata)
		ParticleEffect( "astw2_halo_3_muzzle_fuel_rod", self:GetPos(), self:GetAngles() )
end


function ENT:ClientThink()
	
	do --Projectile Simulating Inclination Angles
		self:SetAngles( self:GetVelocity():Angle() + Angle(90,0,-90) )	
	end
	timer.Simple( 0.3, function()
			self.Armed = true
	end )
            -- local emitter = ParticleEmitter(self:GetPos())
			
            if !self:IsValid() or self:WaterLevel() > 2 or !self.Armed then return end
		
	return 0.35
end

function ENT:Think()
    if SERVER then self:NextThink( self:ServerThink() or 0.35 ) end
    if CLIENT then self:SetNextClientThink( self:ClientThink() or 0.35 ) end
    return true
end


function ENT:ServerThink()

        -- if CurTime() >= self.at then
            -- local targets = ents.FindInSphere(self:GetPos(), 16)
            -- for _, k in pairs(targets) do
                -- if k:IsPlayer() or k:IsNPC() then
                    -- if self:Visible( k ) and k:Health() > 0 then
                        -- self:Detonate()
                    -- end
                -- elseif (k:IsValid() and scripted_ents.IsBasedOn( k:GetClass(), "base_nextbot" )) then
                    -- self:Detonate()
                -- end
            -- end
        -- end

        if CurTime() >= self.kt then
            self:Detonate()
        end
    return 0.2
end


function ENT:Detonate()
    if SERVER then
        if !self:IsValid() then return end
        local effectdata = EffectData()
            effectdata:SetOrigin( self:GetPos() )

        if self:WaterLevel() >= 1 then
            util.Effect( "WaterSurfaceExplosion", effectdata )
        else
            ParticleEffect( "astw2_halo_3_hunter_projectile_impact", self:GetPos(), self:GetAngles() )
	util.Decal( "astw2_halo_3_plasma_impact_large_green", self:GetPos(), self:GetPos() - Vector(0, 0, 32), self )
	sound.Play( "halo/halo_3/flak_proj_bounce" .. math.random(1,3) .. ".ogg",  self:GetPos(), 60, 100 )
	-- self:EmitSound(Sound("halo/halo_3/flak_proj_bounce" .. math.random(1,3) .. ".ogg"))
	util.ScreenShake(self:GetPos(),5000,100,0.4,1000)
        end

        local attacker = self

        if self.Owner:IsValid() then
            attacker = self.Owner
        end

        util.BlastDamage(self, attacker, self:GetPos(), self.PlasmaDamage, 90)

        self:Remove()
    end
end

function ENT:Draw()
    if CLIENT then
        -- self:DrawModel()

        if self:IsValid() then
            cam.Start3D() -- Start the 3D function so we can draw onto the screen.
                render.SetMaterial( Material("effects/halo3/8pt_ringed_star_flare") ) -- Tell render what material we want, in this case the flash from the gravgun
                render.DrawSprite( self:GetPos(), math.random(64, 96), math.random(64, 96), Color(125, 255, 50, 128) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
            cam.End3D()
        end
    end
end