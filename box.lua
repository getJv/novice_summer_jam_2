box = {x=64,y=96,w=16,h=16}

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