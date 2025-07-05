pad_enemy = {
    x = pad_frame.x + pad_frame_padding + 1,
    y = pad_frame.y + pad_frame_padding,
    w = 4,
    h = 4
}

glitch_step = 0

function update_pad_enemy()
    local next_y = pad_enemy.y

    local glitch_pop = flr(rnd(20)) + 1
    if (can_update(glitch_pop) and glitch_step == 0) then
        local random_percent = flr(rnd(100)) + 1
        local random_step = flr(rnd(pad_frame.h/random_percent)) + 1
        glitch_step =  random_step
    end

    if (glitch_step > 0 and can_update(2)) then
            glitch_step = glitch_step -1
        next_y = next_y - 3
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
    spr(3, pad_enemy.x - pad_enemy.w/2, pad_enemy.y - pad_enemy.h/2, 1, 1)

end