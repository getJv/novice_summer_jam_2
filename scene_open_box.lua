
function scene_open_box_init()
    _update = scene_open_box_update
    _draw = scene_open_box_draw
end

function scene_open_box_update()

    if btnp(4) then  -- 5 = btn Z
        credits_msg = 0
        scene_menu_init()
    end

end

function scene_open_box_draw()
    cls()
    map(0,0)

end

