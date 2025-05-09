minetest.register_node("myores:bedrock", {
	description = "Bedrock",
	tiles = {"myores_bedrock.png"},
	groups = {unbreakable = 1, not_in_creative_inventory = 1},
})
minetest.register_ore({
	ore_type = "scatter",
	ore = "myores:bedrock",
	wherein = "default:stone",
	clust_scarcity = 1*1*1,
	clust_num_ores = 5,
	clust_size = 5,
	y_min = bedmin,
	y_max = bedmax,
})
