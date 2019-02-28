local input_fluid_box = {
    base_area = 1,
    pipe_connections = {
        {
            position = {
                -1.5,
                0.5
            }
        },
        {
            position = {
                1.5,
                0.5
            }
        }
    },
    production_type = "input-output"
}
local resource_categories = {
    "basic-solid",
    "mi-basic"
}

if data.raw["mining-drill"]["burner-mining-drill"] then
    data.raw["mining-drill"]["burner-mining-drill"].resource_categories = resource_categories
    data.raw["mining-drill"]["burner-mining-drill"].input_fluid_box = input_fluid_box
end
