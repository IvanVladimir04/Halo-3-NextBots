--if util.IsValidModel( "models/halo/halo_3/weapons/flamethrower.mdl" ) and file.Exists( "lua/autorun/astw2_halo_3_autorun.lua", "WORKSHOP" ) then
CreateConVar( "halo_3_nextbots_ai_type", "Offensive", FCVAR_ARCHIVE, "Type of AI the Halo 3 NextBots will spawn with (if you change this after spawning one its AI type won't change), possible values are Defensive, Offensive and Static. Note not all kind of nextbots can be affected by this!" )
CreateConVar( "halo_3_nextbots_ai_difficulty", 2, FCVAR_ARCHIVE, "Difficulty, (1 = easy, 2 = normal, 3 = heroic, 4 = legendary" )
CreateConVar( "halo_3_nextbots_ai_heroes", 1, FCVAR_ARCHIVE, "Are hero characters invincible?" )	
CreateConVar( "halo_3_nextbots_ai_flashlights", 1, FCVAR_ARCHIVE, "Allow humans to have flashlights?" )	
CreateConVar( "halo_3_nextbots_ai_shootcorpses", 0, FCVAR_ARCHIVE, "Disable shooting corpses?" )	
CreateConVar( "halo_3_nextbots_ai_performance", 0, FCVAR_ARCHIVE, "Enable performance mode?" )
CreateConVar( "halo_3_nextbots_ai_omniscience", 0, FCVAR_ARCHIVE, "Enemies always know where you are?" )	
CreateConVar( "halo_3_nextbots_ai_combat_ready", 0, FCVAR_ARCHIVE, "Allow AI to draw weapons on spawn?" )
CreateConVar( "halo_3_nextbots_ai_suicidal_grunts", 1, FCVAR_ARCHIVE, "Grunts ALWAYS go kamikaze?" )		
CreateConVar( "halo_3_nextbots_ai_patrol", 1, FCVAR_ARCHIVE, "Do the nextbots patrol?" )	
CreateConVar( "halo_3_nextbots_ai_hostile_humans", 0, FCVAR_ARCHIVE, "Are humans hostile to players?" )
CreateConVar( "halo_3_nextbots_ai_scarab_explosions", 14, FCVAR_ARCHIVE, "Amount of total plasma explosions the scarab uses" )
CreateConVar( "halo_3_nextbots_ai_great_schism", 1, FCVAR_ARCHIVE, "Allow funny space monkeys to take the control?" )
CreateConVar( "halo_3_nextbots_ai_flail", 1, FCVAR_ARCHIVE, "Allow them to flail?" )
CreateConVar( "halo_3_nextbots_ai_flood_feral", 0, FCVAR_ARCHIVE, "Are the flood feral?" )	
CreateConVar( "halo_3_nextbots_ai_flood_infection_climb", 1, FCVAR_ARCHIVE, "Allow infection forms to climb?" )

CreateConVar( "halo_3_nextbots_ai_skull_catch", 0, FCVAR_ARCHIVE, "Catch skull" )
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

IV04H3_AllowPatrol = true


cvars.AddChangeCallback("halo_3_nextbots_ai_patrol", function(name, old, new)
	IV04H3_AllowPatrol = GetConVar("halo_3_nextbots_ai_patrol"):GetInt() == 1
end)

--[[sound.Add( {
	name = "HALO3_human.Step",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = {
		"footsteps/concrete_h3/run/concrete_run1.wav",
		"footsteps/concrete_h3/run/concrete_run2.wav",
		"footsteps/concrete_h3/run/concrete_run3.wav",
		"footsteps/concrete_h3/run/concrete_run4.wav",
		"footsteps/concrete_h3/run/concrete_run5.wav",
		"footsteps/concrete_h3/run/concrete_run6.wav",
		"footsteps/concrete_h3/run/concrete_run7.wav",
		"footsteps/concrete_h3/run/concrete_run8.wav",
		"footsteps/concrete_h3/run/concrete_run9.wav"
	}
} )]]


H3NBsTbl = {

}

H3NBsColors = {

}

if SERVER then

	util.AddNetworkString( "H3NBsColoredSpawned" )
	
	AllowedH3Squads = {
		["FACTION_ALLIANCE"] = true,
		["FACTION_COVENANT"] = true,
		["FACTION_SEPARATISTS"] = true,
		["FACTION_FLOOD"] = true,
		["FACTION_HUNTERS"] = true
	}
	
	CustomH3Squads = {
		--["FACTION_REBELS"] = H3RS
	}
	
	H3S = {} -- Halo 3 Squads
	
	H3S.Members = {}
	
	H3S.ValidTargets = {}
	
	H3S.Signals = {
		--["Retreat"] = true
	}
	
	H3S.SignalT = {
		["Retreat"] = 0
	}
	
	H3S.SignalCaller = {
		-- ["EntityHere"] = true
	}
	
	function H3S:SortValidTargets(newtargets)
		if !newtargets then return end
		for id, v in pairs(newtargets) do
			if IsValid(v) and v:Health() > 0 then
				self.ValidTargets[v] = true
			else
				self.ValidTargets[v] = nil
			end
		end
	end
	
	function H3S:GetValidTargets(caller)
		local targets = {}
		for v, bool in pairs(self.ValidTargets) do
			if IsValid(v) and v:Health() > 0 then
				if IsValid(caller) and caller.IV04NextBot then
					if caller:CheckRelationships(v) == "foe" then
						targets[v] = true
					end
				else
					targets[v] = true
				end
			else
				self.ValidTargets[v] = nil
			end
		end
		return targets
	end
	
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
	
	H3FS = H3S -- Halo 3 Flood Squads
	
	CustomH3Squads["FACTION_HUNTERS"] = H3S
	
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

	net.Receive( "H3NBsColoredSpawned", function()
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