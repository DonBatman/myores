for _, data in ipairs(myores.chests_data) do
    local id, desc, inv_w, inv_h = data[1], data[2], data[3], data[4]
    local nodename = "myores:chest_" .. id .. "_locked"

    minetest.register_node(nodename, {
        description = "Locked " .. desc .. " Chest",
        tiles = {
            "myores_" .. id .. "_top.png", "myores_" .. id .. "_top.png",
            "myores_" .. id .. "_side.png", "myores_" .. id .. "_side.png",
            "myores_" .. id .. "_side.png", "myores_" .. id .. "_front_locked.png",
        },
        paramtype2 = "facedir",
        groups = {choppy = 2, oddly_breakable_by_hand = 1},
        
        on_construct = function(pos)
            local meta = minetest.get_meta(pos)
            meta:get_inventory():set_size("main", inv_w * inv_h)
        end,

        after_place_node = function(pos, placer)
            if placer then
                local name = placer:get_player_name()
                local meta = minetest.get_meta(pos)
                meta:set_string("owner", name)
                meta:set_string("infotext", "Locked " .. desc .. " Chest (Owned by: " .. name .. ")")
            end
        end,

        on_rightclick = function(pos, node, clicker)
            local meta = minetest.get_meta(pos)
            local name = clicker:get_player_name()
            
            if name ~= meta:get_string("owner") then
                minetest.chat_send_player(name, "This chest belongs to " .. meta:get_string("owner"))
                return
            end

            local pos_str = pos.x .. "," .. pos.y .. "," .. pos.z
            local spec = myores.formspecs[id]
            local final_formspec = spec:gsub("current_name", "nodemeta:" .. pos_str)
            
            minetest.show_formspec(name, "myores:chest_" .. id .. "_locked", final_formspec)
        end,

        can_dig = function(pos, player)
            local meta = minetest.get_meta(pos)
            local is_empty = meta:get_inventory():is_empty("main")
            local is_owner = player:get_player_name() == meta:get_string("owner")
            return is_empty and is_owner
        end,
    })

    if minetest.get_modpath("pipeworks") and pipeworks.override_chest then
        local connect_sides = {left = 1, right = 1, back = 1, front = 1, bottom = 1, top = 1}
        
        pipeworks.override_chest(nodename, {
            on_rightclick = minetest.registered_nodes[nodename].on_rightclick,
        }, connect_sides)
    end
end
