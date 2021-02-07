if data.raw['resource-category'] then
  data:extend(
    {
      {
        name = 'mi-advanced',
        type = 'resource-category'
      },
      {
        name = 'mi-basic',
        type = 'resource-category'
      }
    }
  )
end
