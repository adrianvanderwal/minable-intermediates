local resource_categories = {
  'basic-solid',
  'mi-basic',
  'mi-advanced'
}

if data.raw['mining-drill']['electric-mining-drill'] then
  data.raw['mining-drill']['electric-mining-drill'].resource_categories = resource_categories
end
