
dofile(minetest.get_modpath("gtb_runtime").."/dependencies.lua")

minetest.register_on_joinplayer(function(player)

    -- Turn off builtin crap
    player:hud_set_flags(
        {
            healthbar = false,
            crosshair = false,
            wielditem = false,
            breathbar = false,
            minimap = false,
            minimap_radar = false,
        }
    )
    player:set_physics_override({
        speed = 1.0,
        jump = 0.0,
        gravity = 1.0,
        sneak = false,
    })

    --set to always sunny in CalifornIA
    player:override_day_night_ratio(1)
    player:set_stars({visible=false})
    player:set_moon({visible=false})
    player:set_sun({visible=false})
    
    play_music("theme")
end)

-- On Load, load up some fake bicycles