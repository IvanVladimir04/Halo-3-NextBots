local opts = {
	
	[1] = {
		c = "Options", -- Category
		name = "Ivan04",
		sc = "Halo 3 NextBots", -- Subcategory
		id = "Halo_3_NextBots", -- Creative name
		dv = "Offensive", -- Default value (unticked value)
		d = "Defines how the AI Behaves",
		cv = "halo_3_nextbots_ai_type",
		t = "combobox",
		n = "AI Mode",
		options = {
			[1] = "Offensive",
			[2] = "Defensive",
			[3] = "Static"
		},
		ic = {
			[1] = "vgui/modes/offensive",
			[2] = "vgui/modes/defensive",
			[3] = "vgui/modes/static"
		}
	},

	[2] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
		d = "Should the hero characters be invincible?",
		cv = "halo_3_nextbots_ai_heroes"
	},

	[3] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
		d = "Should the infection forms be able to climb?",
		cv = "halo_3_nextbots_ai_flood_infection_climb"
	},

	[4] = {
		c = "Options", -- Category	
		name = "Ivan04",
		sc = "Halo 3 NextBots", -- Subcategory
		id = "Halo_3_NextBots", -- Creative name
		dv = 1, --
		d = "Allow the Covenant to be in the great schism? (Will only affect Covenant NextBots)",
		cv = "halo_3_nextbots_ai_great_schism",
		t = "combobox",
		n = "Great Schism",
		options = {
			[1] = "No",
			[2] = "Yes (Halo 2 Chaos)",
			[3] = "Yes (Halo 2 Alliance)",
			[4] = "Yes (Halo 3)"
		},
		data = {
			[1] = 1,
			[2] = 2,
			[3] = 3,
			[4] = 4
		},
		selec = false,
		data = {
			["checkboximage"] = "vgui/iv04/halo3/cnv_checkmark.png",
			["font"] = "Halo 3 Font"
		}
	},

	[5] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
		d = "Total amount of particles the scarab spawns (in 14 seconds)",
		cv = "halo_3_nextbots_ai_scarab_explosions",
		t = "slider",
		l = 140
	},

	[6] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
		d = "Make humans hostile to players?",
		cv = "halo_3_nextbots_ai_hostile_humans",
		t = "checkbox",
		data = {
			["checkboximage"] = "vgui/iv04/halo3/cnv_checkmark.png",
			["font"] = "Halo 3 Int Font"
		}
	},
	
	[7] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "Should the AI patrol?",
		cv = "halo_3_nextbots_ai_patrol"
	},
	
	[8] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
		d = "Should the AI flail?",
		cv = "halo_3_nextbots_ai_flail"
	},
	
	[9] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "Are the flood feral?",
		cv = "halo_3_nextbots_ai_flood_feral"
	},
	
	[10] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "Grunts ALWAYS go Kamikaze?",
		cv = "halo_3_nextbots_ai_suicidal_grunts"
	},
	
	[11] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "Allow humans to have flashlights?",
		cv = "halo_3_nextbots_ai_flashlights"
	},
	
	[12] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "Performance mode",
		cv = "halo_3_nextbots_ai_performance"
	},
	
	[13] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "Enemies always know where you are?",
		cv = "halo_3_nextbots_ai_omniscience"
	},
	
	[14] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "Disable shooting corpses",
		cv = "halo_3_nextbots_ai_shootcorpses"
	},
	
	[15] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "AI Spawns With Weapon Drawn",
		cv = "halo_3_nextbots_ai_combat_ready"
	},
	
	[16] = {
		c = "Options", -- Category	
		name = "Ivan04",
		sc = "Halo 3 NextBots", -- Subcategory
		id = "Halo_3_NextBots", -- Creative name
		dv = "Normal", -- Default value (unticked value)
		d = "AI difficulty (Affects AI processing too)",
		cv = "halo_3_nextbots_ai_difficulty",
		t = "iconpanel",
		n = "Skulls",
		options = {
			[1] = "Skulls",
			[2] = "Secondary Skulls"
		},
		data = {
			["Icons"] = {
				[1] = {
					[1] = "vgui/iv04/halo3/skulls/odst/skull_assassins.png",
					[2] = "vgui/iv04/halo3/skulls/odst/skull_blackeye.png",
					[3] = "vgui/iv04/halo3/skulls/odst/skull_boomstick.png",
					[4] = "vgui/iv04/halo3/skulls/odst/skull_catch.png",
					[5] = "vgui/iv04/halo3/skulls/odst/skull_emperor.png",
					[6] = "vgui/iv04/halo3/skulls/odst/skull_famine.png",
					[7] = "vgui/iv04/halo3/skulls/odst/skull_ghost.png",
					[8] = "vgui/iv04/halo3/skulls/odst/skull_iron.png",
					[9] = "vgui/iv04/halo3/skulls/odst/skull_jacked.png",
					[10] = "vgui/iv04/halo3/skulls/odst/skull_whuppopotamus.png",
					[11] = "vgui/iv04/halo3/skulls/odst/skull_toughluck.png",
					[12] = "vgui/iv04/halo3/skulls/odst/skull_tilt.png",
					[13] = "vgui/iv04/halo3/skulls/odst/skull_thunderstorm.png",
					[14] = "vgui/iv04/halo3/skulls/odst/skull_theycomeback.png",
					[15] = "vgui/iv04/halo3/skulls/odst/skull_swarm.png",
					[16] = "vgui/iv04/halo3/skulls/odst/skull_mythic.png"
				},
				[2] = {
					[1] = "vgui/iv04/halo3/skulls/odst/skull_sec_iwhbyd.png",
					[2] = "vgui/iv04/halo3/skulls/odst/skull_sec_blind.png",
					[3] = "vgui/iv04/halo3/skulls/odst/skull_sec_cowbell.png",
					[4] = "vgui/iv04/halo3/skulls/odst/skull_sec_fog.png",
					[5] = "vgui/iv04/halo3/skulls/odst/skull_sec_gruntbirthday.png",
					[6] = "vgui/iv04/halo3/skulls/odst/skull_sec_gruntfuneral.png",
					[7] = "vgui/iv04/halo3/skulls/odst/skull_sec_omniscient.png"
				}
			},
			["ConVars"] = {
				["vgui/iv04/halo3/skulls/odst/skull_assassins.png"] = "halo_3_nextbots_ai_skull_assassins",
				["vgui/iv04/halo3/skulls/odst/skull_blackeye.png"] = "halo_3_nextbots_ai_skull_blackeye",
				["vgui/iv04/halo3/skulls/odst/skull_boomstick.png"] = "halo_3_nextbots_ai_skull_boomstick",
				["vgui/iv04/halo3/skulls/odst/skull_catch.png"] = "halo_3_nextbots_ai_skull_catch",
				["vgui/iv04/halo3/skulls/odst/skull_emperor.png"] = "halo_3_nextbots_ai_skull_emperor",
				["vgui/iv04/halo3/skulls/odst/skull_famine.png"] = "halo_3_nextbots_ai_skull_famine",
				["vgui/iv04/halo3/skulls/odst/skull_ghost.png"] = "halo_3_nextbots_ai_skull_ghost",
				["vgui/iv04/halo3/skulls/odst/skull_iron.png"] = "halo_3_nextbots_ai_skull_iron",
				["vgui/iv04/halo3/skulls/odst/skull_jacked.png"] = "halo_3_nextbots_ai_skull_jacked",
				["vgui/iv04/halo3/skulls/odst/skull_whuppopotamus.png"] = "halo_3_nextbots_ai_skull_whuppopotamus",
				["vgui/iv04/halo3/skulls/odst/skull_toughluck.png"] = "halo_3_nextbots_ai_skull_toughluck",
				["vgui/iv04/halo3/skulls/odst/skull_tilt.png"] = "halo_3_nextbots_ai_skull_tilt",
				["vgui/iv04/halo3/skulls/odst/skull_thunderstorm.png"] = "halo_3_nextbots_ai_skull_thunderstorm",
				["vgui/iv04/halo3/skulls/odst/skull_theycomeback.png"] = "halo_3_nextbots_ai_skull_theycomeback",
				["vgui/iv04/halo3/skulls/odst/skull_swarm.png"] = "halo_3_nextbots_ai_skull_swarm",
				["vgui/iv04/halo3/skulls/odst/skull_mythic.png"] = "halo_3_nextbots_ai_skull_mythic",

				["vgui/iv04/halo3/skulls/odst/skull_sec_iwhbyd.png"] = "halo_3_nextbots_ai_skull_sec_iwhbyd",
				["vgui/iv04/halo3/skulls/odst/skull_sec_blind.png"] = "halo_3_nextbots_ai_skull_sec_blind",
				["vgui/iv04/halo3/skulls/odst/skull_sec_cowbell.png"] = "halo_3_nextbots_ai_skull_sec_cowbell",
				["vgui/iv04/halo3/skulls/odst/skull_sec_fog.png"] = "halo_3_nextbots_ai_skull_sec_fog",
				["vgui/iv04/halo3/skulls/odst/skull_sec_gruntbirthday.png"] = "halo_3_nextbots_ai_skull_sec_gruntbirthday",
				["vgui/iv04/halo3/skulls/odst/skull_sec_gruntfuneral.png"] = "halo_3_nextbots_ai_skull_sec_gruntfuneral",
				["vgui/iv04/halo3/skulls/odst/skull_sec_omniscient.png"] = "halo_3_nextbots_ai_skull_sec_omniscient"
			},
			["ListEndSound"] = "halo_3/announcer/survival_all_skulls.wav",
			["ListSpecificToggleOnSound"] = {
				["vgui/iv04/halo3/skulls/odst/skull_blackeye.png"] = "halo_3/announcer/survival_skull_black_eye.wav",
				["vgui/iv04/halo3/skulls/odst/skull_catch.png"] = "halo_3/announcer/survival_skull_catch.wav",
				["vgui/iv04/halo3/skulls/odst/skull_famine.png"] = "halo_3/announcer/survival_skull_famine.wav",
				["vgui/iv04/halo3/skulls/odst/skull_iron.png"] = "halo_3/announcer/survival_skull_iron.wav",
				["vgui/iv04/halo3/skulls/odst/skull_toughluck.png"] = "halo_3/announcer/survival_skull_tough_luck.wav",
				["vgui/iv04/halo3/skulls/odst/skull_tilt.png"] = "halo_3/announcer/survival_skull_tilt.wav",
				["vgui/iv04/halo3/skulls/odst/skull_thunderstorm.png"] = "halo_3/announcer/survival_skull_thunderstorm.wav",
				["vgui/iv04/halo3/skulls/odst/skull_mythic.png"] = "halo_3/announcer/survival_skull_mythic.wav"
			},
			["ShowList"] = "halo_3/ui/a_button.wav",
			["ListToggleOnSound"] = "halo_3/announcer/clean_skull_on.wav",
			["ListToggleOffSound"] = "halo_3_odst/ui/back_button.wav",
			["ActivationEffects"] = {
				[1] = "vgui/iv04/halo3/skulls/odst/red_eyes_activate.png",
				[2] = "vgui/iv04/halo3/skulls/odst/blue_eyes_activate.png",
			},
			["Name"] = "Skulls List",
			["concommand"] = "halo_3_nextbots_ai_skulls_list"
		},
		l = nil,
		selec = nil
	},
	
	[17] = {
		c = "Options", -- Category	
		name = "Ivan04",
		sc = "Halo 3 NextBots", -- Subcategory
		id = "Halo_3_NextBots", -- Creative name
		dv = "Normal", -- Default value (unticked value)
		d = "AI difficulty (Affects AI processing too)",
		cv = "halo_3_nextbots_ai_difficulty",
		t = "selectionpanel",
		n = "AI Difficulty",
		options = {
			[1] = "vgui/iv04/halo3/h3_easy.png",
			[2] = "vgui/iv04/halo3/h3_normal.png",
			[3] = "vgui/iv04/halo3/h3_heroic.png",
			[4] = "vgui/iv04/halo3/h3_legendary.png",
			[5] = "vgui/iv04/halo3/h3odst_easy.png",
			[6] = "vgui/iv04/halo3/h3odst_normal.png",
			[7] = "vgui/iv04/halo3/h3odst_heroic.png",
			[8] = "vgui/iv04/halo3/h3odst_legendary.png"
		},
		data = {
			[1] = 1,
			[2] = 2,
			[3] = 3,
			[4] = 4
		},
		l = nil,
		selec = nil
	}
}

for name, tbl in ipairs(opts) do
	tbl.data = tbl.data or {}
	--if math.random(1,2) == 1 then
	--	tbl.data["font"] = "Halo 3 Font"
	--else
	if !tbl.data["font"] then
		tbl.data["font"] = "Halo 3 Int Font"
	end
	--end
	IV04AddMenuOption( tbl )
end

surface.CreateFont( "Halo 3 Int Font", {
	font = "Conduit ITC",
	extended = false,
	size = 15,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

surface.CreateFont( "Halo 3 Font", {
	font = "Halo",
	extended = false,
	size = 11,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )