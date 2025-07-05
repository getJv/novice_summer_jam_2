box = {x=64,y=93,w=16,h=16}

function paddles_collision()

    local top_played_pad = pad.y
    local top_enemy_pad = pad_enemy.y
    local is_top_enemy_bellow_player_top = top_enemy_pad >top_played_pad

    local bottom_played_pad = pad.y + pad.h/2
    local bottom_enemy_pad = pad_enemy.y + pad_enemy.h/2

    local is_bottom_enemy_over_player_bottom = bottom_enemy_pad < bottom_played_pad

    player_pulling =  is_top_enemy_bellow_player_top
            and is_bottom_enemy_over_player_bottom


end


function update_box()
    paddles_collision()
    local next_x = box.x
    if player_pulling  then
        next_x = next_x + 1
    elseif (can_update(3)) then
        next_x = next_x - 1
    end
    box_limits_collision(next_x)
    box.x = next_x
end

function box_limits_collision(next_x)
    if( next_x- box.w/2 < 0) then
        --play sad music sfx
        credits_msg = 1 -- lose condition
        scene_credits_init()
    end

    if (next_x + box.w/2 > 128) then
        scene_open_box_init()
    end

end


function draw_ropes()
    -- right side
    line(
            box.x + box.w/2 - 2,
            box.y - 1 ,
            127,
            box.y -1 ,
            9
    )
    line(
            box.x + box.w/2 - 2,
            box.y ,
            127,
            box.y  ,
            4
    )
    -- left side
    line(
            box.x - box.w/2 - 1,
            box.y - 1 ,
            0,
            box.y -1 ,
            9
    )
    line(
            box.x - box.w/2 - 1,
            box.y ,
            0,
            box.y  ,
            4
    )
end

function draw_box()
    half_w = box.w/2
    half_y = box.h/2
    spr(1, box.x - half_w, box.y - half_y, 2, 2)
    draw_ropes()

end