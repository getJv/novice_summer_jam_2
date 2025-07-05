box = {x=64,y=96,w=16,h=16}

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
    if player_pulling then
        next_x = next_x + 1
    elseif (can_update(3)) then
        next_x = next_x - 1
    end
    if box_limits_collision(next_x) then
        return
    end
    box.x = next_x
end

function box_limits_collision(next_x)
    if( next_x- box.w/2 < 0 or next_x + box.w/2 > 128) then
        return true
    end
    return false
end


function draw_box()
    print(player_pulling)
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