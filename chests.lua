local wood_chest_formspec =

	"size[9,9]" ..
	"list[current_name;main;0.5,0.5;8,4;]" ..
	"list[current_player;main;0.5,5;8,1;]" ..
	"list[current_player;main;0.5,6;8,3;8]" ..
	"listring[current_name;main]" ..
	"listring[current_player;main]" 
	
local granite_chest_formspec =

	"size[9,11]" ..
	"list[current_name;main;0.5,0.5;8,6;]" ..
	"list[current_player;main;0.5,7;8,1;]" ..
	"list[current_player;main;0.5,8;8,3;8]" ..
	"listring[current_name;main]" ..
	"listring[current_player;main]" 

local marble_chest_formspec =

	"size[11,11]" ..
	"list[current_name;main;0.5,0.5;10,6;]" ..
	"list[current_player;main;1.5,7;8,1;]" ..
	"list[current_player;main;1.5,8;8,3;8]" ..
	"listring[current_name;main]" ..
	"listring[current_player;main]" 
	
local manganese_chest_formspec =

	"size[15,11]" ..
	"list[current_name;main;0.5,0.5;14,6;]" ..
	"list[current_player;main;3.5,7;8,1;]" ..
	"list[current_player;main;3.5,8;8,3;8]" ..
	"listring[current_name;main]" ..
	"listring[current_player;main]" 
	
local quartz_chest_formspec =

	"size[19,11]" ..
	"list[current_name;main;0.5,0.5;18,6;]" ..
	"list[current_player;main;5.5,7;8,1;]" ..
	"list[current_player;main;5.5,8;8,3;8]" ..
	"listring[current_name;main]" ..
	"listring[current_player;main]" 


minetest.register_node("myores:chest_wood", {
	description = "Wooden Chest",
	tiles = {
		"myores_wood_top.png",
		"myores_wood_top.png",
		"myores_wood_side.png",
		"myores_wood_side.png",
		"myores_wood_side.png",
		"myores_wood_front.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2,not_in_creative_inventory=0},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", wood_chest_formspec)
		meta:set_string("infotext", "Wooden Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
        if placer and placer:is_player() then
            local meta = core.get_meta(pos)
            meta:set_string("owner", placer:get_player_name())
        end
    end,
	on_dig = function(pos, node, digger)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		if inv:is_empty("main") == true then
				minetest.remove_node(pos)
		else return
		end
	end,
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local player = clicker:get_player_name()
		local node = minetest.get_node(pos)
			if player ~= owner then
				minetest.chat_send_player(player, player.." - This is not your chest.")	
				minetest.chat_send_player(player, "Your actions are being logged!")	
				minetest.log("action", player ..
					" opened chest at " .. minetest.pos_to_string(pos))
				return nil
			end
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)

		minetest.log("action", player:get_player_name() ..
			" moves stuff in chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff to chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from chest at " .. minetest.pos_to_string(pos))
	end,
})

