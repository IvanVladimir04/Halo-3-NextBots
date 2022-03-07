--if util.IsValidModel( "models/halo/halo_3/weapons/flamethrower.mdl" ) and file.Exists( "lua/autorun/astw2_halo_3_autorun.lua", "WORKSHOP" ) then
CreateConVar( "halo_3_nextbots_ai_type", "Offensive", FCVAR_ARCHIVE, "Type of AI the Halo 3 NextBots will spawn with (if you change this after spawning one its AI type won't change), possible values are Defensive, Offensive and Static. Note not all kind of nextbots can be affected by this!" )
CreateConVar( "halo_3_nextbots_ai_difficulty", 2, FCVAR_ARCHIVE, "Difficulty, (1 = easy, 2 = normal, 3 = heroic, 4 = legendary" )
CreateConVar( "halo_3_nextbots_ai_heroes", 1, FCVAR_ARCHIVE, "Are hero characters invincible?" )	
CreateConVar( "halo_3_nextbots_ai_omniscience", 1, FCVAR_ARCHIVE, "Enemies will always know where you are" )
CreateConVar( "halo_3_nextbots_ai_suicidal_grunts", 1, FCVAR_ARCHIVE, "Grunts ALWAYS go kamikaze?" )		
CreateConVar( "halo_3_nextbots_ai_patrol", 1, FCVAR_ARCHIVE, "Do the nextbots patrol?" )	
CreateConVar( "halo_3_nextbots_ai_hostile_humans", 0, FCVAR_ARCHIVE, "Are humans hostile to players?" )
CreateConVar( "halo_3_nextbots_ai_scarab_explosions", 14, FCVAR_ARCHIVE, "Amount of total plasma explosions the scarab uses" )
CreateConVar( "halo_3_nextbots_ai_great_schism", 1, FCVAR_ARCHIVE, "Allow funny space monkeys to take the control?" )
CreateConVar( "halo_3_nextbots_ai_flail", 1, FCVAR_ARCHIVE, "Allow them to flail?" )
CreateConVar( "halo_3_nextbots_ai_flood_feral", 0, FCVAR_ARCHIVE, "Are the flood feral?" )	
CreateConVar( "halo_3_nextbots_ai_flood_infection_climb", 1, FCVAR_ARCHIVE, "Allow infection forms to climb?" )
--else
	--print("This is the second time I do this, if it's your second time too then you are a disappointment to me")
--end

Halo3Difficulties = {
	["vgui/iv04/halo3/h3_easy.png"] = 1,
	["vgui/iv04/halo3/h3_normal.png"] = 2,
	["vgui/iv04/halo3/h3_heroic.png"] = 3,
	["vgui/iv04/halo3/h3_legendary.png"] = 4,
	["vgui/iv04/halo3/h3odst_easy.png"] = 1.5,
	["vgui/iv04/halo3/h3odst_normal.png"] = 2.5,
	["vgui/iv04/halo3/h3odst_heroic.png"] = 3.5,
	["vgui/iv04/halo3/h3odst_legendary.png"] = 4.5
}

Halo3DifficultyMeanings = {
	[1] = "Easy",
	[2] = "Normal",
	[3] = "Heroic",
	[4] = "Legendary"
}

RunConsoleCommand( "halo_3_nextbots_ai_difficulty", 2 )

cvars.AddChangeCallback("halo_3_nextbots_ai_difficulty", function(name, old, new)
	if !isnumber(tonumber(new)) then
		--print(name, old, new, "correcting")
		RunConsoleCommand( "halo_3_nextbots_ai_difficulty", Halo3Difficulties[new] )
	else
		local difficulty
		new = tonumber(new)
		if new <= 1 then
			difficulty = "Easy"
		elseif new > 1 and new <= 1.5 then
			difficulty = "Halo 3 ODST Easy"
		elseif new > 1.5 and new <= 2 then
			difficulty = "Normal"
		elseif new > 2 and new <= 2.5 then
			difficulty = "Halo 3 ODST Normal"
		elseif new > 2.5 and new <= 3 then
			difficulty = "Heroic"
		elseif new > 3 and new <= 3.5 then
			difficulty = "Halo 3 ODST Heroic"
		elseif new > 3.5 and new <= 4 then
			difficulty = "Legendary"
		elseif new > 4 and new <= 4.5 then
			difficulty = "Halo 3 ODST Legendary"
		elseif new > 4.5 then
			difficulty = "Halo 2 Legendary"
		end
		PrintMessage(HUD_PRINTCENTER, "Difficulty has been changed to "..difficulty..".")
		--print(name, old, new, "corrected")
	end
end, "Difficulty Corrector")







H3NBsTbl = {

}

H3NBsColors = {

}

if SERVER then

	util.AddNetworkString( "H3NBsHeroSpawned" )
	
	AllowedH3Squads = {
		["FACTION_ALLIANCE"] = true,
		["FACTION_COVENANT"] = true,
		["FACTION_SEPARATISTS"] = true
	}
	
	CustomH3Squads = {
		--["FACTION_REBELS"] = H3RS
	}
	
	H3S = {} -- Halo 3 Squads
	
	H3S.Members = {}
	
	H3S.Signals = {
		--["Retreat"] = true
	}
	
	H3S.SignalT = {
		["Retreat"] = 0
	}
	
	H3S.SignalCaller = {
		-- ["EntityHere"] = true
	}
	
	function H3S:AddMember(ent)
		self.Members[ent] = true
	end
	
	function H3S:GetMembers()
		local members = {}
		for member, bool in pairs(self.Members) do
			if IsValid(member) and member:Health() > 0 then
				members[#members+1] = member
			else
				self.Members[member] = nil
			end
		end
		return members
	end
	
	function H3S:WasSignalGiven(sign,tolerance)
		if self.Signals[sign] then
			if ( self.SignalT[sign]+tolerance > CurTime() ) then
				return true
			else
				self.Signals[sign] = false
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
	
	hook.Add("IV04NextBotSpawned","SquadManager", function(ent)
		--print("The hook is running")
		if ent.IsHalo3NextBot and AllowedH3Squads[ent.Faction] then
			ent:GetSquad():AddMember(ent)
			--print(#ent:GetSquad():GetMembers())
			--PrintTable(H3HS:GetMembers())
			--print(ent:GetSquad(), "and", H3HS, "are the same")
			--[[
				Warning! the nextbots know from the start to what squad they belong
				to and grab orders from it, but they are only registered in
				their squad if this hook runs
			]]
		end
	end )

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