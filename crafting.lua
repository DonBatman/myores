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

--silt

minetest.register_craft({
	output = "myores:silt_splitstone 4",
	recipe = {
    		{"myores:silt","","myores:silt"},
		{"myores:silt","","myores:silt"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "myores:silt_brick",
	recipe = "myores:silt",
})

minetest.register_craft({
	output = "myores:silt_tile 4",
	recipe = {
    		{"myores:silt","myores:silt",""},
		{"myores:silt","myores:silt",""},
	}
})

minetest.register_craft({
	output = "myores:silt_tiles 4",
	recipe = {
    		{"myores:silt_tile","myores:silt_tile",""},
		{"myores:silt_tile","myores:silt_tile",""},
	}
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
