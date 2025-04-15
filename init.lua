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
	dofile(minetest.get_modpath("myores").."/bedrock.lua")
end
