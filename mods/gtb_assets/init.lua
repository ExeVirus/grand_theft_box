local gtb_assets = {}

gtb_assets.reg = function(name)
    minetest.register_node("gtb_assets:".. name, {
        description = name,
        sunlight_propagates = true,
        paramtype = "light",
        paramtype2 = "facedir",
        tiles = {"gtb_"..name..".png"},
        groups = { oddly_breakable_by_hand=1 },
    })
end

gtb_assets.reg("building_brick1")
gtb_assets.reg("building_brick2")
gtb_assets.reg("building_glass1")
gtb_assets.reg("building_glass2")
gtb_assets.reg("building_steel1")
gtb_assets.reg("building_steel2")
gtb_assets.reg("building_wood1")
gtb_assets.reg("building_wood2")
gtb_assets.reg("road")
gtb_assets.reg("sidewalk")
gtb_assets.reg("white_box")
gtb_assets.reg("white_shoulder_corner")
gtb_assets.reg("white_shoulder_corner2")
gtb_assets.reg("white_shoulder")
gtb_assets.reg("yellow_center_corner")
gtb_assets.reg("yellow_center")