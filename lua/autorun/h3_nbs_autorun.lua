if util.IsValidModel( "models/halo/halo_3/weapons/flamethrower.mdl" ) and file.Exists( "lua/autorun/astw2_halo_3_autorun.lua", "WORKSHOP" ) then
	CreateConVar( "halo_3_nextbots_ai_type", "Offensive", FCVAR_ARCHIVE, "Type of AI the Halo Reach NextBots will spawn with (if you change this after spawning one its AI type won't change), possible values are Defensive, Offensive and Static. Note not all kind of nextbots can be affected by this!" )
	CreateConVar( "halo_3_nextbots_ai_difficulty", 2, FCVAR_ARCHIVE, "Difficulty, (1 = easy, 2 = normal, 3 = heroic, 4 = legendary" )
	CreateConVar( "halo_3_nextbots_ai_heroes", 1, FCVAR_ARCHIVE, "Are hero characters invincible?" )
	CreateConVar( "halo_3_nextbots_ai_hostile_humans", 0, FCVAR_ARCHIVE, "Are humans hostile to players?" )
	CreateConVar( "halo_3_nextbots_ai_scarab_explosions", 14, FCVAR_ARCHIVE, "Amount of total plasma explosions the scarab uses" )
	CreateConVar( "halo_3_nextbots_ai_great_schism", 1, FCVAR_ARCHIVE, "Allow funny space monkeys to take the control?" )
	CreateConVar( "halo_3_nextbots_ai_flood_infection_climb", 1, FCVAR_ARCHIVE, "Allow infection forms to climb?" )
else
	print("You are either stupid for not getting the required addon or an asshole for not getting it knowing it was required")
end

H3NBsTbl = {

}

if SERVER then

	H3HS = {} -- Halo 3 Human Squads
	
	H3HS.Signals = {
		--["Retreat"] = true
	}
	
	H3HS.SignalT = {
		["Retreat"] = 0
	}
	
	H3HS.SignalCaller = {
		-- ["EntityHere"] = true
	}
	
	function H3HS:WasSignalGiven(sign,tolerance)
		if H3HS.Signals[sign] and ( H3HS.SignalT[sign]+tolerance > CurTime() ) then
			return true
		end
		return false
	end
	
	function H3HS:Signal(sign,caller)
		--print(sign)
		self.Signals[sign] = true
		self.SignalT[sign] = CurTime()
		self.SignalCaller[sign] = caller
	end
	
	function H3HS:GetCaller(sign)
		return self.SignalCaller[sign]
	end

end

concommand.Add("printsounds", function( ply, cmd, args )
	local marinefolder = "stacker"
	local root = "sound/"..marinefolder.."/"
	local path = ""..root.."*"..""
	local files, directories = file.Find( path, "GAME" )
	--print(type(files),type(directories))
	--print( "File: " .. files[1], "Folder: " .. directories[1] )

	--PrintTable(files)
	--PrintTable(directories)
	local tbl = {}
	for k, v in pairs(files) do
		local sound = ""..root..v..""
		--print(sound) -- sound is the sound path
		local letters = string.Split( v, "" )
		--print(v) -- v is the sound
		local finalvalue = letters[#letters-4] -- just before the .ogg, we are gonna determine if it needs a new category
		--print(finalvalue)
		if isnumber(tonumber(finalvalue)) then
			local altval = letters[#letters-5]
			local cat = string.Left(v,#letters-4)
			local num = 1
			if isnumber(tonumber(altval)) then
				num = 2
			end
			--print(cat,"is number")
			cat = string.Left(v,#cat-(num))
			if !tbl["['"..cat.."']"] then tbl["['"..cat.."']"] = {} end
			sound = string.Right(sound,#sound-6)
			table.insert(tbl["['"..cat.."']"],sound)
		else
			local cat = string.Left(v,#letters-5)
			--print(cat,"is unique")
			if !tbl["['"..cat.."']"] then tbl["['"..cat.."']"] = {} end
			sound = string.Right(sound,#sound-6)
			table.insert(tbl["['"..cat.."']"],sound)
		end
		--table.insert(tbl,sound)
	end
	print("Done!")
	file.Write( ""..marinefolder..".txt", table.ToString(tbl,"sounds",true) )
end)