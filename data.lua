--[[
Ideas

Minable Intermediates
Higher value products more rare/require higher tier miner/require fluid to mine

Gears - 
Electronic Circuit - 
Advanced Circuit - 
Processing Unit - 
Batteries - 

Low Density Structures - might add later

Fluid patches - pumpjack on intermediate oils

--]]
--[[

TODO - Make it a function

local mi_ores = {
    [1] = {
        name = "mi-electronic-circuit",
        tint = {r=0.26, g=0.90, b=0.0},
        icon = "__base__/graphics/icons/electronic-circuit.png",
        stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10}
    }
}

for _, ore in pairs(mi_ores) do
    
end

--]]
if not mi then
    mi = {}
end
if not mi.lib then
    mi.lib = {}
end
require("functions.ore-generation")
require("functions.recipes")

mi.resource_autoplace = require("__base__.prototypes.entity.demo-resource-autoplace")
mi.next_resource_index = 100

require("resourceconfigs.vanilla")

for _, ore in pairs(mi.ores) do
    if settings.startup[ore.name].value then
        --mi.returnore(name, result, icon, mining_category, next_resource_index, tint, ore_graphic, ore_graphic_hr, has_starting_area_placement)
        local ore_to_place =
            mi.returnore(
            ore.name,
            ore.result,
            ore.icon,
            ore.mining_category,
            mi.next_resource_index,
            ore.tint,
            ore.ore_graphic,
            ore.ore_graphic_hr,
            ore.has_starting_area_placement
        )
        data:extend(
            {
                {
                    type = "autoplace-control",
                    name = ore.name,
                    richness = true,
                    order = "b-e",
                    category = "resource"
                },
                ore_to_place
            }
        )
        --log(ore_to_place)
        mi.next_resource_index = mi.next_resource_index + 1
    end
end

require("prototypes.resource-category")

require("prototypes.items.burner-mining-drill")
require("prototypes.items.electric-mining-drill")

require("prototypes.map-gen-presets")

log(serpent.block(data.raw.resource))
