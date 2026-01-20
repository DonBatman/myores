local function register_chest_crafts(id, material, locked_item)
	local chest_unlocked = "myores:chest_" .. id
	local chest_locked = "myores:chest_" .. id .. "_locked"

	minetest.register_craft({
		output = chest_unlocked,
		recipe = {
			{material, material, material},
			{material, "default:chest", material},
			{material, material, material},
		}
	})

	minetest.register_craft({
		output = chest_locked,
		recipe = {
			{chest_unlocked, locked_item},
		}
	})
end

local tiers = {
	wood      = {"group:wood",          	"default:steel_ingot"},
	granite   = {"myores:granite",     		"default:steel_ingot"},
	marble    = {"myores:marble",       	"default:gold_ingot"},
	manganese = {"myores:manganese_ingot", 	"default:gold_ingot"},
	quartz    = {"myores:quartz",      		"default:diamond"},
}

for id, items in pairs(tiers) do
	register_chest_crafts(id, items[1], items[2])
end
