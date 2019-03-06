function mi.returnore(name, result, icon, mining_category, next_resource_index, tint, ore_graphic, ore_graphic_hr, has_starting_area_placement)
    local mi_stages = {
        sheet = {
            filename = ore_graphic,
            priority = "extra-high",
            tint = tint,
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = ore_graphic_hr,
                priority = "extra-high",
                tint = tint,
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }

return {
    autoplace = mi.resource_autoplace.resource_autoplace_settings {
        name = name,
        order = "c",
        base_density = 2,
        base_spots_per_km2 = 2.5,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        resource_index = next_resource_index,
        regular_rq_factor_multiplier = 1,
        has_starting_area_placement = has_starting_area_placement
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    flags = {"placeable-neutral"},
    icon = icon,
    icon_size = 32,
    map_color = tint,
    minable = {
        mining_time = 2.5,
        result = result,
        count = 1
    },
    mining_category = mining_category,
    name = name,
    order = "a-b-a",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = mi_stages,
    type = "resource",
}


end