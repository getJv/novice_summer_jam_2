

box = {x=64,y=96,w=16,h=16}
move_interval = 5
move_timer = 0


function scene_main_init()
    _update = scene_main_update
    _draw = scene_main_draw
end

function scene_main_update()
    move_timer += 1

    if move_timer >= move_interval then
    box.x -= 1
    move_timer = 0
    end

end

function draw_rules()
    rect(0, 0, 127, 127, 11)
    line(64, 0, 64, 127, 11)
    line(0, 64, 127, 64, 11)
end

function draw_box()
    half_w = box.w/2
    half_y = box.h/2

    rectfill(
            box.x - half_w,
            box.y - half_y,
            box.x + half_w - 1,
            box.y + half_y - 1,
            11
    )
end

function scene_main_draw()
    cls()
    draw_rules()
    draw_box()

end
