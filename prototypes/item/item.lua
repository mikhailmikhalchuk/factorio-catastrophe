--item.lua

local stuff = table.deepcopy(data.raw["armor"]["heavy-armor"]) -- copy the table that defines the heavy armor item into the stuff variable

stuff.name = "jarvis"
stuff.icons = {
    {
        icon = "__catastrophe__/graphics/icons/stuff.png",
        icon_size = 500, icon_mipmaps = 1,
        --tint = {r=1,g=0,b=0,a=0.3}
    },
}


stuff.resistances = {
    {
        type = "physical",
        decrease = 6,
        percent = 10
    },
    {
        type = "explosion",
        decrease = 10,
        percent = 30
    },
    {
        type = "acid",
        decrease = 5,
        percent = 30
    },
    {
        type = "fire",
        decrease = 0,
        percent = 100
    }
}

local recipe = table.deepcopy(data.raw["recipe"]["heavy-armor"])
recipe.enabled = true
recipe.name = "jarvis"
recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}}
recipe.result = "jarvis"

data:extend({stuff,recipe})