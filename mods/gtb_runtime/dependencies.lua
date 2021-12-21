-- Code in this file is provided by ExeVirus's LittleLady MIT Licensed 2021 ExeVirus

-------------------
-- Music code
-------------------
local music_handle = nil
function play_music(filename)
    --Close the previous music
    if music_handle ~= nil then
        minetest.sound_stop(music_handle) --fast fade
    end
    -- Play the new music
    music_handle = minetest.sound_play(filename, {loop=true}) --loop until close

    --if still nil, play the default
    if music_handle == nil then
        music_handle = minetest.sound_play("default", {loop=true})
    end
end