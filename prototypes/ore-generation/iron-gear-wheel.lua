local mi_stage = {
	sheet = {
		filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
		priority = "extra-high",
		tint = {r = 150, g = 150, b = 150},
		width = 64,
		height = 64,
		frame_count = 8,
		variation_count = 8,
		hr_version = {
			filename = "__base__/graphics/entity/iron-ore/hr-iron-ore.png",
			priority = "extra-high",
			tint = {r = 150, g = 150, b = 150},
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
			name = "mi-iron-gear-wheel",
			richness = true,
			order = "b-e",
			category = "resource"
		},
		{
			type = "noise-layer",
			name = "mi-iron-gear-wheel"
		},
		{
			type = "resource",
			name = "mi-iron-gear-wheel",
			icon = "__base__/graphics/icons/iron-gear-wheel.png",
			icon_size = 32,
			flags = {"placeable-neutral"},
			order = "a-b-a",
			map_color = {r = 150, g = 150, b = 150},
			minable = {
				mining_time = 2.5,
				result = "iron-gear-wheel",
				count = 1
			},
			mining_category= "mi-basic",
			collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			autoplace = {
				order = "f",
				control = "mi-iron-gear-wheel",
				sharpness = 0.9375,
				coverage = 0.00025,
				richness_base = 10,
				richness_multiplier = 1500,
				richness_multiplier_distance_bonus = 20,
				starting_area_amount = 2000,
				starting_area_size = 4,
				peaks = {
					{
						noise_layer = "mi-iron-gear-wheel",
						noise_octaves_difference = -1.85,
						noise_persistence = 0.4
					}
				}
			},
			stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
			stages = mi_stage
		}
	}
)
