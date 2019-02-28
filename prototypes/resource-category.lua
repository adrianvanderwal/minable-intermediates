if data.raw["resource-category"] then
    if not data.raw["resource-category"]["mi-advanced"] then
        data.raw["resource-category"]["mi-advanced"] = {
            name = "mi-advanced",
            type = "resource-category"
        }
    end
    if not data.raw["resource-category"]["mi-basic"] then
        data.raw["resource-category"]["mi-basic"] = {
            name = "mi-basic",
            type = "resource-category"
        }
    end
    log(serpent.block(data.raw["resource-category"]))
end
