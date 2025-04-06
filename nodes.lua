local ores_table = {--item, Description, image
					{"basalt", 			  "Basalt",			  "myores_basalt.png"},
					{"basalt_brick",	  "Basalt Brick",	  "myores_basalt_brick.png"},
					{"basalt_tile",		  "Basalt Tile",	  "myores_basalt_block.png"},
					{"basalt_tiles",	  "Basalt Tiles",	  "myores_basalt_tiles.png"},
					{"basalt_splitstone", "Basalt Splitstone","myores_basalt_splitstone.png"},
					{"stone_with_gneiss", "Gneiss",			  "default_stone.png^myores_mineral_gneiss.png"},
					{"gneiss",			  "Gneiss",			  "myores_gneiss.png"},
					{"gneiss_brick",	  "Gneiss Brick",	  "myores_gneiss_brick.png"},
					{"gneiss_tile",		  "Gneiss Tile",	  "myores_gneiss_block.png"},
					{"gneiss_tiles",	  "Gneiss Tiles",	  "myores_gneiss_tiles.png"},
					{"gneiss_splitstone", "Gneiss Splitstone","myores_gneiss_splitstone.png"},
					{"granite",			  "Granite",		  "myores_granite.png"},
					{"granite_bricks",	  "Granite Bricks",	  "myores_granite_brick.png"},
					{"granite_tile",	  "Granite Tile",	  "myores_granite_block.png"},
					{"granite_tiles",	  "Granite Tiles",	  "myores_granite_tiles.png"},
					{"granite_splitstone","Granite Splitstone","myores_granite_splitstone.png"},
					{"marble",			  "Marble",			  "myores_marble.png"},
					{"marble_brick",	  "Marble Brick",	  "myores_marble_brick.png"},
					{"marble_tile",		  "Marble Tile",	  "myores_marble_block.png"},
					{"marble_tiles",	  "Marble Tiles",	  "myores_marble_tiles.png"},
					{"marble_splitstone", "Marble Splitstone","myores_marble_splitstone.png"},
					{"stone_with_redsandstone", "Red Sandstone","default_stone.png^myores_mineral_redsandstone.png"},
					{"stone_with_schist", "Schist", 		  "default_stone.png^myores_mineral_schist.png"},
					{"schist", 			  "Schist", 		  "myores_schist.png"},
					{"schist_brick", 	  "Schist Brick", 	  "myores_schist_brick.png"},
					{"schist_tile", 	  "Schist Tile", 	  "myores_schist_block.png"},
					{"schist_tiles", 	  "Schist Tiles", 	  "myores_schist_tiles.png"},
					{"schist_splitstone", "Schist Splitstone","myores_schist_splitstone.png"},
					{"stone_with_shale",  "Shale",  		  "default_stone.png^myores_mineral_shale.png"},
					{"shale",  			  "Shale",  		  "myores_shale.png"},
					{"shale_brick",  	  "Shale Brick",  	  "myores_shale_brick.png"},
					{"shale_block",  	  "Shale Block",  	  "myores_shale_block.png"},
					{"shale_tiles",  	  "Shale Tiles",  	  "myores_shale_tiles.png"},
					{"shale_splitstone",  "Shale Splitstone", "myores_shale_splitstone.png"},
					{"stone_with_silt",	  "Silt",             "default_stone.png^myores_mineral_silt.png"},
					{"stone_with_slate",  "Slate",            "default_stone.png^myores_mineral_slate.png"},
					{"slate",             "Slate",            "myores_slate.png"},
					{"slate_brick",       "Slate Brick",      "myores_slate_brick.png"},
					{"slate_tile",        "Slate Tile",       "myores_slate_block.png"},
					{"slate_tiles",       "Slate Tiles",      "myores_slate_tiles.png"},
					{"slate_splitstone",  "Slate Splitstone", "myores_slate_splitstone.png"},
					{"chalk",  			  "Chalk", 			  "myores_chalk.png"},
					{"stone_with_calcium","Calcium", 		  "default_stone.png^myores_mineral_calcium.png"},
					{"calcium_block",  	  "Calcium Block", 	  "myores_calcium_block.png"},
					{"stone_with_sodium", "Sodium", 		  "default_stone.png^myores_mineral_sodium.png"},
					{"sodium_block",  	  "Sodium Block", 	  "myores_sodium_block.png"},
					{"silver",  		  "Silver", 		  "myores_silver.png"},
					{"silver_block",  	  "Silver Block", 	  "myores_silver_block.png"},
					{"silver_brick",  	  "Silver Brick", 	  "myores_silver_brick.png"},
					{"silver_splitblock", "Silver Splitblock","myores_silver_splitblock.png"},
					{"silver_tiles",  	  "Silver Tiles", 	  "myores_silver_tiles.png"},
					{"stone_with_silver", "Silver In Stone",  "default_stone.png^myores_mineral_silver.png"},
					{"chromium",  		  "Chromium", 		  "myores_chromium.png"},
					{"chromium_block",    "Chromium Block",   "myores_chromium_block.png"},
					{"chromium_brick",    "Chromium Brick",   "myores_chromium_brick.png"},
					{"chromium_splitblock","Chromium Splitblock","myores_chromium_splitblock.png"},
					{"chromium_tiles",    "Chromium Tiles",   "myores_chromium_tiles.png"},
					{"stone_with_chromium","Chromium In Stone","default_stone.png^myores_mineral_chromium.png"},
					{"manganese",  		  "Manganese", 		  "myores_manganese.png"},
					{"manganese_block",    "Manganese Block",   "myores_manganese_block.png"},
					{"manganese_brick",    "Manganese Brick",   "myores_manganese_brick.png"},
					{"manganese_splitblock","Manganese Splitblock","myores_manganese_splitblock.png"},
					{"manganese_tiles",    "Manganese Tiles",   "myores_manganese_tiles.png"},
					{"stone_with_manganese","Manganese In Stone","default_stone.png^myores_mineral_manganese.png"},
					{"quartz",  		  "Quartz", 		"myores_quartz.png"},
					{"quartz_block",      "Quartz Block",   "myores_quartz_block.png"},
					{"quartz_brick",      "Quartz Brick",   "myores_quartz_brick.png"},
					{"quartz_splitblock", "Quartz Splitblock","myores_quartz_splitblock.png"},
					{"quartz_tiles",      "Quartz Tiles",   "myores_quartz_tiles.png"},
					{"stone_with_quartz", "Quartz In Stone","default_stone.png^myores_mineral_quartz.png"},
					{"chalcopyrite",  		  "Chalcopyrite", 		"myores_chalcopyrite.png"},
					{"chalcopyrite_block",      "Chalcopyrite Block",   "myores_chalcopyrite_block.png"},
					{"chalcopyrite_brick",      "Chalcopyrite Brick",   "myores_chalcopyrite_brick.png"},
					{"chalcopyrite_splitblock", "Chalcopyrite Splitblock","myores_chalcopyrite_splitblock.png"},
					{"chalcopyrite_tiles",      "Chalcopyrite Tiles",   "myores_chalcopyrite_tiles.png"},
					{"stone_with_chalcopyrite", "Chalcopyrite In Stone","default_stone.png^myores_mineral_chalcopyrite.png"},
					}
					
