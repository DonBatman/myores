--Pick
local pick_table = {	
		{"nether", 		"Nether",		0.6, 0, {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},{fleshy=8}},
		{"mithril", 	"Mithril",		0.6, 0, {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},{fleshy=8}},
		}

for i in ipairs(pick_table) do
	local mat = pick_table[i][1]
	local des = pick_table[i][2]
	local fpi = pick_table[i][3]
	local mdl = pick_table[i][4]
	local gro = pick_table[i][5]
	local dg = pick_table[i][6]

minetest.register_tool("myores:pick_"..mat, {
	description = des.." Pick",
	inventory_image = "myores_pick_"..mat..".png",
	tool_capabilities = {
		full_punch_interval = fpi,
		max_drop_level= mdl,
		groupcaps={
			cracky = gro,
		},
		damage_groups = dg,
	stack_max = 1,
	}
})
end

--Shovel
local shovel_table = {	
		{"nether", 		"Nether",		0.6, 0, {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},{fleshy=8}},
		{"mithril", 	"Mithril",		0.6, 0, {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},{fleshy=8}},
		}

for i in ipairs(shovel_table) do
	local mat = shovel_table[i][1]
	local des = shovel_table[i][2]
	local fpi = shovel_table[i][3]
	local mdl = shovel_table[i][4]
	local gro = shovel_table[i][5]
	local dg = shovel_table[i][6]
	
minetest.register_tool("myores:shovel_"..mat, {
	description = des.." Shovel",
	inventory_image = "myores_shovel_"..mat..".png",
	tool_capabilities = {
		full_punch_interval = fpi,
		max_drop_level= mdl,
		groupcaps={
			crumbly = gro,
		},
		damage_groups = dg,
	stack_max = 1,
	}
})
end

--Axe
local axe_table = {	
		{"nether", 		"Nether",		0.6, 0, {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},{fleshy=8}},
		{"mithril", 	"Mithril",		0.6, 0, {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},{fleshy=8}},
		}

for i in ipairs(axe_table) do
	local mat = axe_table[i][1]
	local des = axe_table[i][2]
	local fpi = axe_table[i][3]
	local mdl = axe_table[i][4]
	local gro = axe_table[i][5]
	local dg = axe_table[i][6]

minetest.register_tool("myores:axe_"..mat, {
	description = des.." Axe",
	inventory_image = "myores_axe_"..mat..".png",
	tool_capabilities = {
		full_punch_interval = fpi,
		max_drop_level= mdl,
		groupcaps={
			choppy= gro,
		},
		damage_groups = dg,
	stack_max = 1,
	}
})
end

--Sword
local sword_table = {	
		{"nether", 		"Nether",		0.6, 0, {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},{fleshy=8}},
		{"mithril", 	"Mithril",		0.6, 0, {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=50, maxlevel=3},{fleshy=8}},
		}

for i in ipairs(sword_table) do
	local mat = sword_table[i][1]
	local des = sword_table[i][2]
	local fpi = sword_table[i][3]
	local mdl = sword_table[i][4]
	local gro = sword_table[i][5]
	local dg = sword_table[i][6]

minetest.register_tool("myores:sword_"..mat, {
	description = des.." Sword",
	inventory_image = "myores_sword_"..mat..".png",
	tool_capabilities = {
		full_punch_interval = fpi,
		max_drop_level= mdl,
		groupcaps={
			snappy= gro,
		},
		damage_groups = dg,
	stack_max = 1,
	}
})
end

--Hoe
local hoe_table = {	
		{"nether", 		"Nether",		"nether",			150},
		{"mithril", 	"Mithril",		"mithril_ingot",	150},
		}

for i in ipairs(hoe_table) do
	local mat = hoe_table[i][1]
	local des = hoe_table[i][2]
	local cra = hoe_table[i][3]
	local use = hoe_table[i][4]

farming.register_hoe(":myores:hoe_"..mat, {
	description = des.." Hoe",
	inventory_image = "myores_hoe_"..mat..".png",
  	stack_max = 1,
	max_uses = use,
	recipe = {
		{"myores:"..cra, "myores:"..cra},
		{"", "default:stick"},
		{"", "default:stick"},
	}
})



--Crafting
---------------------------------------------------------------------------------------

--Pick

minetest.register_craft({
	output = "myores:pick_"..mat.." 1",
	recipe = {
		{"myores:"..cra, "myores:"..cra, "myores:"..cra},
		{"", "default:stick", ""},
		{"", "default:stick", ""}
	}
})

--Axe

minetest.register_craft({
	output = "myores:axe_"..mat.." 1",
	recipe = {
		{"myores:"..cra, "myores:"..cra, ""},
		{"myores:"..cra, "default:stick", ""},
		{"", "default:stick", ""}
	}
})

--Shovel

minetest.register_craft({
	output = "myores:shovel_"..mat.." 1",
	recipe = {
		{"", "myores:"..cra, ""},
		{"", "default:stick", ""},
		{"", "default:stick", ""}
	}
})


--Sword

minetest.register_craft({
	output = "myores:sword_"..mat.." 1",
	recipe = {
		{"", "myores:"..cra, ""},
		{"", "myores:"..cra, ""},
		{"", "default:stick", ""}
	}
})
end
