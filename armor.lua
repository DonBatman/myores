local armor_table = {	
		{"silver", 		"Silver",		1,0,2000,0,		5,	3,2,3,2,1},
		{"quartz", 		"Quartz",		1,12,500,0,		15,	2,1,2,2,3},
		{"marble", 		"Marble",		1,8,500,0,		10,	3,2,3,2,2},
		{"manganese", 	"Manganese",	1,12,500,0,		15,	2,1,2,2,3},
		{"granite",		"Granite",		1,8,400,0,		10,	3,2,3,2,2},
		{"basalt", 		"Basalt",		1,0,2000,0,		5,	3,2,3,2,1},
		{"gneiss", 		"Gneiss",		1,8,500,0,		10,	3,2,3,2,2},
		{"chalcopyrite","Chalcopyrite",	1,12,500,0,		15,	2,1,2,2,3},
		{"chromium",	"Chromium",		1,10,500,0,		10,	2,1,2,2,3},
		{"cobalt",		"Cobalt",		1,10,500,0,		10,	2,1,2,2,3},
		{"uvarovite",	"Uvarovite",	1,10,500,0,		10,	2,1,2,2,3},
		{"selenite",	"Selenite",		1,10,500,0,		10,	2,1,2,2,3},
		{"miserite",	"Miserite",		1,10,500,0,		10,	2,1,2,2,3},
		{"limonite",	"Limonite",		1,10,500,0,		10,	2,1,2,2,3},
		{"sulfur",		"Sulfur",		1,10,500,0,		10,	2,1,2,2,3},
		{"lapis_lazuli","Lapis Lazuli",	1,10,500,0,		10,	2,1,2,2,3},
		{"emerald",		"Emerald",		1,10,500,0,		10,	2,1,2,2,3},
		{"amethyst",	"Amethyst",		1,10,500,0,		10,	2,1,2,2,3},
		}

for i in ipairs(armor_table) do
	local mat = armor_table[i][1]
	local des = armor_table[i][2]
	local aa = armor_table[i][3]
	local bb = armor_table[i][4]
	local cc = armor_table[i][5]
	local dd = armor_table[i][6]
	local ee = armor_table[i][7]
	local ff = armor_table[i][8]
	local gg = armor_table[i][9]
	local hh = armor_table[i][10]
	local ii = armor_table[i][11]
	local jj = armor_table[i][12]
	


armor:register_armor(":myores:helmet_"..mat, {
	description = des.." Helmet",
	inventory_image = "myores_inv_helmet_"..mat..".png",
	groups = {armor_head=aa, armor_heal=bb, armor_use=cc, flammable=dd},
	armor_groups = {fleshy=ee},
	damage_groups = {cracky=ff, snappy=gg, choppy=hh, crumbly=ii, level=jj},
})

armor:register_armor(":myores:chestplate_"..mat, {
	description = des.." Chestplate",
	inventory_image = "myores_inv_chestplate_"..mat..".png",
	groups = {armor_torso=aa, armor_heal=bb, armor_use=cc, flammable=dd},
	armor_groups = {fleshy=ee},
	damage_groups = {cracky=ff, snappy=gg, choppy=hh, crumbly=ii, level=jj},
})

armor:register_armor(":myores:leggings_"..mat, {
	description = des.." Leggings",
	inventory_image = "myores_inv_leggings_"..mat..".png",
	groups = {armor_legs=aa, armor_heal=bb, armor_use=cc, flammable=dd},
	armor_groups = {fleshy=ee},
	damage_groups = {cracky=ff, snappy=gg, choppy=hh, crumbly=ii, level=jj},
})

armor:register_armor(":myores:boots_"..mat, {
	description = des.." Boots",
	inventory_image = "myores_inv_boots_"..mat..".png",
	groups = {armor_feet=aa, armor_heal=bb, armor_use=cc, flammable=dd},
	armor_groups = {fleshy=ee},
	damage_groups = {cracky=ff, snappy=gg, choppy=hh, crumbly=ii, level=jj},
})

--Crafts
core.register_craft({
	output = "myores:helmet_"..mat.." 1",
	recipe = {
		{mat, mat, mat},
		{mat, "", mat},
		{"", "", ""}
	}
})
core.register_craft({
	output = "myores:chestplate_"..mat.." 1",
	recipe = {
		{mat, "", mat},
		{mat, mat, mat},
		{mat, mat, mat}
	}
})
core.register_craft({
	output = "myores:leggings_"..mat.." 1",
	recipe = {
		{mat, mat, mat},
		{mat, "", mat},
		{mat, "", mat}
	}
})
core.register_craft({
	output = "myores:boots_"..mat.." 1",
	recipe = {
		{mat, "", mat},
		{mat, "", mat},
		{"", "", ""}
	}
})
end
