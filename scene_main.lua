function scene_main_init()
    _update = scene_main_update
    _draw = scene_main_draw
end

function scene_main_update()

    update_pad_enemy()
    update_pad()
    update_box()
    update_timer() -- should be last called update ever
end

function scene_main_draw()
    cls()
    debug_draw_rules()
    draw_box()
    draw_pad_frame()
    draw_pad()
    draw_pad_enemy()
 end
