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
			[2] = "Yes (Halo 2 Pre Great Journey)",
			[3] = "Yes (Halo 2 UNSC-Separatist Alliance)",
			[4] = "Yes (Halo 3)"
		},
		data = {
			[1] = 1,
			[2] = 2,
			[3] = 3,
			[4] = 4
		},
		selec = false
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
		dv = 0,
		d = "Should the humans be hostile to players?",
		cv = "halo_3_nextbots_ai_hostile_humans"
	},
	
	[7] = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
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
		d = "Enable performance mode? (skips some calculations for the sake of performance)",
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
		d = "Enable shooting corpses",
		cv = "halo_3_nextbots_ai_shootcorpses"
	},
	
	[15] = {
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
	IV04AddMenuOption( tbl )
end