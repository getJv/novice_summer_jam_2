pad = {
    x = pad_frame.x + pad_frame_padding, -- 2 to avoid initial collision
    y = pad_frame.y + pad_frame_padding + 2, -- 2 to avoid initial collision
    w = 6,
    h = 15
}
player_pulling = false

function update_pad()
    local next_y = pad.y +1

    if (btn(4)) then
        next_y = pad.y - 1
    end

    if(pad_frame_top_bottom_collision(next_y )) then
        return
    end

    pad.y = next_y
end

function draw_pad()

    rectfill( pad.x,pad.y, pad.x +pad.w, pad.y + pad.h ,11)

end