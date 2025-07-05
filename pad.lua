pad = {
    x = pad_frame.x + pad_frame_padding,
    y = pad_frame.y + pad_frame_padding,
    w = (pad_frame.x + pad_frame_padding) + 6, -- 6 is the max width
    h = 10
}
player_pulling = false
pad_down_force = 5
pad_up_force = 0

function update_pad()
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

function draw_pad()
    rectfill( pad.x,pad.y, pad.w, pad.y + pad.h ,11)
end