function scene_main_init()
    _update = scene_main_update
    _draw = scene_main_draw
end

function scene_main_update()

    update_pad_frame()
    update_box()
    update_timer() -- should be last called update ever
end

function scene_main_draw()
    cls()
    debug_draw_rules()
    draw_box()
    draw_pad_frame()
 end
