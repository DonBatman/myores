local shield_table = {	
		{"sulfur",		"Sulfur",		1,0,30,0,		 5,		3,3,3,3,1},
		{"silver", 		"Silver",		1,2,30,0,		 8,		3,3,3,3,1},
		{"basalt", 		"Basalt",		1,2,30,0,		 5,		3,3,3,3,1},
		
		{"marble", 		"Marble",		1,10,50,0,		 12,	2,2,2,2,2},
		{"manganese", 	"Manganese",	1,10,50,0,		 12,	2,2,2,2,2},
		{"granite",		"Granite",		1,10,50,0,		 12,	2,2,2,2,2},
		{"gneiss", 		"Gneiss",		1,10,50,0,		 12,	2,2,2,2,2},
		{"chalcopyrite","Chalcopyrite",	1,10,50,0,		 12,	2,2,2,2,2},
		{"cobalt",		"Cobalt",		1,10,50,0,		 12,	2,2,2,2,2},
		{"uvarovite",	"Uvarovite",	1,10,50,0,		 12,	2,2,2,2,2},
		{"selenite",	"Selenite",		1,10,50,0,		 12,	2,2,2,2,2},
		{"miserite",	"Miserite",		1,10,50,0,		 12,	2,2,2,2,2},
		{"limonite",	"Limonite",		1,10,50,0,		 12,	2,2,2,2,2},
		{"lapis_lazuli","Lapis Lazuli",	1,10,50,0,		 12,	2,2,2,2,2},
		
		{"emerald",		"Emerald",		1,14,100,0,		 18,	1,1,1,1,3},
		{"amethyst",	"Amethyst",		1,14,100,0,		 18,	1,1,1,1,3},
		{"chromium",	"Chromium",		1,14,100,0,		 18,	1,1,1,1,3},
		{"quartz", 		"Quartz",		1,14,100,0,		 18,	1,1,1,1,3},
		{"bloodstone", 	"Blood Stone",	1,14,100,0,		 18,	1,1,1,1,3},
		}

for i in ipairs(shield_table) do
	local mat = shield_table[i][1]
	local des = shield_table[i][2]
	local aa = shield_table[i][3]
	local bb = shield_table[i][4]
	local cc = shield_table[i][5]
	local dd = shield_table[i][6]
	local ee = shield_table[i][7]
	local ff = shield_table[i][8]
	local gg = shield_table[i][9]
	local hh = shield_table[i][10]
	local ii = shield_table[i][11]
	local jj = shield_table[i][12]
	


armor:register_armor("myores:shield_"..mat, {
		description = des.." Shield",
		inventory_image = "myores_inv_shield_"..mat..".png",
		groups = {armor_shield=aa, armor_heal=bb, armor_use=cc, flammable=dd},
		armor_groups = {fleshy=ee},
		damage_groups = {cracky=ff, snappy=gg, choppy=hh, crumbly=ii, level=jj},
		reciprocate_damage = true,
		--on_damage  = on_damage_play_sound(armor.sounds.metal),
		--on_destroy = on_destroy_play_sound(armor.sounds.metal),
	})


--Crafts
core.register_craft({
	output = "myores:shield_"..mat.." 1",
	recipe = {
		{mat, mat, mat},
		{mat, "mat", mat},
		{"", "mat", ""}
	}
})

end

