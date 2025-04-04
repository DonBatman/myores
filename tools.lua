
--Pick
minetest.register_tool("myores:pick_silver", {
	description = "Silver Pick",
	inventory_image = "myores_silverpick.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.2, [3]=0.50}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	stack_max = 1,
	}
})

--Shovel
minetest.register_tool("myores:shovel_silver", {
	description = "Silver Shovel",
	inventory_image = "myores_silvershovel.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1, [2]=0.50, [3]=0.30}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	stack_max = 1,
	}
})

--Axe
minetest.register_tool("myores:axe_silver", {
	description = "Silver Axe",
	inventory_image = "myores_silveraxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.8, [2]=0.90, [3]=0.50}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	stack_max = 1,
	}
})

--Sword
minetest.register_tool("myores:sword_silver", {
	description = "Silver Sword",
	inventory_image = "myores_silversword.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=8},
	stack_max = 1,
	}
})

--Hoe

farming.register_hoe(":myores:hoe_silver", {
	description = "Silver Hoe",
	inventory_image = "myores_silverhoe.png",
  	stack_max = 1,
	max_uses = 50,
	recipe = {
		{"myores:silver_ingot", "myores:silver_ingot"},
		{"", "default:stick"},
		{"", "default:stick"},
	}
})



--Crafting
---------------------------------------------------------------------------------------

--Pick

minetest.register_craft({
	output = "bat_tools:bat_pick",
	recipe = {
		{'myores:silver_ingot', 'myores:silver_ingot', 'myores:silver_ingot'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''}
	}
})

--Axe

minetest.register_craft({
	output = "bat_tools:bat_axe 1",
	recipe = {
		{'myores:silver_ingot', 'myores:silver_ingot', ''},
		{'myores:silver_ingot', 'default:stick', ''},
		{'', 'default:stick', ''}
	}
})

--Shovel

minetest.register_craft({
	output = "bat_tools:bat_shovel 1",
	recipe = {
		{'', 'myores:silver_ingot', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''}
	}
})


--Sword

minetest.register_craft({
	output = "bat_tools:bat_sword 1",
	recipe = {
		{'', 'myores:silver_ingot', ''},
		{'', 'myores:silver_ingot', ''},
		{'', 'default:stick', ''}
	}
})
