--items.lua
local noise = require('noise');
local plank = {
    name = "plank",
    type = "item",
    icon = "__piss-mod__/graphics/icons/plank.png",
    stack_size = 50,
    icon_size = 16
}

local piss = {   
    type = "fluid",
    name = "piss",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "0.2KJ",
    base_color = {r=1, g=1, b=0},
    flow_color = {r=1.7, g=1, b=0},
    icons = {
        {   
            icon = "__base__/graphics/icons/fluid/light-oil.png",
            tint = {r=1,g=1,b=0, a=0.3}
        }
    },
    icon_size = 64,
    icon_mipmaps = 4,
    order = "a[fluid]-a[water]"
} 




data:extend({
    plank,
    piss
})



