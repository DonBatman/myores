myores = {}

dofile(minetest.get_modpath("myores").."/nodes.lua")
dofile(minetest.get_modpath("myores").."/mapgen.lua")
dofile(minetest.get_modpath("myores").."/crafting.lua")
dofile(minetest.get_modpath("myores").."/tools.lua")
dofile(minetest.get_modpath("myores").."/chests.lua")

if minetest.get_modpath("3d_armor") then
	dofile(minetest.get_modpath("myores").."/armor.lua")
end
