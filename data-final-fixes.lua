require("functions.recipes")
if settings.startup["mi-easy-mode"].value == false then
	mi.disable_recipe("iron-gear-wheel")
	mi.disable_recipe("electronic-circuit")
	mi.remove_recipe_unlock("advanced-electronics", "advanced-circuit")
	mi.remove_recipe_unlock("advanced-electronics-2", "processing-unit")
	mi.remove_recipe_unlock("battery", "battery")
end

--log(serpent.block(data.raw["map-gen-presets"]))