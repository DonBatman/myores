myores.formspecs = {
    wood = "size[9,9]list[current_name;main;0.5,0.5;8,4;]list[current_player;main;0.5,5;8,1;]list[current_player;main;0.5,6;8,3;8]listring[current_name;main]listring[current_player;main]",
    granite = "size[9,11]list[current_name;main;0.5,0.5;8,6;]list[current_player;main;0.5,7;8,1;]list[current_player;main;0.5,8;8,3;8]listring[current_name;main]listring[current_player;main]",
    marble = "size[11,11]list[current_name;main;0.5,0.5;10,6;]list[current_player;main;1.5,7;8,1;]list[current_player;main;1.5,8;8,3;8]listring[current_name;main]listring[current_player;main]",
    manganese = "size[15,11]list[current_name;main;0.5,0.5;14,6;]list[current_player;main;3.5,7;8,1;]list[current_player;main;3.5,8;8,3;8]listring[current_name;main]listring[current_player;main]",
    quartz = "size[19,11]list[current_name;main;0.5,0.5;18,6;]list[current_player;main;5.5,7;8,1;]list[current_player;main;5.5,8;8,3;8]listring[current_name;main]listring[current_player;main]",
}

myores.chests_data = {
    { "wood", "Wooden", 8, 4 },
    { "granite", "Granite", 8, 6 },
    { "marble", "Marble", 10, 6 },
    { "manganese", "Manganese", 14, 6 },
    { "quartz", "Quartz", 18, 6 },
}

for _, data in ipairs(myores.chests_data) do
    local id, desc, inv_w, inv_h = data[1], data[2], data[3], data[4]
    local nodename = "myores:chest_" .. id

    minetest.register_node(nodename, {
        description = desc .. " Chest",
        tiles = {
            "myores_" .. id .. "_top.png", "myores_" .. id .. "_top.png",
            "myores_" .. id .. "_side.png", "myores_" .. id .. "_side.png",
            "myores_" .. id .. "_side.png", "myores_" .. id .. "_front.png",
        },
        paramtype2 = "facedir",
        groups = {choppy = 2, oddly_breakable_by_hand = 1},
        
        on_construct = function(pos)
            local meta = minetest.get_meta(pos)
            meta:set_string("formspec", myores.formspecs[id])
            meta:set_string("infotext", desc .. " Chest")
            meta:get_inventory():set_size("main", inv_w * inv_h)
        end,

        can_dig = function(pos, player)
            return minetest.get_meta(pos):get_inventory():is_empty("main")
        end,
    })

    if minetest.get_modpath("pipeworks") and pipeworks.override_chest then
        local connect_sides = {left = 1, right = 1, back = 1, front = 1, bottom = 1, top = 1}
        pipeworks.override_chest(nodename, {}, connect_sides)
    end
end
