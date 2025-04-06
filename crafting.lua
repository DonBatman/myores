--slate

minetest.register_craft({
	output = "myores:slate_splitstone 4",
	recipe = {
    		{"myores:slate","","myores:slate"},
		{"myores:slate","","myores:slate"},
	}
})

minetest.register_craft({
	output = "myores:slate_tile 4",
	recipe = {
    		{"myores:slate","myores:slate",""},
		{"myores:slate","myores:slate",""},
	}
})

minetest.register_craft({
	output = "myores:slate_tiles 4",
	recipe = {
    		{"myores:slate_tile","myores:slate_tile",""},
		{"myores:slate_tile","myores:slate_tile",""},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:slate_brick",
	recipe = "myores:slate",
})

--Chromium

minetest.register_craft({
	output = "myores:chromium_splitblock 4",
	recipe = {
    		{"myores:chromium","","myores:chromium"},
		{"myores:chromium","","myores:chromium"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:chromium_brick",
	recipe = "myores:chromium",
})

minetest.register_craft({
	output = "myores:chromium_block 4",
	recipe = {
    		{"myores:chromium","myores:chromium",""},
		{"myores:chromium","myores:chromium",""},
	}
})

minetest.register_craft({
	output = "myores:chromium_tiles 4",
	recipe = {
    		{"myores:chromium_block","myores:chromium_block",""},
		{"myores:chromium_block","myores:chromium_block",""},
	}
})

minetest.register_craft({
	output = "myores:chromium",
	recipe = {{"myores:chromium_ingot","myores:chromium_ingot","myores:chromium_ingot"},
				{"myores:chromium_ingot","myores:chromium_ingot","myores:chromium_ingot"},
				{"myores:chromium_ingot","myores:chromium_ingot","myores:chromium_ingot"},
				}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:chromium_ingot",
	recipe = "myores:chromium_lump",
})

--Chromium

minetest.register_craft({
	output = "myores:manganese_splitblock 4",
	recipe = {
    		{"myores:manganese","","myores:manganese"},
		{"myores:manganese","","myores:manganese"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:manganese_brick",
	recipe = "myores:manganese",
})

minetest.register_craft({
	output = "myores:manganese_block 4",
	recipe = {
    		{"myores:manganese","myores:manganese",""},
		{"myores:manganese","myores:manganese",""},
	}
})

minetest.register_craft({
	output = "myores:manganese_tiles 4",
	recipe = {
    		{"myores:manganese_block","myores:manganese_block",""},
		{"myores:manganese_block","myores:manganese_block",""},
	}
})

minetest.register_craft({
	output = "myores:manganese",
	recipe = {{"myores:manganese_ingot","myores:manganese_ingot","myores:manganese_ingot"},
				{"myores:manganese_ingot","myores:manganese_ingot","myores:manganese_ingot"},
				{"myores:manganese_ingot","myores:manganese_ingot","myores:manganese_ingot"},
				}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:manganese_ingot",
	recipe = "myores:manganese_lump",
})

--shale

minetest.register_craft({
	output = "myores:shale_splitstone 4",
	recipe = {
    		{"myores:shale","","myores:shale"},
		{"myores:shale","","myores:shale"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:shale_brick",
	recipe = "myores:shale",
})

minetest.register_craft({
	output = "myores:shale_block 4",
	recipe = {
    		{"myores:shale","myores:shale",""},
		{"myores:shale","myores:shale",""},
	}
})

minetest.register_craft({
	output = "myores:shale_tiles 4",
	recipe = {
    		{"myores:shale_tile","myores:shale_tile",""},
		{"myores:shale_tile","myores:shale_tile",""},
	}
})

--schist

minetest.register_craft({
	output = "myores:schist_splitstone 4",
	recipe = {
    		{"myores:schist","","myores:schist"},
		{"myores:schist","","myores:schist"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:schist_brick",
	recipe = "myores:schist",
})

minetest.register_craft({
	output = "myores:schist_tile 4",
	recipe = {
    		{"myores:schist","myores:schist",""},
		{"myores:schist","myores:schist",""},
	}
})

minetest.register_craft({
	output = "myores:schist_tiles 4",
	recipe = {
    		{"myores:schist_tile","myores:schist_tile",""},
		{"myores:schist_tile","myores:schist_tile",""},
	}
})

--gneiss

minetest.register_craft({
	output = "myores:gneiss_splitstone 4",
	recipe = {
    		{"myores:gneiss","","myores:gneiss"},
		{"myores:gneiss","","myores:gneiss"},
	}
})

minetest.register_craft({
	output = "myores:gneiss_tile 4",
	recipe = {
    		{"myores:gneiss","myores:gneiss",""},
		{"myores:gneiss","myores:gneiss",""},
	}
})

minetest.register_craft({
	output = "myores:gneiss_tiles 4",
	recipe = {
    		{"myores:gneiss_tile","myores:gneiss_tile",""},
		{"myores:gneiss_tile","myores:gneiss_tile",""},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:gneiss_brick",
	recipe = "myores:gneiss",
})

--basalt

minetest.register_craft({
	output = "myores:basalt_tile 4",
	recipe = {
    		{"myores:basalt","myores:basalt",""},
		{"myores:basalt","myores:basalt",""},
	}
})

minetest.register_craft({
	output = "myores:basalt_tiles 4",
	recipe = {
    		{"myores:basalt_tile","myores:basalt_tile",""},
		{"myores:basalt_tile","myores:basalt_tile",""},
	}
})

minetest.register_craft({
	output = "myores:basalt_splitstone 4",
	recipe = {
    		{"myores:basalt","","myores:basalt"},
		{"myores:basalt","","myores:basalt"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:basalt_brick",
	recipe = "myores:basalt",
})

--granite

minetest.register_craft({
	output = "myores:granite_tile 4",
	recipe = {
    		{"myores:granite","myores:granite",""},
		{"myores:granite","myores:granite",""},
	}
})

minetest.register_craft({
	output = "myores:granite_tiles 4",
	recipe = {
    		{"myores:granite_tile","myores:granite_tile",""},
		{"myores:granite_tile","myores:granite_tile",""},
	}
})

minetest.register_craft({
	output = "myores:granite_splitstone 4",
	recipe = {
    		{"myores:granite","","myores:granite"},
		{"myores:granite","","myores:granite"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:granite_bricks",
	recipe = "myores:granite",
})

--marble

minetest.register_craft({
	output = "myores:marble_tile 4",
	recipe = {
    		{"myores:marble","myores:marble",""},
		{"myores:marble","myores:marble",""},
	}
})

minetest.register_craft({
	output = "myores:marble_tiles 4",
	recipe = {
    		{"myores:marble_block","myores:marble_block",""},
		{"myores:marble_block","myores:marble_block",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:marble_splitstone 4",
	recipe = {
    		{"myores:marble","","myores:marble"},
		{"myores:marble","","myores:marble"},
		{"","",""},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:marble_brick",
	recipe = "myores:marble",
})

--Calcium

minetest.register_craft({
	type = "cooking",
	output = "myores:calcium_ingot",
	recipe = "myores:calcium_lump",
})

minetest.register_craft({
	output = "myores:calcium_block 1",
	recipe = {
    		{"myores:calcium_ingot","myores:calcium_ingot","myores:calcium_ingot"},
		{"myores:calcium_ingot","myores:calcium_ingot","myores:calcium_ingot"},
		{"myores:calcium_ingot","myores:calcium_ingot","myores:calcium_ingot"},
	}
})

--Sodium

minetest.register_craft({
	type = "cooking",
	output = "myores:sodium_ingot",
	recipe = "myores:sodium_lump",
})

minetest.register_craft({
	output = "myores:sodium_block 1",
	recipe = {
    		{"myores:sodium_ingot","myores:sodium_ingot","myores:sodium_ingot"},
		{"myores:sodium_ingot","myores:sodium_ingot","myores:sodium_ingot"},
		{"myores:sodium_ingot","myores:sodium_ingot","myores:sodium_ingot"},
	}
})

--Silver
minetest.register_craft({
	output = "myores:silver_block 4",
	recipe = {
    		{"myores:silver","myores:silver",""},
		{"myores:silver","myores:silver",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:silver_tiles 4",
	recipe = {
    		{"myores:silver_block","myores:silver_block",""},
		{"myores:silver_block","myores:silver_block",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:silver_splitblock 4",
	recipe = {
    		{"myores:silver","","myores:silver"},
		{"myores:silver","","myores:silver"},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:silver",
	recipe = {{"myores:silver_ingot","myores:silver_ingot","myores:silver_ingot"},
				{"myores:silver_ingot","myores:silver_ingot","myores:silver_ingot"},
				{"myores:silver_ingot","myores:silver_ingot","myores:silver_ingot"},
				}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:silver_brick",
	recipe = "myores:silver",
})

minetest.register_craft({
	type = "cooking",
	output = "myores:silver_ingot",
	recipe = "myores:silver_lump",
})

--Chromium
minetest.register_craft({
	output = "myores:chromium_block 4",
	recipe = {
    		{"myores:chromium","myores:chromium",""},
		{"myores:chromium","myores:chromium",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:chromium_tiles 4",
	recipe = {
    		{"myores:chromium_block","myores:chromium_block",""},
		{"myores:chromium_block","myores:chromium_block",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:chromium_splitblock 4",
	recipe = {
    		{"myores:chromium","","myores:chromium"},
		{"myores:chromium","","myores:chromium"},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:chromium",
	recipe = {{"myores:chromium_ingot","myores:chromium_ingot","myores:chromium_ingot"},
				{"myores:chromium_ingot","myores:chromium_ingot","myores:chromium_ingot"},
				{"myores:chromium_ingot","myores:chromium_ingot","myores:chromium_ingot"},
				}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:chromium_brick",
	recipe = "myores:chromium",
})

minetest.register_craft({
	type = "cooking",
	output = "myores:chromium_ingot",
	recipe = "myores:chromium_lump",
})

--Manganese
minetest.register_craft({
	output = "myores:manganese_block 4",
	recipe = {
    		{"myores:manganese","myores:manganese",""},
		{"myores:manganese","myores:manganese",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:manganese_tiles 4",
	recipe = {
    		{"myores:manganese_block","myores:manganese_block",""},
		{"myores:manganese_block","myores:manganese_block",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:manganese_splitblock 4",
	recipe = {
    		{"myores:manganese","","myores:manganese"},
		{"myores:manganese","","myores:manganese"},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:manganese",
	recipe = {{"myores:manganese_ingot","myores:manganese_ingot","myores:manganese_ingot"},
				{"myores:manganese_ingot","myores:manganese_ingot","myores:manganese_ingot"},
				{"myores:manganese_ingot","myores:manganese_ingot","myores:manganese_ingot"},
				}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:manganese_brick",
	recipe = "myores:manganese",
})

minetest.register_craft({
	type = "cooking",
	output = "myores:manganese_ingot",
	recipe = "myores:manganese_lump",
})

--Quartz
minetest.register_craft({
	output = "myores:quartz_block 4",
	recipe = {
    		{"myores:quartz","myores:quartz",""},
		{"myores:quartz","myores:quartz",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:quartz_tiles 4",
	recipe = {
    		{"myores:quartz_block","myores:quartz_block",""},
		{"myores:quartz_block","myores:quartz_block",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:quartz_splitblock 4",
	recipe = {
    		{"myores:quartz","","myores:quartz"},
		{"myores:quartz","","myores:quartz"},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:quartz",
	recipe = {{"myores:quartz_crystals","myores:quartz_crystals","myores:quartz_crystals"},
				{"myores:quartz_crystals","myores:quartz_crystals","myores:quartz_crystals"},
				{"myores:quartz_crystals","myores:quartz_crystals","myores:quartz_crystals"},
				}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:quartz_brick",
	recipe = "myores:quartz",
})

--Chalcopyrite
minetest.register_craft({
	output = "myores:chalcopyrite_block 4",
	recipe = {
    		{"myores:chalcopyrite","myores:chalcopyrite",""},
		{"myores:chalcopyrite","myores:chalcopyrite",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:chalcopyrite_tiles 4",
	recipe = {
    		{"myores:chalcopyrite_block","myores:chalcopyrite_block",""},
		{"myores:chalcopyrite_block","myores:chalcopyrite_block",""},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:chalcopyrite_splitblock 4",
	recipe = {
    		{"myores:chalcopyrite","","myores:chalcopyrite"},
		{"myores:chalcopyrite","","myores:chalcopyrite"},
		{"","",""},
	}
})

minetest.register_craft({
	output = "myores:quartz",
	recipe = {{"myores:chalcopyrite_lump","myores:chalcopyrite_lump","myores:chalcopyrite_lump"},
				{"myores:chalcopyrite_lump","myores:chalcopyrite_lump","myores:chalcopyrite_lump"},
				{"myores:chalcopyrite_lump","myores:chalcopyrite_lump","myores:chalcopyrite_lump"},
				}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:chalcopyrite_brick",
	recipe = "myores:chalcopyrite",
})
