--Glow Ore
local glow_stones = {
					{"Green","green"},
					{"Orange","orange"},
					{"Blue","blue"},
					}
for i in ipairs(glow_stones) do
	local des = glow_stones[i][1]
	local col = glow_stones[i][2]

core.register_node("myores:glowstone_"..col,{
	description = des.." Glow Stone",
	tiles = {"myores_glowstone_"..col..".png"},
	drawtype = "normal",
	param = "light",
	drop = "myores:glowstone_cobble_"..col,
	light_source = 10,
	groups = {cracky = 2, not_in_creative_inventory = 1}
})
core.register_node("myores:glowstone_cobble_"..col,{
	description = des.." Glow Stone Cobble",
	tiles = {"myores_glowstone_cobble_"..col..".png"},
	drawtype = "normal",
	param = "light",
	light_source = 10,
	groups = {cracky = 2, not_in_creative_inventory = 1}
})

core.register_node("myores:glowstone_brick_"..col,{
	description = des.." Glow Stone Brick",
	tiles = {"myores_glowstone_brick_"..col..".png"},
	drawtype = "normal",
	param = "light",
	light_source = 10,
	groups = {cracky = 2, not_in_creative_inventory = 1}
})
core.register_craft({
	type = "cooking",
	output = "myores:glowstone_"..col,
	recipe = "myores:glowstone_cobble_"..col,
})
core.register_craft({
	type = "cooking",
	output = "myores:glowstone_brick_"..col,
	recipe = "myores:glowstone_"..col,
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:glowstone_"..col,
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -300,
})
end

--Nether
local nether_stones = {
					{"",""},
					{"Cobble","_cobble"},
					{"Bricks","_brick"},
					{"Small Bricks","_smbrick"},
					{"Block","_block"},
					{"Tiles","_tiles"},
					{"Small Tiles","_smtiles"},
					{"Floor","_floor"},
					}
for i in ipairs(nether_stones) do
	local des = nether_stones[i][1]
	local mat = nether_stones[i][2]
	local dro = nether_stones[i][3]

core.register_node("myores:nether"..mat,{
	description = "Nether Stone "..des,
	tiles = {"myores_nether"..mat..".png"},
	drawtype = "normal",
	param = "light",
	light_source = 10,
	groups = {cracky = 2, not_in_creative_inventory = 1}
})
end
core.override_item("myores:nether",{
	drop = "myores:nether_cobble",})
--Crafts
core.register_craft({
	output = "myores:nether_smbrick 4",
	recipe = {
    		{"myores:nether_brick","myores:nether_brick",""},
			{"myores:nether_brick","myores:nether_brick",""},
			{"","",""},
	}
})
core.register_craft({
	output = "myores:nether_block 4",
	recipe = {
    		{"myores:nether","myores:nether",""},
			{"myores:nether","myores:nether",""},
			{"","",""},
	}
})
core.register_craft({
	output = "myores:nether_tiles 4",
	recipe = {
    		{"myores:nether_block","myores:nether_block",""},
			{"myores:nether_block","myores:nether_block",""},
			{"","",""},
	}
})
core.register_craft({
	output = "myores:nether_smtiles 4",
	recipe = {
    		{"myores:nether_tiles","myores:nether_tiles",""},
			{"myores:nether_tiles","myores:nether_tiles",""},
			{"","",""},
	}
})
core.register_craft({
	output = "myores:nether_floor 8",
	recipe = {
    		{"myores:nether","myores:nether","myores:nether"},
			{"myores:nether","","myores:nether"},
			{"myores:nether","myores:nether","myores:nether"},
	}
})
core.register_craft({
	type = "cooking",
	output = "myores:nether",
	recipe = "myores:nether_cobble",
})
core.register_craft({
	type = "cooking",
	output = "myores:nether_brick",
	recipe = "myores:nether",
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:nether",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -600,
})

--Mithril
local mithril_stones = {
					{"",""},
					{"Cobble","_cobble"},
					{"Bricks","_brick"},
					{"Small Bricks","_smbrick"},
					{"Block","_block"},
					{"Tiles","_tiles"},
					{"Small Tiles","_smtiles"},
					{"Floor","_floor"},
					}
for i in ipairs(nether_stones) do
	local des = nether_stones[i][1]
	local mat = nether_stones[i][2]
	local dro = nether_stones[i][3]

core.register_node("myores:mithril"..mat,{
	description = "Mithril Stone "..des,
	tiles = {"myores_mithril"..mat..".png"},
	drawtype = "normal",
	param = "light",
	light_source = 10,
	groups = {cracky = 2, not_in_creative_inventory = 1}
})
end
core.override_item("myores:mithril",{
	drop = "myores:mithril_lump",})
