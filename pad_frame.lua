pad_margin = 2
pad_frame = {x = 74 ,y = 12,w = 10,h=70}
pad = {
    x = pad_frame.x + pad_margin,
    y = pad_frame.y + pad_margin,
    w = (pad_frame.x + pad_margin) + 6, -- 6 is the max width
    h = 10
}
player_pulling = false
pad_down_force = 5
pad_up_force = 0
function update_pad_frame()

    local next_y = pad.y

    -- player action
    if (btn(4)) then
        pad_up_force = pad_down_force
        player_pulling = pad_up_force > 0
    else
        pad_up_force = 0
        player_pulling = false
    end

    -- apply gravity
    if(can_update(4)) then
        next_y = next_y + pad_down_force
    end

    if(pad_frame_top_bottom_collision(next_y)) then
        return
    end

    pad.y = next_y - pad_up_force
end

function pad_frame_top_bottom_collision(next_y)

    local pad_bottom_y = next_y + pad.h
    local pad_frame_bottom_y = pad_frame.y + pad_frame.h
    local hit_pad_frame_bottom = pad_bottom_y > pad_frame_bottom_y

    local pad_top_y = next_y - pad_margin *2
    local hit_pad_frame_top = pad_top_y < pad_frame.y

    if( hit_pad_frame_bottom or hit_pad_frame_top ) then
        return true
    end
    return false

end

function draw_pad_frame()
    -- pad frame
    rect( pad_frame.x,pad_frame.y,pad_frame.x + pad_frame.w, pad_frame.y + pad_frame.h,11)
    -- pad
    rectfill( pad.x,pad.y, pad.w, pad.y + pad.h ,11)
end