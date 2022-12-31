--recipe.lua
local plank = {
    name = "plank",
    type = "recipe",
    category = "advanced-crafting", -- going to test in assembler first!
    ingredients = {{name = "wood", amount = 2}},
    result = "plank",
    energy_required = 1,
    localised_description = "A plank made from the native flora.",
    subgroup = "pm-resources"
}

data:extend({
    plank,
    {
        type = "recipe-category",
        name = "saw-mill"
    },
    {
        type = "item-subgroup",
        name = "pm-resources",
        group = "intermediate-products",
        order = "a[storage]"
    }
})