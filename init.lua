local fant = core.settings:get_bool("myores.fantasy", true)
local bedr = core.settings:get_bool("myores.bedrock", true)
local bedmin = tonumber(core.settings:get("myores.min_depth")) or -29000
local bedmax = tonumber(core.settings:get("myores.max_depth")) or -30000

myores = {}

dofile(core.get_modpath("myores").."/nodes.lua")
dofile(core.get_modpath("myores").."/mapgen.lua")
dofile(core.get_modpath("myores").."/crafting.lua")
dofile(core.get_modpath("myores").."/tools.lua")
dofile(core.get_modpath("myores").."/chests.lua")
dofile(core.get_modpath("myores").."/chests_locked.lua")
dofile(core.get_modpath("myores").."/chests_crafts.lua")
dofile(core.get_modpath("myores").."/stairs.lua")

if core.get_modpath("3d_armor") then
	dofile(core.get_modpath("myores").."/armor.lua")
end

if fant then
	dofile(core.get_modpath("myores").."/fantasy.lua")
	dofile(core.get_modpath("myores").."/fantasy_tools.lua")
	if core.get_modpath("3d_armor") then
		dofile(core.get_modpath("myores").."/fantasy_armor.lua")
	end
end

if bedr then
	core.register_node("myores:bedrock", {
		description = "Bedrock",
		tiles = {"myores_bedrock.png"},
		groups = {unbreakable = 1, not_in_creative_inventory = 1},
	})
	core.register_ore({
		ore_type = "scatter",
		ore = "myores:bedrock",
		wherein = "default:stone",
		clust_scarcity = 1*1*1,
		clust_num_ores = 5,
		clust_size = 5,
		y_min = bedmin,
		y_max = bedmax,
	})
end