for i in ipairs(ores_table) do
	local mat = ores_table[i][1]
	local des = ores_table[i][2]
	local img = ores_table[i][3]


minetest.register_node("myores:"..mat, {
	description = des,
	tiles = {img},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2,not_in_creative_inventory=0},
	sounds = default.node_sound_stone_defaults(),
})
end
minetest.override_item("myores:stone_with_gneiss",{
	drop = "myores:gneiss",})
minetest.override_item("myores:stone_with_silt",{
	drop = "myores:silt",})
minetest.override_item("myores:stone_with_slate",{
	drop = "myores:slate",})
minetest.override_item("myores:stone_with_shale",{
	drop = "myores:shale",})
minetest.override_item("myores:stone_with_schist",{
	drop = "myores:schist",})
minetest.override_item("myores:stone_with_redsandstone",{
	drop = "myores:redsandstone",})
minetest.override_item("myores:stone_with_calcium",{
	drop = "myores:calcium_lump",})
minetest.override_item("myores:stone_with_sodium",{
	drop = "myores:sodium_lump",})
minetest.override_item("myores:stone_with_silver",{
	drop = "myores:silver_lump",})
minetest.override_item("myores:stone_with_chromium",{
	drop = "myores:chromium_lump",})
minetest.override_item("myores:stone_with_manganese",{
	drop = "myores:manganese_lump",})
minetest.override_item("myores:stone_with_quartz",{
	drop = "myores:quartz_crystal",})
minetest.override_item("myores:stone_with_chalcopyrite",{
	drop = "myores:chalcopyrite_lump",})

--Craft Items
minetest.register_craftitem("myores:calcium_lump",{
	inventory_image = "myores_calcium_lump.png",
	description = "Calcium Lump",
})
minetest.register_craftitem("myores:calcium_ingot",{
	inventory_image = "myores_calcium_ingot.png",
	description = "Calcium Ingot",
})
minetest.register_craftitem("myores:calcium",{
	inventory_image = "myores_calcium.png",
	description = "Calcium",
})
minetest.register_craftitem("myores:sodium_lump",{
	inventory_image = "myores_sodium_lump.png",
	description = "Sodium Lump",
})
minetest.register_craftitem("myores:sodium_ingot",{
	inventory_image = "myores_sodium_ingot.png",
	description = "Sodium Ingot",
})
minetest.register_craftitem("myores:salt",{
	inventory_image = "myores_salt.png",
	description = "Salt",
})

minetest.register_craftitem("myores:silver_lump",{
	inventory_image = "myores_silver_lump.png",
	description = "Silver Lump",
})
minetest.register_craftitem("myores:silver_ingot",{
	inventory_image = "myores_silver_ingot.png",
	description = "Silver Ingot",
})

minetest.register_craftitem("myores:chromium_lump",{
	inventory_image = "myores_chromium_lump.png",
	description = "Chromium Lump",
})
minetest.register_craftitem("myores:chromium_ingot",{
	inventory_image = "myores_chromium_ingot.png",
	description = "Chromium Ingot",
})
minetest.register_craftitem("myores:manganese_lump",{
	inventory_image = "myores_manganese_lump.png",
	description = "Manganese Lump",
})
minetest.register_craftitem("myores:manganese_ingot",{
	inventory_image = "myores_manganese_ingot.png",
	description = "Manganese Ingot",
})
minetest.register_craftitem("myores:chalcopyrite_lump",{
	inventory_image = "myores_chalcopyrite_lump.png",
	description = "Chalcopyrite Lump",
})
minetest.register_craftitem("myores:quartz_crystals",{
	inventory_image = "myores_quartz_crystals.png",
	description = "Quartz Crystals",
})
