local mp = minetest.get_modpath("gtb_runtime")
dofile(mp.."/dependencies.lua")

minetest.register_on_mods_loaded(function()
    local world_dir = minetest.get_worldpath()
    local list = minetest.get_dir_list(world_dir, false)
    for i,v in pairs(list) do
        if v == "map.sqlite" then
            return
        end
    end

    local map_dir = mp .. "/map"
    local infile = io.open(map_dir.."/map.sqlite", "rb")
    local str = infile:read("*a")
    infile:close()
    minetest.safe_file_write(world_dir.."/map.sqlite", str)
end)

minetest.register_on_joinplayer(function(player)

    -- Turn off builtin crap
    player:hud_set_flags(
        {
            hotbar = false,
            healthbar = false,
            crosshair = false,
            wielditem = false,
            breathbar = false,
            minimap = false,
            minimap_radar = false,
        }
    )
    player:set_physics_override({
        speed = 1.2,
        jump = 0.0,
        gravity = 1.0,
        sneak = false,
    })

    --set to always sunny in CalifornIA
    player:override_day_night_ratio(1)
    player:set_stars({visible=false})
    player:set_moon({visible=false})
    player:set_sun({visible=false})

    if player:get_pos().x <= 1 then
        player:set_pos({x=11,y=1,z=22})
    end
    
    play_music("theme")
end)

-- On Load, load up some fake bicycles