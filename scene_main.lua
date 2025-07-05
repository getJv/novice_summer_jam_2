function scene_main_init()
    _update = scene_main_update
    _draw = scene_main_draw
end

function scene_main_update()
    update_timer()
end


function scene_main_draw()
    cls()
    debug_draw_rules()
    draw_box()

end
