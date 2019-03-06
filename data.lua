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
        local ore_to_place = mi.returnore(ore, mi.next_resource_index)
        data:extend(
            {
                {
                    type = "autoplace-control",
                    name = ore.name,
                    richness = true,
                    order = ore.order,
                    category = "resource"
                },
                ore_to_place
            }
        )
        mi.next_resource_index = mi.next_resource_index + 1

        -- if ez mode, leave recipes
        -- else if ore not spawning, leave recipes

        if settings.startup["mi-easy-mode"].value == false then
            mi.disable_recipe(ore.result)
            if ore.remove_recipe_unlock ~= nil then
                mi.remove_recipe_unlock(ore.remove_recipe_unlock[1], ore.remove_recipe_unlock[2])
            end
        end
    end
end

require("prototypes.resource-category")

require("prototypes.items.burner-mining-drill")
require("prototypes.items.electric-mining-drill")

require("prototypes.map-gen-presets")