core.register_craftitem("myores:mithril_lump",{
	inventory_image = "myores_mithril_lump.png",
	description = "Mithril Lump",
	groups = {not_in_creative_inventory = 1}})
core.register_craftitem("myores:mithril_ingot",{
	inventory_image = "myores_mithril_ingot.png",
	description = "Mithril Ingot",
	groups = {not_in_creative_inventory = 1}})
--Crafts
core.register_craft({
	output = "myores:mithril_smbrick 4",
	recipe = {
    		{"myores:mithril_brick","myores:mithril_brick",""},
			{"myores:mithril_brick","myores:mithril_brick",""},
			{"","",""},
	}
})
core.register_craft({
	output = "myores:mithril_block 4",
	recipe = {
    		{"myores:mithril","myores:mithril",""},
			{"myores:mithril","myores:mithril",""},
			{"","",""},
	}
})
core.register_craft({
	output = "myores:mithril_tiles 4",
	recipe = {
    		{"myores:mithril_block","myores:mithril_block",""},
			{"myores:mithril_block","myores:mithril_block",""},
			{"","",""},
	}
})
core.register_craft({
	output = "myores:mithril_smtiles 4",
	recipe = {
    		{"myores:mithril_tiles","myores:mithril_tiles",""},
			{"myores:mithril_tiles","myores:mithril_tiles",""},
			{"","",""},
	}
})
core.register_craft({
	output = "myores:mithril_floor 8",
	recipe = {
    		{"myores:mithril","myores:mithril","myores:mithril"},
			{"myores:mithril","","myores:mithril"},
			{"myores:mithril","myores:mithril","myores:mithril"},
	}
})
core.register_craft({
	output = "myores:mithril",
	recipe = {
    		{"myores:mithril_ingot","myores:mithril_ingot","myores:mithril_ingot"},
			{"myores:mithril_ingot","myores:mithril_ingot","myores:mithril_ingot"},
			{"myores:mithril_ingot","myores:mithril_ingot","myores:mithril_ingot"},
	}
})
core.register_craft({
	type = "cooking",
	output = "myores:mithril_ingot",
	recipe = "myores:mithril_lump",
})
core.register_craft({
	type = "cooking",
	output = "myores:mithril_brick",
	recipe = "myores:mithril",
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:mithril",
	wherein        = "default:stone",
	clust_scarcity = 16*16*16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -300,
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:mithril",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -400,
})

--Nyan

core.register_node("myores:nyancat",{
	description = " Nyan Cat Rainbow",
	tiles = {
			"myores_nyancat_side.png",
			"myores_nyancat_side.png",
			"myores_nyancat_side.png",
			"myores_nyancat_side.png",
			"myores_nyancat_back.png",
			"myores_nyancat_front.png",
			},
	drawtype = "normal",
	param = "light",
	groups = {cracky = 2, not_in_creative_inventory = 1}
})
core.register_node("myores:nyancat_rainbow",{
	description = " Nyan Cat",
	tiles = {"myores_nyancat_rainbow.png",},
	drawtype = "normal",
	param = "light",
	param2 = "facedir",
	groups = {cracky = 2, not_in_creative_inventory = 1}
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:nyancat_rainbow",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 4,
	clust_size     = 2,
	height_min     = -31000,
	height_max     = -50,
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:nyancat_rainbow",
	wherein        = "default:stone",
	clust_scarcity = 20*20*20,
	clust_num_ores = 7,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -250,
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:nyancat",
	wherein        = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -250,
})

