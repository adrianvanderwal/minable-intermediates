local mi_stage = 	{
      sheet =
      {
        filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
        priority = "extra-high",
		tint = {r=0, g=255, b=0},
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = "__base__/graphics/entity/iron-ore/hr-iron-ore.png",
          priority = "extra-high",
					tint = {r=0, g=255, b=0},
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
	name = "mi-electronic-circuit",
	richness = true,
	order = "b-e",
	category = "resource",
	},
	{
	type = "noise-layer",
	name = "mi-electronic-circuit"
	},
	{
	type = "resource",
	name = "mi-electronic-circuit",
	icon = "__base__/graphics/icons/electronic-circuit.png",
	icon_size = 32,
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0, g=255, b=0},
	minable =
	{
	  fluid_amount = 50,
		mining_particle = "stone-particle",
		mining_time = 10,
		required_fluid = "water",
		result = "electronic-circuit",
		count = 5
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		order = "f",
		control = "mi-electronic-circuit",
		sharpness = 0.8999,
		coverage = 0.0007666666666666667,
		richness_base = 10,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		starting_area_amount = 1000,
		starting_area_size = 4.2166666666666668,
		peaks = {
		  {
			noise_layer = "mi-electronic-circuit",
			noise_octaves_difference = -0.85,
			noise_persistence = 0.4,
			},
			--[[{
				influence = -1.0,
				starting_area_weight_optimal = 1,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			}--]]
		},
	},
    stage_counts = {20000, 16000, 14000, 12000, 8000, 4000, 2000, 100},
	stages = mi_stage,
  },
}
)