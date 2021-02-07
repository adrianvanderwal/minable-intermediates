mi.ores = {
  ['mi-iron-gear-wheel'] = {
    name = 'mi-iron-gear-wheel',
    result = 'iron-gear-wheel',
    icon = '__base__/graphics/icons/iron-gear-wheel.png',
    tint = {r = 150, g = 150, b = 150},
    ore_graphic = '__base__/graphics/entity/iron-ore/iron-ore.png',
    ore_graphic_hr = '__base__/graphics/entity/iron-ore/hr-iron-ore.png',
    has_starting_area_placement = true,
    order = 'b'
  },
  ['mi-electronic-circuit'] = {
    name = 'mi-electronic-circuit',
    result = 'electronic-circuit',
    icon = '__base__/graphics/icons/electronic-circuit.png',
    tint = {r = 0, g = 255, b = 0},
    ore_graphic = '__base__/graphics/entity/iron-ore/iron-ore.png',
    ore_graphic_hr = '__base__/graphics/entity/iron-ore/hr-iron-ore.png',
    has_starting_area_placement = true,
    fluid_type = 'water',
    fluid_amount = 50,
    order = 'c'
  },
  ['mi-advanced-circuit'] = {
    name = 'mi-advanced-circuit',
    result = 'advanced-circuit',
    icon = '__base__/graphics/icons/advanced-circuit.png',
    mining_category = 'mi-advanced',
    tint = {r = 255, g = 0, b = 0},
    ore_graphic = '__base__/graphics/entity/iron-ore/iron-ore.png',
    ore_graphic_hr = '__base__/graphics/entity/iron-ore/hr-iron-ore.png',
    fluid_type = 'petroleum-gas',
    fluid_amount = 50,
    remove_recipe_unlock = {'advanced-electronics', 'advanced-circuit'},
    order = 'd'
  },
  ['mi-processing-unit'] = {
    name = 'mi-processing-unit',
    result = 'processing-unit',
    icon = '__base__/graphics/icons/processing-unit.png',
    mining_category = 'mi-advanced',
    tint = {r = 0, g = 0, b = 255},
    ore_graphic = '__base__/graphics/entity/iron-ore/iron-ore.png',
    ore_graphic_hr = '__base__/graphics/entity/iron-ore/hr-iron-ore.png',
    fluid_type = 'sulfuric-acid',
    fluid_amount = 50,
    remove_recipe_unlock = {'advanced-electronics-2', 'processing-unit'},
    order = 'e'
  },
  ['mi-battery'] = {
    name = 'mi-battery',
    result = 'battery',
    icon = '__base__/graphics/icons/battery.png',
    mining_category = 'mi-advanced',
    tint = {r = 255, g = 255, b = 255},
    ore_graphic = '__base__/graphics/entity/iron-ore/iron-ore.png',
    ore_graphic_hr = '__base__/graphics/entity/iron-ore/hr-iron-ore.png',
    fluid_type = 'sulfuric-acid',
    fluid_amount = 50,
    remove_recipe_unlock = {'battery', 'battery'},
    order = 'e'
  }
}
