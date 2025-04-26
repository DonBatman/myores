local fant = core.settings:get_bool("myores.fantasy", true)
local bedr = core.settings:get_bool("myores.bedrock", true)
local bedmin = tonumber(core.settings:get("myores.min_depth")) or -29000
local bedmax = tonumber(core.settings:get("myores.max_depth")) or -30000
myores = {}

dofile(minetest.get_modpath("myores").."/nodes.lua")
dofile(minetest.get_modpath("myores").."/mapgen.lua")
dofile(minetest.get_modpath("myores").."/crafting.lua")
dofile(minetest.get_modpath("myores").."/tools.lua")
dofile(minetest.get_modpath("myores").."/chests.lua")
dofile(minetest.get_modpath("myores").."/stairs.lua")

if minetest.get_modpath("3d_armor") then
	dofile(minetest.get_modpath("myores").."/armor.lua")
end

if fant then
	dofile(minetest.get_modpath("myores").."/fantasy.lua")
	dofile(minetest.get_modpath("myores").."/fantasy_tools.lua")
	if core.get_modpath("3d_armor") then
		dofile(minetest.get_modpath("myores").."/fantasy_armor.lua")
	end
end

if bedr then
	minetest.register_node("myores:bedrock", {
		description = "Bedrock",
		tiles = {"mybedrock_bedrock.png"},
		groups = {unbreakable = 1, not_in_creative_inventory = 1},
	})
	minetest.register_ore({
		ore_type = "scatter",
		ore = "myores:bedrock",
		wherein = "default:stone",
		clust_scarcity = 1*1*1,
		clust_num_ores = 5,
		clust_size = 5,
		height_min = bedmin,
		height_max = bedmax,
	})
end
