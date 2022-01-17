--if util.IsValidModel( "models/halo/halo_3/weapons/flamethrower.mdl" ) and file.Exists( "lua/autorun/astw2_halo_3_autorun.lua", "WORKSHOP" ) then
CreateConVar( "halo_3_nextbots_ai_type", "Offensive", FCVAR_ARCHIVE, "Type of AI the Halo 3 NextBots will spawn with (if you change this after spawning one its AI type won't change), possible values are Defensive, Offensive and Static. Note not all kind of nextbots can be affected by this!" )
CreateConVar( "halo_3_nextbots_ai_difficulty", 2, FCVAR_ARCHIVE, "Difficulty, (1 = easy, 2 = normal, 3 = heroic, 4 = legendary" )
CreateConVar( "halo_3_nextbots_ai_heroes", 1, FCVAR_ARCHIVE, "Are hero characters invincible?" )	
CreateConVar( "halo_3_nextbots_ai_omniscience", 1, FCVAR_ARCHIVE, "Enemiws will always know where you are" )
CreateConVar( "halo_3_nextbots_ai_suicidal_grunts", 1, FCVAR_ARCHIVE, "Grunts ALWAYS go kamikaze?" )		
CreateConVar( "halo_3_nextbots_ai_patrol", 1, FCVAR_ARCHIVE, "Do the nextbots patrol?" )	
CreateConVar( "halo_3_nextbots_ai_hostile_humans", 0, FCVAR_ARCHIVE, "Are humans hostile to players?" )
CreateConVar( "halo_3_nextbots_ai_scarab_explosions", 14, FCVAR_ARCHIVE, "Amount of total plasma explosions the scarab uses" )
CreateConVar( "halo_3_nextbots_ai_great_schism", 1, FCVAR_ARCHIVE, "Allow funny space monkeys to take the control?" )
CreateConVar( "halo_3_nextbots_ai_flail", 1, FCVAR_ARCHIVE, "Allow them to flail?" )
CreateConVar( "halo_3_nextbots_ai_flood_feral", 1, FCVAR_ARCHIVE, "Are the flood feral?" )	
CreateConVar( "halo_3_nextbots_ai_flood_infection_climb", 1, FCVAR_ARCHIVE, "Allow infection forms to climb?" )
--else
	--print("This is the second time I do this, if it's your second time too then you are a disappointment to me")
--end








H3NBsTbl = {

}

H3NBsColors = {

}

if SERVER then

	util.AddNetworkString( "H3NBsHeroSpawned" )
	
	H3S = {} -- Halo 3 Squads
	
	H3S.Signals = {
		--["Retreat"] = true
	}
	
	H3S.SignalT = {
		["Retreat"] = 0
	}
	
	H3S.SignalCaller = {
		-- ["EntityHere"] = true
	}
	
	function H3S:WasSignalGiven(sign,tolerance)
		if H3S.Signals[sign] then
			if ( H3S.SignalT[sign]+tolerance > CurTime() ) then
				return true
			else
				H3S.Signals[sign] = false
				return false
			end
		end
		return false
	end
	
	function H3S:Signal(sign,caller)
		--print(sign)
		self.Signals[sign] = true
		self.SignalT[sign] = CurTime()
		self.SignalCaller[sign] = caller
	end
	
	function H3S:GetCaller(sign)
		return self.SignalCaller[sign]
	end

	H3HS = H3S -- Halo 3 Human Squads
	
	H3BS = H3S -- Halo 3 Brute Squads
	
	H3ES = H3S -- Halo 3 Elite Squads

else

	net.Receive( "H3NBsHeroSpawned", function()
		local ent = net.ReadEntity()
		local col = net.ReadVector()
		if !IsValid(ent) then return end
		ent.HasSpecialColor = true
		ent.SpecialColor = col
		H3NBsColors[ent:EntIndex()] = col
		if !ent.GetPlayerColor then ent.GetPlayerColor = function() return ent.SpecialColor or Vector(0,0,0) end end
		--print(ent.HasSpecialColor,ent.SpecialColor,HRNBsColors[ent:EntIndex()])
	end )

end