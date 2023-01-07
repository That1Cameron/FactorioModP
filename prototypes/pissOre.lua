local resource_autoplace = require('resource-autoplace');
local noise = require('noise');


data:extend({
	{
        type = "autoplace-control",
        category = "resource",
        name = "piss-ore",
        localised_name = {"", "[entity=piss-ore] ", {"entity-name.piss-ore"}},
        icon_size = 64,
        richness = true,
        order = "b-e"
	},
	{
        type = "noise-layer",
        name = "piss-ore"
	},
	{
        type = "resource",
        icon_size = 64, icon_mipmaps = 4,
        name = "piss-ore",
        icon = "__base__/graphics/icons/copper-ore.png",
        flags = {"placeable-neutral"},
        order="a-b-a",
        map_color = {r=1.00, g=0.80, b=0.50},
        minable =
        {
            hardness = 1,
            mining_particle = "copper-ore-particle",
            mining_time = 1,
            result = "piss-ore"
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

        autoplace = resource_autoplace.resource_autoplace_settings{
            name = "piss-ore",
            order = "b-z",
            base_density = 6,
            base_spots_per_km2 = 1,
            has_starting_area_placement = true,
            regular_rq_factor_multiplier = 1.2,
            starting_rq_factor_multiplier = 1.7,
        },

        stage_counts = {64},
        stages =
        {
            sheet =
            {
                filename = "__base__/graphics/icons/copper-ore.png",
                priority = "extra-high",
                size = 64,
                frame_count = 1,
                variation_count = 1
            }
        },
    },
    {
        type = "item",
        name = "piss-ore",
        icons = {
            {   
                icon = "__base__/graphics/icons/copper-ore.png",
                tint = {r=1,g=1,b=0, a=0.3}
            }
        },
        icon_size = 64,
        icon_mipmaps = 4,
        pictures =
        {
          { size = 64, filename = "__base__/graphics/icons/copper-ore.png",   scale = 0.25, mipmap_count = 4 },
          { size = 64, filename = "__base__/graphics/icons/copper-ore-1.png", scale = 0.25, mipmap_count = 4 },
          { size = 64, filename = "__base__/graphics/icons/copper-ore-2.png", scale = 0.25, mipmap_count = 4 },
          { size = 64, filename = "__base__/graphics/icons/copper-ore-3.png", scale = 0.25, mipmap_count = 4 }
        },
        subgroup = "raw-resource",
        order = "t-c-a",
        stack_size = 50
    },
})