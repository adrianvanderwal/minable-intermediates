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

Mixed Ore patches?

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

if not mi then mi = {} end
if not mi.lib then mi.lib = {} end

require("prototypes.iron-gear-wheel")
require("prototypes.electronic-circuit")
require("prototypes.advanced-circuit")
require("prototypes.processing-unit")
require("prototypes.battery")