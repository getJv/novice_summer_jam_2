pad_enemy = {
    x = pad_frame.x + pad_frame_padding + 1,
    y = pad_frame.y + pad_frame_padding,
    w = (pad_frame.x + pad_frame_padding) + 4 + 1, -- 6 is the max width
    h = 4
}

function update_pad_enemy()

end

function draw_pad_enemy()
    rectfill( pad_enemy.x,pad_enemy.y, pad_enemy.w, pad_enemy.y + pad_enemy.h ,8)
end