data:extend({
    {
        type = "bool-setting",
        name = "cs-explode-on-place",
        setting_type = "runtime-global",
        default_value = false
    },
    {
        type = "int-setting",
        name = "cs-kill-enemies-in-range",
        setting_type = "runtime-per-user",
        minimum_value = -1,
        maximum_value = 100,
        default_value = -1
    }
})