--Mystery Block
core.register_node("myores:mystery_block",{
	description = "Mystery Block",
	tiles = {"myores_mystery_block.png",},
	drawtype = "normal",
	param = "light",
	groups = {cracky = 2, not_in_creative_inventory = 1},
	on_destruct = function(pos)
		local rand = math.random(19)
		if rand == 1 then
			core.spawn_item(pos, "default:diamond 10")
			core.spawn_item(pos, "default:torch 10")
			core.spawn_item(pos, "myores:nyancat_rainbow 1")
		elseif rand == 2 then
			core.spawn_item(pos, "default:stick 25")
			core.spawn_item(pos, "default:pick_diamond 1")
			core.spawn_item(pos, "myores:granite 25")
		elseif rand == 3 then
			core.spawn_item(pos, "myores:nether 3")
			core.spawn_item(pos, "default:tree 25")
			core.spawn_item(pos,"myores:marble 20")
		elseif rand == 4 then
			core.spawn_item(pos, "myores:mithril_ingot 5")
			core.spawn_item(pos, "myores:chromium 15")
			core.spawn_item(pos, "wool:white 50")
		elseif rand == 5 then
			core.spawn_item(pos, "myores:amethyst 12")
			core.spawn_item(pos, "wool:black 50")
			core.spawn_item(pos, "myores:nyancat_rainbow 1")
		elseif rand == 6 then
			core.spawn_item(pos, "myores:quartz 5")
			core.spawn_item(pos, "default:steel_ingot 50")
			core.spawn_item(pos, "default:stick 25")
		elseif rand == 7 then
			core.spawn_item(pos,"myores:emerald 7")
			core.spawn_item(pos,"default:mese_crystal 7")
			core.spawn_item(pos,"default:pine_wood 20")
		elseif rand == 8 then
			core.spawn_item(pos,"myores:lapis_lazuli 10")
			core.spawn_item(pos,"default:glass 10")
			core.spawn_item(pos,"default:torch 20")
		elseif rand == 9 then
			core.spawn_item(pos,"myores:miserite 10")
			core.spawn_item(pos,"default:wood 10")
			core.spawn_item(pos,"default:chest_locked 2")
		elseif rand == 10 then
			core.spawn_item(pos,"myores:glowstone_orange 3")
			core.spawn_item(pos,"default:brick 50")
			core.spawn_item(pos,"default:gold_ingot 2")
		elseif rand == 11 then
			core.spawn_item(pos,"default:obsidian 12")
			core.spawn_item(pos,"default:pick_diamond 1")
			core.spawn_item(pos,"default:copper_ingot 8")
		elseif rand == 12 then
			core.spawn_item(pos,"farming:straw 12")
			core.spawn_item(pos,"default:sword_diamond 1")
			core.spawn_item(pos,"default:tin_ingot 8")
		elseif rand == 13 then
			core.spawn_item(pos,"default:bookshelf 1")
			core.spawn_item(pos,"default:axe_diamond 1")
			core.spawn_item(pos,"default:bronz_ingot 8")
		elseif rand == 14 then
			core.spawn_item(pos,"default:sword_nether 6")
		elseif rand == 15 then
			core.spawn_item(pos,"default:steel_ingot 6")
			core.spawn_item(pos,"default:stick 10")
		elseif rand == 16 then
			core.spawn_item(pos,"myores:pick_marble 1")
			core.spawn_item(pos,"default:dirt 10")
		elseif rand == 17 then
			core.spawn_item(pos,"myores:pick_gneiss 1")
			core.spawn_item(pos,"default:cobble 10")
		elseif rand == 18 then
			core.spawn_item(pos,"myores:basalt 12")
			core.spawn_item(pos,"default:stick 10")
		elseif rand == 19 then
			core.spawn_item(pos,"myores:manganese 5")
			core.spawn_item(pos,"default:stick 99")
		elseif rand == 20 then
			core.spawn_item(pos,"myores:cute_block 5")
		elseif rand == 21 then
			core.spawn_item(pos,"myores:cute_block2 5")
		elseif rand == 22 then
			core.spawn_item(pos,"myores:cobble_black 99")
		elseif rand == 23 then
			core.spawn_item(pos,"myores:cobble_white 99")
		elseif rand == 24 then
			core.spawn_item(pos,"myores:cobble_white 50")
			core.spawn_item(pos,"default:stick 50")
		elseif rand == 25 then
			core.spawn_item(pos,"myores:cobble_black 50")
			core.spawn_item(pos,"default:stick 50")
		elseif rand == 26 then
			core.spawn_item(pos,"farming:seed_wheat 15")
			core.spawn_item(pos,"farming:steel_hoe 1")
		elseif rand == 27 then
			core.spawn_item(pos,"farming:seed_cotton 15")
			core.spawn_item(pos,"farming:steel_hoe 1")
		elseif rand == 28 then
			core.spawn_item(pos,"default:large_cactus_seedling 15")
			core.spawn_item(pos,"farming:steel_axe 1")
		elseif rand == 29 then
			core.spawn_item(pos,"myores:bounce_block 9")
		elseif rand == 30 then
			core.spawn_item(pos,"myores:bounce_block 1")
			core.spawn_item(pos,"myores:amethyst 15")
		end
		minetest.add_particlespawner(20, 2,
				pos, pos,
				{x=2, y=0.2, z=2}, {x=-2, y=2, z=-2},
				{x=0, y=-6, z=0}, {x=0, y=-10, z=0},
				0.5, 2,
				1, 5,
				true,
				"myores_question_mark.png")
	end
			
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:mystery_block",
	wherein        = "default:stone",
	clust_scarcity = 16*16*16,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -1,
})

