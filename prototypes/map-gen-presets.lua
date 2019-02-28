local rail_world_basic_settings = {
    autoplace_controls = {
        coal = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["copper-ore"] = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["crude-oil"] = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["enemy-base"] = {
            size = 0.5
        },
        ["iron-ore"] = {
            frequency = 0.33333333332999997,
            size = 3
        },
        stone = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["uranium-ore"] = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["mi-iron-gear-wheel"] = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["mi-electronic-circuit"] = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["mi-advanced-circuit"] = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["mi-processing-unit"] = {
            frequency = 0.33333333332999997,
            size = 3
        },
        ["mi-battery"] = {
            frequency = 0.33333333332999997,
            size = 3
        }
    },
    property_expression_names = {},
    terrain_segmentation = "very-low",
    water = "high"
}

if data.raw["map-gen-presets"].default["rail-world"] then
    data.raw["map-gen-presets"].default["rail-world"].basic_settings = rail_world_basic_settings
end
