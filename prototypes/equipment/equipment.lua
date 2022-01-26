local recipe = table.deepcopy(data.raw["recipe"]["heavy-armor"])
recipe.enabled = true
recipe.name = "stuff"
recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}}
recipe.result = "stuff"

--data:extend{stuff,recipe}
data:extend({
    {
        type = "item",
        name = "stuff",
        icons = {
            {
                icon = "__catastrophe__/graphics/icons/stuff.png",
                icon_size = 500, icon_mipmaps = 1,
                --tint = {r=1,g=0,b=0,a=0.3}
            }
        },
        placed_as_equipment_result = "stuff",
        order = "e[exoskeleton]-a2[stuff]",
        stack_size = 20,
        default_request_amount = 1
    },
    {
        type = "movement-bonus-equipment",
        name = "stuff",
        categories = { "armor" },
        energy_consumption = "1kW",
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
        },
        movement_bonus = 2.0,
        shape = {
            width = 2,
            height = 2,
            type = "full",
        },
        sprite = {
            filename = "__catastrophe__/graphics/icons/things.png",
            width = 500,
            height = 500,
            priority = "medium"
        }
    },
    recipe
})