--Cronk
core.register_node("myores:cronk",{
	description = "Cronk",
	drawtype = "nodebox",
	tiles = {"myores_gneiss.png",},
	param = "light",
	groups = {cracky = 2, not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
			{-0.5, -0.125, -0.125, 0.5, 0.125, 0.125},
			{-0.125, -0.125, -0.5, 0.125, 0.125, 0.5},
		}
	}
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:cronk",
	wherein        = "default:stone",
	clust_scarcity = 16*16*16,
	clust_num_ores = 1,
	clust_size     = 1,
	height_min     = -31000,
	height_max     = -2000,
})

--Bloodstone
core.register_node("myores:bloodstone",{
	description = "Bloodstone",
	tiles = {"myores_bloodstone.png",},
	drawtype = "normal",
	param = "light",
	lightsource = 10,
	groups = {cracky = 2, not_in_creative_inventory = 1},
})
core.register_ore({
	ore_type       = "scatter",
	ore            = "myores:bloodstone",
	wherein        = "default:stone",
	clust_scarcity = 16*16*16,
	clust_num_ores = 4,
	clust_size     = 3,
	height_min     = -31000,
	height_max     = -50,
})
--Cute Blocks
minetest.register_node("myores:cute_block", {
	description = "Cutepie Block",
	drawtype = "normal",
	tiles = {
		"myores_cute_block_tb.png",
		"myores_cute_block_tb.png",
		"myores_cute_block_frown.png",
		"myores_cute_block_frown.png",
		"myores_cute_block_frown.png",
		"myores_cute_block_frown.png"
		},
	paramtype = "light",
  	paramtype2 = "facedir",
	groups = {cracky = 2 , oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	on_punch = function(pos, node, player, pointed_thing)
		minetest.set_node(pos,{name = "myores:cute_block_light", param2 = node.param2})
	end,
})

minetest.register_node("myores:cute_block_light", {
	drawtype = "normal",
	tiles = {
		"myores_cute_block_tb.png",
		"myores_cute_block_tb.png",
		"myores_cute_block.png",
		"myores_cute_block.png",
		"myores_cute_block.png",
		"myores_cute_block.png"
		},
	paramtype = "light",
  	paramtype2 = "facedir",
	light_source = 14,
	groups = {cracky = 2 , oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	drop = "cutepie:cute_block",
	on_punch = function(pos, node, player, pointed_thing)
		minetest.set_node(pos,{name = "myores:cute_block", param2 = node.param2})
	end,
})

minetest.register_node("myores:cute_block2", {
	description = "Cutepie Block 2",
	drawtype = "normal",
	tiles = {"myores_cute_block2_tb.png",
			"myores_cute_block2_tb.png",
			"myores_cute_block2_frown.png",
			"myores_cute_block2_frown.png",
			"myores_cute_block2_frown.png",
			"myores_cute_block2_frown.png"},
	paramtype = "light",
  	paramtype2 = "facedir",
	groups = {cracky = 2 , oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	on_punch = function(pos, node, player, pointed_thing)
		minetest.set_node(pos,{name = "myores:cute_block_light2", param2 = node.param2})
	end,
})

minetest.register_node("myores:cute_block_light2", {
	drawtype = "normal",
	tiles = {"myores_cute_block2_tb.png",
			"myores_cute_block2_tb.png",
			"myores_cute_block2.png",
			"myores_cute_block2.png",
			"myores_cute_block2.png",
			"myores_cute_block2.png"},
	paramtype = "light",
  	paramtype2 = "facedir",
	light_source = 14,
	groups = {cracky = 2 , oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	drop = "cutepie:cute_block2",
	on_punch = function(pos, node, player, pointed_thing)
		minetest.set_node(pos,{name = "myores:cute_block2", param2 = node.param2})
	end,
})
--Cobble
core.register_node("myores:cobble_black",{
	description = "Black Cobble",
	tiles = {"myores_cobble_black.png",},
	drawtype = "normal",
	param = "light",
	groups = {cracky = 2, not_in_creative_inventory = 1},
})
core.register_node("myores:cobble_white",{
	description = "White Cobble",
	tiles = {"myores_cobble_white.png",},
	drawtype = "normal",
	param = "light",
	groups = {cracky = 2, not_in_creative_inventory = 1},
})
--Bouncy Block
minetest.register_node("myores:bounce_block", {
	description = "Bounce Block",
	drawtype = "normal",
	tiles = {"myores_bounce.png"},
	paramtype = "light",
	groups = {cracky = 3, bouncy = 70, fall_damage_add_percent = -1000, not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),

})
