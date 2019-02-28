function mi.disable_recipe(recipe)
  -- check for both normal and expensive recipes
  if data.raw.recipe[recipe] then
    recipe = data.raw.recipe[recipe]
    if recipe.enabled ~= nil then
      recipe.enabled = false
      recipe.hidden = true
    end
    if recipe.normal ~= nil then
      recipe.normal.enabled = false
      recipe.normal.hidden = true
    end
    if recipe.expensive ~= nil then
      recipe.expensive.enabled = false
      recipe.expensive.hidden = true
    end
  end
end

function mi.remove_recipe_unlock(technology, recipe)
  if data.raw.technology[technology] and data.raw.technology[technology].effects then
    for i, effect in pairs(data.raw.technology[technology].effects) do
      if effect.type == "unlock-recipe" and effect.recipe == recipe then
        table.remove(data.raw.technology[technology].effects, i)
      end
    end
  else
    if not data.raw.technology[technology] then
      log("Technology " .. technology .. " does not exist.")
    end
  end
end
