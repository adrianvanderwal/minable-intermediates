local mi_stage = {
	sheet = {
		filename = "__base__/graphics/entity/uranium-ore/uranium-ore.png",
		priority = "extra-high",
		tint = {r = 255, g = 0, b = 0},
		width = 64,
		height = 64,
		frame_count = 8,
		variation_count = 8,
		hr_version = {
			filename = "__base__/graphics/entity/uranium-ore/hr-uranium-ore.png",
			priority = "extra-high",
			tint = {r = 255, g = 0, b = 0},
			width = 128,
			height = 128,
			frame_count = 8,
			variation_count = 8,
			scale = 0.5
		}
	}
}

data:extend(
	{
		{
			type = "autoplace-control",
			name = "mi-advanced-circuit",
			richness = true,
			order = "b-e",
			category = "resource"
		},
		{
			type = "noise-layer",
			name = "mi-advanced-circuit"
		},
		{
			type = "resource",
			name = "mi-advanced-circuit",
			icon = "__base__/graphics/icons/advanced-circuit.png",
			icon_size = 32,
			flags = {"placeable-neutral"},
			order = "a-b-a",
			map_color = {r = 255, g = 0, b = 0},
			minable = {
				fluid_amount = 50,
				mining_particle = "stone-particle",
				mining_time = 10,
				required_fluid = "petroleum-gas",
				result = "advanced-circuit",
				count = 2
			},
			category="mi-advanced",
			collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			autoplace = {
				order = "a",
				control = "mi-advanced-circuit",
				sharpness = 15 / 16,
				richness_multiplier = 1500,
				richness_multiplier_distance_bonus = 20,
				richness_base = 10,
				coverage = 0.00005,
				peaks = {
					{
						noise_layer = "mi-advanced-circuit",
						noise_octaves_difference = -0.85,
						noise_persistence = 0.4
					},
					{
						influence = -1.0,
						starting_area_weight_optimal = 1,
						starting_area_weight_range = 0,
						starting_area_weight_max_range = 2
					}
				}
			},
			stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
			stages = mi_stage
		}
	}
)
