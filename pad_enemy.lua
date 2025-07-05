pad_enemy = {
    x = pad_frame.x + pad_frame_padding + 1,
    y = pad_frame.y + pad_frame_padding,
    w = (pad_frame.x + pad_frame_padding) + 4 + 1, -- 6 is the max width
    h = 4
}

function update_pad_enemy()
    local next_y = pad_enemy.y

    local glitch_pop = flr(rnd(60)) + 1
    if (can_update(glitch_pop)) then

        local random_step = flr(rnd(pad.h)) + 1
        next_y = next_y - random_step
    end

    -- apply gravity
    if(can_update(2)) then
        next_y = next_y + 2
    end

    if(pad_frame_top_bottom_collision(next_y)) then
        return
    end

    pad_enemy.y = next_y
end

function draw_pad_enemy()
    rectfill( pad_enemy.x,pad_enemy.y, pad_enemy.w, pad_enemy.y + pad_enemy.h ,8)
end