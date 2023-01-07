local resource_autoplace = require('resource-autoplace');
local noise = require('noise');


data:extend({
	{
        type = "autoplace-control",
        category = "resource",
        name = "liquid-pee",
        localised_name = {"", "[entity=liquid-pee] ", {"entity-name.liquid-pee"}},
        richness = true,
        order = "b-e"
	},
	{
        type = "noise-layer",
        name = "liquid-pee"
	},
	{
        type = "resource",
        name = "liquid-pee",
        icon = "__base__/graphics/icons/crude-oil-resource.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = { "placeable-neutral" },
        category = "basic-fluid",
        subgroup = "raw-resource",
        order = "a-b-a",
        infinite = false,
        map_grid = false,
        highlight = true,
        minimum = 20000,
        normal = 75000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 12,
        tree_removal_probability = 1,
        tree_removal_max_distance = 32 * 32,
        minable = {
          mining_time = 1,
          results = {
            {
                type = "fluid",
                name = "piss",
                amount_min = 20,
                amount_max = 20,
                probability = 1,
            },
          },
        },
        collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        autoplace = resource_autoplace.resource_autoplace_settings({
          name = "liquid-pee",
          order = "c",
          base_density = 2,
          base_spots_per_km2 = 0.5,
          random_probability = 1 / 50,
          random_spot_size_minimum = 1,
          random_spot_size_maximum = 1,
          additional_richness = 50000,
          has_starting_area_placement = false,
          regular_rq_factor_multiplier = 1,
        }),
        stage_counts = {0},
        stages =
        {
          sheet =
          {
            filename = "__base__/graphics/entity/crude-oil/crude-oil.png",
            priority = "extra-high",
            width = 74,
            height = 60,
            frame_count = 4,
            variation_count = 1,
            shift = util.by_pixel(0, -2),
            hr_version =
            {
              filename = "__base__/graphics/entity/crude-oil/hr-crude-oil.png",
              priority = "extra-high",
              width = 148,
              height = 120,
              frame_count = 4,
              variation_count = 1,
              shift = util.by_pixel(0, -2),
              scale = 0.5
            }
          }
        },
        map_color = {0.78, 0.2, 0.77},
        map_grid = false
      },
})