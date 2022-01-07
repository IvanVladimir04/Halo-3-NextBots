--[[	local tbl = {
		c = "Options", -- Category	
		name = "Ivan04",
		sc = "Halo 3 NextBots", -- Subcategory
		id = "Halo_3_NextBots", -- Creative name
		dv = "Heroic", -- Default value (unticked value)
		d = "Defines AI difficulty (Affects AI processing too), goes from 1 to 4, easy = 1, normal = 2, heroic = 3 and legendary = 4",
		cv = "halo_3_nextbots_ai_difficulty",
		t = "combobox",
		n = "AI Difficulty",
		options = {
			[1] = "Easy",
			[2] = "Normal",
			[3] = "Heroic",
			[4] = "Legendary"
		},
		data = {
			[1] = 1,
			[2] = 2,
			[3] = 3,
			[4] = 4
		},
		selec = false,
		ic = {
			[1] = "vgui/difficulties/1_easy.png",
			[2] = "vgui/difficulties/2_normal.png",
			[3] = "vgui/difficulties/3_heroic.png",
			[4] = "vgui/difficulties/4_legendary.png"
		}
	}
	
	local tbl1 = {
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
	}

	local tbl2 = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
		d = "Should the hero characters be invincible?",
		cv = "halo_3_nextbots_ai_heroes"
	}

	local tbl3 = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
		d = "Should the infection forms be able to climb?",
		cv = "halo_3_nextbots_ai_flood_infection_climb"
	}

	local tbl4 = {
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
			[2] = "Yes (Halo 2)",
			[3] = "Yes (Halo 3)"
		},
		data = {
			[1] = 1,
			[2] = 2,
			[3] = 3
		},
		selec = false,
		ic = {
			[1] = "vgui/games/halo_reach_icon",
			[2] = "vgui/games/halo_2_icon",
			[3] = "vgui/games/halo_3_icon"
		}
	}

	local tbl5 = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 1,
		d = "Total amount of particles the scarab spawns (in 14 seconds)",
		cv = "halo_3_nextbots_ai_scarab_explosions",
		t = "slider",
		l = 140
	}

	local tbl6 = {
		c = "Options",
		name = "Ivan04",
		sc = "Halo 3 NextBots",
		id = "Halo_3_NextBots",
		dv = 0,
		d = "Should the humans be hostile to players?",
		cv = "halo_3_nextbots_ai_hostile_humans"
	}

	IV04AddMenuOption( tbl )
	IV04AddMenuOption( tbl1 )
	IV04AddMenuOption( tbl2 )
	IV04AddMenuOption( tbl3 )
	IV04AddMenuOption( tbl4 )
	IV04AddMenuOption( tbl5 )
	IV04AddMenuOption( tbl6 )
	
]]