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
CreateConVar( "halo_3_nextbots_ai_patrol", 0, FCVAR_ARCHIVE, "Do the nextbots patrol?" )	
CreateConVar( "halo_3_nextbots_ai_hostile_humans", 0, FCVAR_ARCHIVE, "Are humans hostile to players?" )
CreateConVar( "halo_3_nextbots_ai_scarab_explosions", 14, FCVAR_ARCHIVE, "Amount of total plasma explosions the scarab uses" )
CreateConVar( "halo_3_nextbots_ai_great_schism", 1, FCVAR_ARCHIVE, "Allow funny space monkeys to take the control?" )
CreateConVar( "halo_3_nextbots_ai_flail", 1, FCVAR_ARCHIVE, "Allow them to flail?" )
CreateConVar( "halo_3_nextbots_ai_flood_feral", 0, FCVAR_ARCHIVE, "Are the flood feral?" )	
CreateConVar( "halo_3_nextbots_ai_flood_infection_climb", 1, FCVAR_ARCHIVE, "Allow infection forms to climb?" )

CreateConVar( "halo_3_nextbots_ai_skull_assassins", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_blackeye", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_boomstick", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_catch", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_emperor", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_famine", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_ghost", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_iron", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_jacked", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_whuppopotamus", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_toughluck", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_tilt", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_thunderstorm", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_theycomeback", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_swarm", 0, FCVAR_ARCHIVE, "Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_mythic", 0, FCVAR_ARCHIVE, "Skull" )

CreateConVar( "halo_3_nextbots_ai_skull_sec_iwhbyd", 0, FCVAR_ARCHIVE, "Secondary Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_sec_blind", 0, FCVAR_ARCHIVE, "Secondary Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_sec_cowbell", 0, FCVAR_ARCHIVE, "Secondary Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_sec_fog", 0, FCVAR_ARCHIVE, "Secondary Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_sec_gruntbirthday", 0, FCVAR_ARCHIVE, "Secondary Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_sec_gruntfuneral", 0, FCVAR_ARCHIVE, "Secondary Skull" )
CreateConVar( "halo_3_nextbots_ai_skull_sec_omniscient", 0, FCVAR_ARCHIVE, "Secondary Skull" )
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

IV04H3_AllowPatrol = false


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
	
	H3HS = SquadT -- Halo 3 Human Squads
	
	H3BS = SquadT -- Halo 3 Brute Squads
	
	H3ES = SquadT -- Halo 3 Elite Squads
	
	H3FS = SquadT -- Halo 3 Flood Squads

else

	net.Receive( "H3NBsColoredSpawned", function()
		local ent = net.ReadEntity()
		local col = net.ReadVector()
		--local color = net.ReadColor()
		if !IsValid(ent) then return end
		ent.HasSpecialColor = true
		ent.SpecialColor = col
		--print(color)
		--ent:SetColor(color)
		H3NBsColors[ent:EntIndex()] = col
		--print(ent.SpecialColor)
		--[[if !isfunction(ent.GetPlayerColor) then 
			ent.GetPlayerColor = function() 
				--print("clientside",ent.SpecialColor)
				return Vector(self.ColR/255,self.ColG/255,self.ColB/255) --Vector(color/255,color/255,color/255)
			end
		end]]
		--matproxy.Init( "PlayerColor", "PlayerColor", Material(ent:GetMaterials()[3]), {resultvar=ent:GetMaterials()[2]} )
		--matproxy.Call( "PlayerColor", Material(ent:GetMaterials()[3]), ent )
		--print(ent.HasSpecialColor,ent.SpecialColor,H3NBsColors[ent:EntIndex()])
	end )

end