if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"myores:basalt"},  25},
		{"dro", {"myores:gneiss"},  25},
		{"dro", {"myores:granite"},  25},
		{"dro", {"myores:marble"},  25},
		{"dro", {"myores:schist"},  25},
		{"dro", {"myores:shale"},  25},
		{"dro", {"{myores:slate"},  25},
		{"dro", {"myores:chalk"},  25},
		{"dro", {"myores:silver"},  25},
		{"dro", {"myores:chromium"},  25},
		{"dro", {"myores:manganese"},  25},
		{"dro", {"myores:quartz"},  25},
		{"dro", {"myores:chalcopyrite"},  25},
		{"dro", {"myores:cobalt"},  25},
		{"dro", {"myores:uvarovite"},  25},
		{"dro", {"myores:selenite"},  25},
		{"dro", {"myores:miserite"},  25},
		{"dro", {"myores:limonite"},  25},
		{"dro", {"myores:sulfur"},  25},
		{"dro", {"myores:lapis_lazuli"},  25},
		{"dro", {"myores:emerald"},  25},
		{"dro", {"myores:amethyst"},  25},
		{"dro", {"myores:aluminum"},  25},
	})
	
	if core.get_modpath("3d_armor") then
		lucky_block:add_blocks({
			{"dro", {"myores:helmet_basalt"},  1},
			{"dro", {"myores:helmet_gneiss"},  1},
			{"dro", {"myores:helmet_granite"},  1},
			{"dro", {"myores:helmet_marble"},  1},
			{"dro", {"myores:helmet_silver"},  1},
			{"dro", {"myores:helmet_chromium"},  1},
			{"dro", {"myores:helmet_manganese"},  1},
			{"dro", {"myores:helmet_quartz"},  1},
			{"dro", {"myores:helmet_chalcopyrite"},  1},
			{"dro", {"myores:helmet_cobalt"},  1},
			{"dro", {"myores:helmet_uvarovite"},  1},
			{"dro", {"myores:helmet_selenite"},  1},
			{"dro", {"myores:helmet_miserite"},  1},
			{"dro", {"myores:helmet_limonite"},  1},
			{"dro", {"myores:helmet_sulfur"},  1},
			{"dro", {"myores:helmet_lapis_lazuli"},  1},
			{"dro", {"myores:helmet_emerald"},  1},
			{"dro", {"myores:helmet_amethyst"},  1},
			
			{"dro", {"myores:chestplate_basalt"},  1},
			{"dro", {"myores:chestplate_gneiss"},  1},
			{"dro", {"myores:chestplate_granite"},  1},
			{"dro", {"myores:chestplate_marble"},  1},
			{"dro", {"myores:chestplate_silver"},  1},
			{"dro", {"myores:chestplate_chromium"},  1},
			{"dro", {"myores:chestplate_manganese"},  1},
			{"dro", {"myores:chestplate_quartz"},  1},
			{"dro", {"myores:chestplate_chalcopyrite"},  1},
			{"dro", {"myores:chestplate_cobalt"},  1},
			{"dro", {"myores:chestplate_uvarovite"},  1},
			{"dro", {"myores:chestplate_selenite"},  1},
			{"dro", {"myores:chestplate_miserite"},  1},
			{"dro", {"myores:chestplate_limonite"},  1},
			{"dro", {"myores:chestplate_sulfur"},  1},
			{"dro", {"myores:chestplate_lapis_lazuli"},  1},
			{"dro", {"myores:chestplate_emerald"},  1},
			{"dro", {"myores:chestplate_amethyst"},  1},
			
			{"dro", {"myores:leggings_basalt"},  1},
			{"dro", {"myores:leggings_gneiss"},  1},
			{"dro", {"myores:leggings_granite"},  1},
			{"dro", {"myores:leggings_marble"},  1},
			{"dro", {"myores:leggings_silver"},  1},
			{"dro", {"myores:leggings_chromium"},  1},
			{"dro", {"myores:leggings_manganese"},  1},
			{"dro", {"myores:leggings_quartz"},  1},
			{"dro", {"myores:leggings_chalcopyrite"},  1},
			{"dro", {"myores:leggings_cobalt"},  1},
			{"dro", {"myores:leggings_uvarovite"},  1},
			{"dro", {"myores:leggings_selenite"},  1},
			{"dro", {"myores:leggings_miserite"},  1},
			{"dro", {"myores:leggings_limonite"},  1},
			{"dro", {"myores:leggings_sulfur"},  1},
			{"dro", {"myores:leggings_lapis_lazuli"},  1},
			{"dro", {"myores:leggings_emerald"},  1},
			{"dro", {"myores:leggings_amethyst"},  1},
			
			{"dro", {"myores:boots_basalt"},  1},
			{"dro", {"myores:boots_gneiss"},  1},
			{"dro", {"myores:boots_granite"},  1},
			{"dro", {"myores:boots_marble"},  1},
			{"dro", {"myores:boots_silver"},  1},
			{"dro", {"myores:boots_chromium"},  1},
			{"dro", {"myores:boots_manganese"},  1},
			{"dro", {"myores:boots_quartz"},  1},
			{"dro", {"myores:boots_chalcopyrite"},  1},
			{"dro", {"myores:boots_cobalt"},  1},
			{"dro", {"myores:boots_uvarovite"},  1},
			{"dro", {"myores:boots_selenite"},  1},
			{"dro", {"myores:boots_miserite"},  1},
			{"dro", {"myores:boots_limonite"},  1},
			{"dro", {"myores:boots_sulfur"},  1},
			{"dro", {"myores:boots_lapis_lazuli"},  1},
			{"dro", {"myores:boots_emerald"},  1},
			{"dro", {"myores:boots_amethyst"},  1},
		})
	end
	if fant then
		lucky_block:add_blocks({
			{"nod", "myores:glowstone_green",  10},
			{"nod", "myores:glowstone_orange",  10},
			{"nod", "myores:glowstone_blue",  10},
			{"nod", "myores:glowstone_cobble_green",  10},
			{"nod", "myores:glowstone_cobble_orange",  10},
			{"nod", "myores:glowstone_cobble_blue",  10},
			{"nod", "myores:glowstone_brick_green",  10},
			{"nod", "myores:glowstone_brick_orange",  10},
			{"nod", "myores:glowstone_brick_blue",  10},
			{"dro", {"myores:nether"},  10},
			{"dro", {"myores:nether_cobble"},  10},
			{"dro", {"myores:mithril"},  10},
			{"dro", {"myores:mithril_ingot"},  10},
			{"dro", {"myores:nyancat"},  1},
			{"dro", {"myores:nyancat_rainbow"},  3},
			{"dro", {"myores:cronk"},  3},
			{"dro", {"myores:bloodstone"},  5},
			{"dro", {"myores:cute_block"},  1},
			{"dro", {"myores:cute_block2"},  1},
			{"dro", {"myores:cobble_black"},  25},
			{"dro", {"myores:cobble_white"},  25},
			{"dro", {"myores:bounce_block"},  2},
		})
	
		if core.get_modpath("3d_armor") then
			lucky_block:add_blocks({
				{"dro", {"myores:helmet_mithril"},  10},
				{"dro", {"myores:helmet_nether"},  10},
				
				{"dro", {"myores:chestplate_mithril"},  10},
				{"dro", {"myores:chestplate_nether"},  10},
				
				{"dro", {"myores:leggings_mithril"},  10},
				{"dro", {"myores:leggings_nether"},  10},
				
				{"dro", {"myores:boots_mithril"},  10},
				{"dro", {"myores:boots_nether"},  10},
			})
		end
	end
end
