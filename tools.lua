--Pick
local pick_table = {	
		{"silver", 		"Silver",		0.8, 0, {times={[1]=4.0, [2]=1.6, [3]=1.60}, uses=15, maxlevel=1},{fleshy=2}},
		{"quartz", 		"Quartz",		0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		{"marble", 		"Marble",		0.8, 0, {times={[1]=3.0, [2]=1.4, [3]=1.00}, uses=20, maxlevel=2},{fleshy=3}},
		{"manganese", 	"Manganese",	0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		{"granite",		"Granite",		0.8, 0, {times={[1]=2.5, [2]=1.2, [3]=1.00}, uses=20, maxlevel=2},{fleshy=3}},
		{"basalt", 		"Basalt",		0.8, 0, {times={[1]=4.0, [2]=1.6, [3]=1.60}, uses=15, maxlevel=1},{fleshy=2}},
		{"gneiss", 		"Gneiss",		0.8, 0, {times={[1]=3.0, [2]=1.4, [3]=1.50}, uses=20, maxlevel=2},{fleshy=3}},
		{"chalcopyrite","Chalcopyrite",	0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		}

for i in ipairs(pick_table) do
	local mat = pick_table[i][1]
	local des = pick_table[i][2]
	local fpi = pick_table[i][3]
	local mdl = pick_table[i][4]
	local gro = pick_table[i][5]
	local dg = pick_table[i][6]

--Pick
minetest.register_tool("myores:pick_"..mat, {
	description = des.." Pick",
	inventory_image = "myores_"..mat.."_pick.png",
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
		{"silver", 		"Silver",		0.8, 0, {times={[1]=4.0, [2]=1.6, [3]=1.60}, uses=15, maxlevel=1},{fleshy=2}},
		{"quartz", 		"Quartz",		0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		{"marble", 		"Marble",		0.8, 0, {times={[1]=3.0, [2]=1.4, [3]=1.00}, uses=20, maxlevel=2},{fleshy=3}},
		{"manganese", 	"Manganese",	0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		{"granite",		"Granite",		0.8, 0, {times={[1]=2.5, [2]=1.2, [3]=1.00}, uses=20, maxlevel=2},{fleshy=3}},
		{"basalt", 		"Basalt",		0.8, 0, {times={[1]=4.0, [2]=1.6, [3]=1.60}, uses=15, maxlevel=1},{fleshy=2}},
		{"gneiss", 		"Gneiss",		0.8, 0, {times={[1]=3.0, [2]=1.4, [3]=1.50}, uses=20, maxlevel=2},{fleshy=3}},
		{"chalcopyrite","Chalcopyrite",	0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		}

for i in ipairs(shovel_table) do
	local mat = shovel_table[i][1]
	local des = shovel_table[i][2]
	local fpi = shovel_table[i][3]
	local mdl = shovel_table[i][4]
	local gro = shovel_table[i][5]
	local dg = shovel_table[i][6]
	
--Shovel
minetest.register_tool("myores:shovel_"..mat, {
	description = des.." Shovel",
	inventory_image = "myores_"..mat.."_shovel.png",
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
		{"silver", 		"Silver",		0.8, 0, {times={[1]=4.0, [2]=1.6, [3]=1.60}, uses=15, maxlevel=1},{fleshy=2}},
		{"quartz", 		"Quartz",		0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		{"marble", 		"Marble",		0.8, 0, {times={[1]=3.0, [2]=1.4, [3]=1.00}, uses=20, maxlevel=2},{fleshy=3}},
		{"manganese", 	"Manganese",	0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		{"granite",		"Granite",		0.8, 0, {times={[1]=2.5, [2]=1.2, [3]=1.00}, uses=20, maxlevel=2},{fleshy=3}},
		{"basalt", 		"Basalt",		0.8, 0, {times={[1]=4.0, [2]=1.6, [3]=1.60}, uses=15, maxlevel=1},{fleshy=2}},
		{"gneiss", 		"Gneiss",		0.8, 0, {times={[1]=3.0, [2]=1.4, [3]=1.50}, uses=20, maxlevel=2},{fleshy=3}},
		{"chalcopyrite","Chalcopyrite",	0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		}

for i in ipairs(axe_table) do
	local mat = axe_table[i][1]
	local des = axe_table[i][2]
	local fpi = axe_table[i][3]
	local mdl = axe_table[i][4]
	local gro = axe_table[i][5]
	local dg = axe_table[i][6]

--Axe
minetest.register_tool("myores:axe_"..mat, {
	description = des.." Axe",
	inventory_image = "myores_"..mat.."_axe.png",
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

local sword_table = {	
		{"silver", 		"Silver",		0.8, 0, {times={[1]=4.0, [2]=1.6, [3]=1.60}, uses=15, maxlevel=1},{fleshy=2}},
		{"quartz", 		"Quartz",		0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		{"marble", 		"Marble",		0.8, 0, {times={[1]=3.0, [2]=1.4, [3]=1.00}, uses=20, maxlevel=2},{fleshy=3}},
		{"manganese", 	"Manganese",	0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		{"granite",		"Granite",		0.8, 0, {times={[1]=2.5, [2]=1.2, [3]=1.00}, uses=20, maxlevel=2},{fleshy=3}},
		{"basalt", 		"Basalt",		0.8, 0, {times={[1]=4.0, [2]=1.6, [3]=1.60}, uses=15, maxlevel=1},{fleshy=2}},
		{"gneiss", 		"Gneiss",		0.8, 0, {times={[1]=3.0, [2]=1.4, [3]=1.50}, uses=20, maxlevel=2},{fleshy=3}},
		{"chalcopyrite","Chalcopyrite",	0.8, 0, {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=35, maxlevel=3},{fleshy=5}},
		}

for i in ipairs(sword_table) do
	local mat = sword_table[i][1]
	local des = sword_table[i][2]
	local fpi = sword_table[i][3]
	local mdl = sword_table[i][4]
	local gro = sword_table[i][5]
	local dg = sword_table[i][6]


--Sword
minetest.register_tool("myores:sword_"..mat, {
	description = des.." Sword",
	inventory_image = "myores_"..mat.."_sword.png",
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
local hoe_table = {	
		{"silver", 		"Silver",		"silver_ingot",		40},
		{"quartz", 		"Quartz",		"quartz_crystals",	70},
		{"marble", 		"Marble",		"marble",			50},
		{"manganese", 	"Manganese",	"manganese",		60},
		{"granite",		"Granite",		"granite",			50},
		{"basalt", 		"Basalt",		"basalt",			40},
		{"gneiss", 		"Gneiss",		"gneiss",			50},
		{"chalcopyrite","Chalcopyrite",	"chalcopyrite",		60},
		}

for i in ipairs(hoe_table) do
	local mat = hoe_table[i][1]
	local des = hoe_table[i][2]
	local cra = hoe_table[i][3]
	local use = hoe_table[i][4]

--Hoe
farming.register_hoe(":myores:hoe_"..mat, {
	description = des.." Hoe",
	inventory_image = "myores_"..mat.."_hoe.png",
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
