if data.raw['map-gen-presets'].default then
  local map_settings = data.raw['map-gen-presets'].default
  -- Rail World
  if map_settings['rail-world'] then
    for _, resource in pairs(data.raw.resource) do
      if not map_settings['rail-world'].basic_settings.autoplace_controls[resource.name] then
        map_settings['rail-world'].basic_settings.autoplace_controls[resource.name] = {}
      end
      map_settings['rail-world'].basic_settings.autoplace_controls[resource.name].frequency = 0.33333333332999997
      map_settings['rail-world'].basic_settings.autoplace_controls[resource.name].size = 3
    end
  end
  -- Rich Resources
  if map_settings['rich-resources'] then
    for _, resource in pairs(data.raw.resource) do
      if not map_settings['rich-resources'].basic_settings.autoplace_controls[resource.name] then
        map_settings['rich-resources'].basic_settings.autoplace_controls[resource.name] = {}
      end
      map_settings['rich-resources'].basic_settings.autoplace_controls[resource.name].richness = 'very-good'
    end
  end

  data:extend({map_settings})
end
