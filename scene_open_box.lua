box_open = false
function scene_open_box_init()
    _update = scene_open_box_update
    _draw = scene_open_box_draw
end

function scene_open_box_update()

    if btnp(4) then  -- 5 = btn Z
        if(not box_open) then
            box_open = true
        end
    end

    if btnp(5) then  -- 5 = btn Z
        if( box_open) then
            credits_msg = 0
            box_open = false
            scene_credits_init()
        end
    end

end

function scene_open_box_draw()
    cls()
    map(0,0)

    if(not box_open) then
        draw_text("the box is yours!",-2,4)
        draw_text("press 🅾️ to open",-1,6)
        spr(128,48,box.y -16,4,4)
    end
    if (box_open) then
        draw_text("there is a cat!",-2,4)
        draw_text("press ❎ to continue",-1,6)
        spr(132,48,box.y -16,4,4)
    end



end

