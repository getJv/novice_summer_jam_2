function scene_main_init()
    music(1)
    box = {x=64,y=93,w=16,h=16}
    _update = scene_main_update
    _draw = scene_main_draw
end

function scene_main_update()
    if (btn(4)) then
        scene_menu_init() -- back to menu
    end

    update_pad_enemy()
    update_pad()
    update_box()
    update_mills()
    update_timer() -- should be last called update ever
end

function scene_main_draw()
    cls()
    map(0,0)
    draw_left_mill_mouth() -- mouth should be behind the box
    draw_box()
    draw_pad_frame()
    draw_pad()
    draw_pad_enemy()
    draw_mill_boxes()
    draw_mills()


 end
