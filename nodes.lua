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
					{"cobalt",  		  "Cobalt", 			"myores_cobalt.png"},
					{"cobalt_block",      "Cobalt Block",   	"myores_cobalt_block.png"},
					{"cobalt_brick",      "Cobalt Brick",   	"myores_cobalt_brick.png"},
					{"cobalt_splitblock", "Cobalt Splitblock",	"myores_cobalt_splitblock.png"},
					{"cobalt_tiles",      "Cobalt Tiles",   	"myores_cobalt_tiles.png"},
					{"stone_with_cobalt", "Cobalt In Stone",	"default_stone.png^myores_mineral_cobalt.png"},
					{"uvarovite",  		 	 "Uvarovite", 			"myores_uvarovite.png"},
					{"uvarovite_block",      "Uvarovite Block",   	"myores_uvarovite_block.png"},
					{"uvarovite_brick",      "Uvarovite Brick",   	"myores_uvarovite_brick.png"},
					{"uvarovite_splitblock", "Uvarovite Splitblock",	"myores_uvarovite_splitblock.png"},
					{"uvarovite_tiles",      "Uvarovite Tiles",   	"myores_uvarovite_tiles.png"},
					{"stone_with_uvarovite", "Uvarovite In Stone",	"default_stone.png^myores_mineral_uvarovite.png"},
					{"selenite",  		  	 "Selenite", 			"myores_selenite.png"},
					{"selenite_block",      "Selenite Block",   	"myores_selenite_block.png"},
					{"selenite_brick",      "Selenite Brick",   	"myores_selenite_brick.png"},
					{"selenite_splitblock", "Selenite Splitblock",	"myores_selenite_splitblock.png"},
					{"selenite_tiles",      "Selenite Tiles",   	"myores_selenite_tiles.png"},
					{"stone_with_selenite", "Selenite In Stone",	"default_stone.png^myores_mineral_selenite.png"},
					{"miserite",  		  	 "Miserite", 			"myores_miserite.png"},
					{"miserite_block",      "Miserite Block",   	"myores_miserite_block.png"},
					{"miserite_brick",      "Miserite Brick",   	"myores_miserite_brick.png"},
					{"miserite_splitblock", "Miserite Splitblock",	"myores_miserite_splitblock.png"},
					{"miserite_tiles",      "Miserite Tiles",   	"myores_miserite_tiles.png"},
					{"stone_with_miserite", "Miserite In Stone",	"default_stone.png^myores_mineral_miserite.png"},
					{"limonite",  		  	 "Limonite", 			"myores_limonite.png"},
					{"limonite_block",      "Limonite Block",   	"myores_limonite_block.png"},
					{"limonite_brick",      "Limonite Brick",   	"myores_limonite_brick.png"},
					{"limonite_splitblock", "Limonite Splitblock",	"myores_limonite_splitblock.png"},
					{"limonite_tiles",      "Limonite Tiles",   	"myores_limonite_tiles.png"},
					{"stone_with_limonite", "Limonite In Stone",	"default_stone.png^myores_mineral_limonite.png"},
					{"sulfur",  		  	 "Sulfur", 			"myores_sulfur.png"},
					{"sulfur_block",      "Sulfur Block",   	"myores_sulfur_block.png"},
					{"sulfur_brick",      "Sulfur Brick",   	"myores_sulfur_brick.png"},
					{"sulfur_splitblock", "Sulfur Splitblock",	"myores_sulfur_splitblock.png"},
					{"sulfur_tiles",      "Sulfur Tiles",   	"myores_sulfur_tiles.png"},
					{"stone_with_sulfur", "Sulfur In Stone",	"default_stone.png^myores_mineral_sulfur.png"},
					{"lapis_lazuli",  		  	 "Lapis Lazuli", 			"myores_lapis_lazuli.png"},
					{"lapis_lazuli_block",      "Lapis Lazuli Block",   	"myores_lapis_lazuli_block.png"},
					{"lapis_lazuli_brick",      "Lapis Lazuli Brick",   	"myores_lapis_lazuli_brick.png"},
					{"lapis_lazuli_splitblock", "Lapis Lazuli Splitblock",	"myores_lapis_lazuli_splitblock.png"},
					{"lapis_lazuli_tiles",      "Lapis Lazuli Tiles",   	"myores_lapis_lazuli_tiles.png"},
					{"stone_with_lapis_lazuli", "Lapis Lazuli In Stone",	"default_stone.png^myores_mineral_lapis_lazuli.png"},
					{"emerald",  		   "Emerald", 			"myores_emerald.png"},
					{"emerald_block",      "Emerald Block",   	"myores_emerald_block.png"},
					{"emerald_brick",      "Emerald Brick",   	"myores_emerald_brick.png"},
					{"emerald_splitblock", "Emerald Splitblock","myores_emerald_splitblock.png"},
					{"emerald_tiles",      "Emerald Tiles",   	"myores_emerald_tiles.png"},
					{"stone_with_emerald", "Emerald In Stone",	"default_stone.png^myores_mineral_emerald.png"},
					{"amethyst",  		   "Amethyst", 			"myores_amethyst.png"},
					{"amethyst_block",      "Amethyst Block",   	"myores_amethyst_block.png"},
					{"amethyst_brick",      "Amethyst Brick",   	"myores_amethyst_brick.png"},
					{"amethyst_splitblock", "Amethyst Splitblock","myores_amethyst_splitblock.png"},
					{"amethyst_tiles",      "Amethyst Tiles",   	"myores_amethyst_tiles.png"},
					{"stone_with_amethyst", "Amethyst In Stone",	"default_stone.png^myores_mineral_amethyst.png"},
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
	drop = "myores:gneiss",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_silt",{
	drop = "myores:silt",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_slate",{
	drop = "myores:slate",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_shale",{
	drop = "myores:shale",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_schist",{
	drop = "myores:schist",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_redsandstone",{
	drop = "myores:redsandstone",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_calcium",{
	drop = "myores:calcium_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_sodium",{
	drop = "myores:sodium_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_silver",{
	drop = "myores:silver_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_chromium",{
	drop = "myores:chromium_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_manganese",{
	drop = "myores:manganese_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_quartz",{
	drop = "myores:quartz_crystals",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_chalcopyrite",{
	drop = "myores:chalcopyrite_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_cobalt",{
	drop = "myores:cobalt_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_uvarovite",{
	drop = "myores:uvarovite_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_selenite",{
	drop = "myores:selenite_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_miserite",{
	drop = "myores:miserite_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_limonite",{
	drop = "myores:limonite_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_sulfur",{
	drop = "myores:sulfur_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_lapis_lazuli",{
	drop = "myores:lapis_lazuli_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_emerald",{
	drop = "myores:emerald_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})
minetest.override_item("myores:stone_with_amethyst",{
	drop = "myores:amethyst_lump",
	groups = {cracky=2,not_in_creative_inventory=1},})


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
minetest.register_craftitem("myores:cobalt_lump",{
	inventory_image = "myores_cobalt_lump.png",
	description = "Cobalt Lump",
})
minetest.register_craftitem("myores:uvarovite_lump",{
	inventory_image = "myores_uvarovite_lump.png",
	description = "Uvarovite Lump",
})
minetest.register_craftitem("myores:selenite_lump",{
	inventory_image = "myores_selenite_lump.png",
	description = "Selenite Lump",
})
minetest.register_craftitem("myores:miserite_lump",{
	inventory_image = "myores_miserite_lump.png",
	description = "Miserite Lump",
})
minetest.register_craftitem("myores:limonite_lump",{
	inventory_image = "myores_limonite_lump.png",
	description = "Limonite Lump",
})
minetest.register_craftitem("myores:sulfur_lump",{
	inventory_image = "myores_sulfur_lump.png",
	description = "Sulfur Lump",
})
minetest.register_craftitem("myores:lapis_lazuli_lump",{
	inventory_image = "myores_lapis_lazuli_lump.png",
	description = "Lapis Lazuli Lump",
})
minetest.register_craftitem("myores:emerald_lump",{
	inventory_image = "myores_emerald_lump.png",
	description = "Emerald Lump",
})
minetest.register_craftitem("myores:amethyst_lump",{
	inventory_image = "myores_amethyst_lump.png",
	description = "Amethyst Lump",
})