minetest.register_node("myores:chest_granite", {
	description = "Granite Chest",
	tiles = {
		"myores_granite_top.png",
		"myores_granite_top.png",
		"myores_granite_side.png",
		"myores_granite_side.png",
		"myores_granite_side.png",
		"myores_granite_front.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2,not_in_creative_inventory=0},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", granite_chest_formspec)
		meta:set_string("infotext", "Granite Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*6)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
        if placer and placer:is_player() then
            local meta = core.get_meta(pos)
            meta:set_string("owner", placer:get_player_name())
        end
    end,
	on_dig = function(pos, node, digger)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
			if inv:is_empty("main") == true then
					minetest.remove_node(pos)
			else return
			end
	end,
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local player = clicker:get_player_name()
			if player ~= owner then
				minetest.chat_send_player(player, player.." - This is not your chest.")	
				minetest.chat_send_player(player, "Your actions are being logged!")	
				minetest.log("action", player ..
					" opened chest at " .. minetest.pos_to_string(pos))
				return nil
			end
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff to chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from chest at " .. minetest.pos_to_string(pos))
	end,
})

minetest.register_node("myores:chest_marble", {
	description = "Marble Chest",
	tiles = {
		"myores_marble_top.png",
		"myores_marble_top.png",
		"myores_marble_side.png",
		"myores_marble_side.png",
		"myores_marble_side.png",
		"myores_marble_front.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2,not_in_creative_inventory=0},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", marble_chest_formspec)
		meta:set_string("infotext", "Marble Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 10*6)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
        if placer and placer:is_player() then
            local meta = core.get_meta(pos)
            meta:set_string("owner", placer:get_player_name())
        end
    end,
	on_dig = function(pos, node, digger)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
			if inv:is_empty("main") == true then
					minetest.remove_node(pos)
			else return
			end
	end,
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local player = clicker:get_player_name()
			if player ~= owner then
				minetest.chat_send_player(player, player.." - This is not your chest.")	
				minetest.chat_send_player(player, "Your actions are being logged!")	
				minetest.log("action", player ..
					" opened chest at " .. minetest.pos_to_string(pos))
				return nil
			end
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff to chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from chest at " .. minetest.pos_to_string(pos))
	end,
})

minetest.register_node("myores:chest_manganese", {
	description = "Manganese Chest",
	tiles = {
		"myores_manganese_top.png",
		"myores_manganese_top.png",
		"myores_manganese_side.png",
		"myores_manganese_side.png",
		"myores_manganese_side.png",
		"myores_manganese_front.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2,not_in_creative_inventory=0},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", manganese_chest_formspec)
		meta:set_string("infotext", "Manganese Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 14*6)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
        if placer and placer:is_player() then
            local meta = core.get_meta(pos)
            meta:set_string("owner", placer:get_player_name())
        end
    end,
	on_dig = function(pos, node, digger)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
			if inv:is_empty("main") == true then
					minetest.remove_node(pos)
			else return
			end
	end,
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local player = clicker:get_player_name()
			if player ~= owner then
				minetest.chat_send_player(player, player.." - This is not your chest.")	
				minetest.chat_send_player(player, "Your actions are being logged!")	
				minetest.log("action", player ..
					" opened chest at " .. minetest.pos_to_string(pos))
				return nil
			end
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff to chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from chest at " .. minetest.pos_to_string(pos))
	end,
})

minetest.register_node("myores:chest_quartz", {
	description = "Quartz Chest",
	tiles = {
		"myores_quartz_top.png",
		"myores_quartz_top.png",
		"myores_quartz_side.png",
		"myores_quartz_side.png",
		"myores_quartz_side.png",
		"myores_quartz_front.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy = 2,not_in_creative_inventory=0},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", quartz_chest_formspec)
		meta:set_string("infotext", "Quartz Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 18*6)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
        if placer and placer:is_player() then
            local meta = core.get_meta(pos)
            meta:set_string("owner", placer:get_player_name())
        end
    end,
	on_dig = function(pos, node, digger)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
			if inv:is_empty("main") == true then
					minetest.remove_node(pos)
			else return
			end
	end,
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local player = clicker:get_player_name()
			if player ~= owner then
				minetest.chat_send_player(player, player.." - This is not your chest.")	
				minetest.chat_send_player(player, "Your actions are being logged!")	
				minetest.log("action", player ..
					" opened chest at " .. minetest.pos_to_string(pos))
				return nil
			end
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index,
			to_list, to_index, count, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff in chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" moves stuff to chest at " .. minetest.pos_to_string(pos))
	end,
	on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name() ..
			" takes stuff from chest at " .. minetest.pos_to_string(pos))
	end,
})

minetest.register_craft({
	output = "myores:chest_wood",
	recipe ={
		{"group:wood","group:wood","group:wood"},
		{"group:wood","myores:silver_ingot","group:wood"},
		{"group:wood","group:wood","group:wood"}}
})
minetest.register_craft({
	output = "myores:chest_granite",
	recipe ={
		{"myores:granite","myores:granite","myores:granite"},
		{"myores:granite","myores:silver_ingot","myores:granite"},
		{"myores:granite","myores:granite","myores:granite"}}
})
minetest.register_craft({
	output = "myores:chest_marble",
	recipe ={
		{"myores:marble","myores:marble","myores:marble"},
		{"myores:marble","myores:silver_ingot","myores:marble"},
		{"myores:marble","myores:marble","myores:marble"}}
})
minetest.register_craft({
	output = "myores:chest_manganese",
	recipe ={
		{"myores:manganese","myores:manganese","myores:manganese"},
		{"myores:manganese","myores:silver_ingot","myores:manganese"},
		{"myores:manganese","myores:manganese","myores:manganese"}}
})
minetest.register_craft({
	output = "myores:chest_quartz",
	recipe ={
		{"myores:quartz","myores:quartz","myores:quartz"},
		{"myores:quartz","myores:silver_ingot","myores:quartz"},
		{"myores:quartz","myores:quartz","myores:quartz"}}
})
